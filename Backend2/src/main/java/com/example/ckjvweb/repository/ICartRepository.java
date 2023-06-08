package com.example.ckjvweb.repository;

import com.example.ckjvweb.entity.cart.Cart;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDate;
import java.util.List;

@Repository
@Transactional
public interface ICartRepository extends JpaRepository<Cart, Integer> {

//    @Query(value = "select cart.cart_id, cart_quantity, cart_total_money, cart.book_id from cart join\n" +
//            "book on cart.book_id = book.book_id", nativeQuery = true)
//    List<Cart> findCartList();

    @Modifying
    @Query(value = "INSERT INTO cart (book_id, cart_quantity, cart_total_money) VALUES (?,?,?)", nativeQuery = true)
    void createCart(Integer bookId, Integer cartQuantity, Double cartTotalMoney);

    //    @Modifying
//    @Query(value = "update cart set cart.cart_status = 1 where cart_id = ?1", nativeQuery = true)
//    void paymentCart(Integer cartId);
//    @Modifying
//    @Query(value = "delete cart", nativeQuery = true)
//    void paymentCart(Integer cartId);

    @Modifying
    @Query(value = "delete from cart", nativeQuery = true)
    void paymentCart();

    @Modifying
    @Query(value = "update cart set cart_quantity = ?1, cart_total_money = ?2 where cart_id = ?3", nativeQuery = true)
    void updateCart(Integer quantity, Double totalMoney, Integer cartId);
}
