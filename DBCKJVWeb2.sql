create database if not exists ckjavaweb2;
use ckjavaweb2;
-- drop database ckjavaweb2;

create table if not exists category(
  category_id int primary key auto_increment,
  category_name varchar(255)
);

INSERT INTO category (category_name) VALUES 
('Tất cả sách'),
('Sách văn học Việt Nam'),
('Sách văn học Nước Ngoài'),
('Sách thiếu Nhi'),
-- ('Thời sự - Chính trị'),
-- ('Khoa học tự nhiên - Nhân văn'),
('Sách tham khảo	');


create table if not exists book(
  book_id int primary key auto_increment,
  -- book_code varchar(255) unique,
  book_name varchar(255),
  book_image text,
  book_content text,
  book_price double,
  book_translator varchar(255),
  book_total_page int,
  book_size varchar(255),
  book_publish_date date,
  book_quantity int not null,	
  book_publisher varchar(255),
  book_category_id int,
  book_author varchar(255) not null,
  book_promotion int default null,
  book_flag bit(1) default 0,
  -- foreign key(book_promotion_id) references promotion(promotion_id),
  foreign key(book_category_id) references category(category_id)
  
    -- book_promotion_id bigint default 1,
--   created_at timestamp,
--   updated_at timestamp,
--   book_status bit(1) default 0,
 --  book_view bigint, 
--   book_like bigint,
  -- book_author_id bigint,bookcart
  -- foreign key(book_author_id) references author(author_id)
--   foreign key(book_publisher_id) references publisher(publisher_id) on update cascade
);

INSERT INTO book ( book_name, book_image, book_price, book_translator, book_total_page, book_size, book_publish_date, book_quantity, book_publisher, book_category_id, book_author, book_promotion, book_content) VALUES
('Đắc Nhân Tâm','https://firebasestorage.googleapis.com/v0/b/sprint2-99971.appspot.com/o/08-11-2022070105PMsl1.png?alt=media&token=b025888e-48f4-436b-ac4e-6367716a2ebc', 76000,'Nguyễn Hiến Lê', 320, '14.5 x 20.5 cm', '2020-09-15', 10,'Nhà Xuất Bản Tổng hợp TP.HCM', 3 ,'Dale Carnegie' , 0, 
'Hiện nay có một sự hiểu nhầm đã xảy ra. Tuy Đắc Nhân Tâm là tựa sách hầu hết mọi người đều biết đến, vì những danh tiếng và mức độ phổ biến, nhưng một số người lại “ngại” đọc. Lý do vì họ tưởng đây là cuốn sách “dạy làm người” nên có tâm lý e ngại. Có lẽ là do khi giới thiệu về cuốn sách, người ta luôn gắn với miêu tả đây là “nghệ thuật đối nhân xử thế”, “nghệ thuật thu phục lòng người”… Những cụm từ này đã không còn hợp với hiện nay nữa, gây cảm giác xa lạ và không thực tế.
Nhưng đâu phải thế, Đắc Nhân Tâm là cuốn sách không hề lỗi thời! Những vấn đề được chỉ ra trong đó đều là căn bản ứng xử giữa người với người. Nếu diễn giải theo từ ngữ bây giờ, có thể gọi đây là “giáo trình” giúp hiểu mình – hiểu người để thành công trong giao tiếp. Có ai sống mà không cần giao tiếp? Có bao nhiêu người ngày ngày mệt mỏi, khổ sở vì gặp phải các vấn đề trong giao tiếp? Vì thế, Đắc Nhân Tâm chính là cuốn sách dành cho mọi người. Con cái nên đọc – cha mẹ càng nên đọc, nhân viên nên đọc – sếp càng nên đọc, người quen nhau nên đọc – người lạ nhau càng nên đọc…. Và đó mới chính thật là lý do Đắc Nhân Tâm luôn lọt vào Top sách bán chạy nhất thế giới, dù đã ra đời cách đây gần 80 năm.
'),
('Nhà Giả Kim','https://firebasestorage.googleapis.com/v0/b/sprint2-99971.appspot.com/o/08-11-2022070343PMsl2.png?alt=media&token=8b84439d-c967-4a0a-984e-d51ab9c935ef', 69000,'Lê Chu Cầu', 228, '13 x 20.5 cm',  '2020-10-05', 20, 'Nhà Xuất Bản Văn Học',3 ,'Paulo Coelho' , 10, 
' Nhà Giả Kim. 
Tất cả những trải nghiệm trong chuyến phiêu du theo đuổi vận mệnh của mình đã giúp Santiago thấu hiểu được ý nghĩa sâu xa nhất của hạnh phúc, hòa hợp với vũ trụ và con người.
Tiểu thuyết Nhà giả kim của Paulo Coelho như một câu chuyện cổ tích giản dị, nhân ái, giàu chất thơ, thấm đẫm những minh triết huyền bí của phương Đông. Trong lần xuất bản đầu tiên tại Brazil vào năm 1988, sách chỉ bán được 900 bản. Nhưng, với số phận đặc biệt của cuốn sách dành cho toàn nhân loại, vượt ra ngoài biên giới quốc gia, Nhà giả kim đã làm rung động hàng triệu tâm hồn, trở thành một trong những cuốn sách bán chạy nhất mọi thời đại, và có thể làm thay đổi cuộc đời người đọc.
Nhưng nhà luyện kim đan không quan tâm mấy đến những điều ấy. Ông đã từng thấy nhiều người đến rồi đi, trong khi ốc đảo và sa mạc vẫn là ốc đảo và sa mạc. Ông đã thấy vua chúa và kẻ ăn xin đi qua biển cát này, cái biển cát thường xuyên thay hình đổi dạng vì gió thổi nhưng vẫn mãi mãi là biển cát mà ông đã biết từ thuở nhỏ. Tuy vậy, tự đáy lòng mình, ông không thể không cảm thấy vui trước hạnh phúc của mỗi người lữ khách, sau bao ngày chỉ có cát vàng với trời xanh nay được thấy chà là xanh tươi hiện ra trước mắt. Có thể Thượng đế tạo ra sa mạc chỉ để cho con người biết quý trọng cây chà là, ông nghĩ.'),

('Hoàng Tử Bé','https://firebasestorage.googleapis.com/v0/b/sprint2-99971.appspot.com/o/08-11-2022070401PMsl3.png?alt=media&token=0094f7b6-d61f-46d7-8576-ed835dda3a10', 75000,'Trác Phong', 102, '15 x 23 cm', '2019-05-15', 30, 'Nhà Xuất Bản Hội Nhà Văn',  4, 'Antoine de Saint-Exupéry', 20, 
'Hoàng tử bé được viết ở New York trong những ngày tác giả sống lưu vong và được xuất bản lần đầu tiên tại New York vào năm 1943, rồi đến năm 1946 mới được xuất bản tại Pháp. Không nghi ngờ gì, đây là tác phẩm nổi tiếng nhất, được đọc nhiều nhất và cũng được yêu mến nhất của Saint-Exupéry. Cuốn sách được bình chọn là tác phẩm hay nhất thế kỉ 20 ở Pháp, đồng thời cũng là cuốn sách Pháp được dịch và được đọc nhiều nhất trên thế giới. Với 250 ngôn ngữ dịch khác nhau kể cả phương ngữ cùng hơn 200 triệu bản in trên toàn thế giới, Hoàng tử bé được coi là một trong những tác phẩm bán chạy nhất của nhân loại. 
Ở Việt Nam, Hoàng tử bé được dịch và xuất bản khá sớm. Từ năm 1966 đã có đồng thời hai bản dịch: Hoàng tử bé của Bùi Giáng do An Tiêm xuất bản và Cậu hoàng con của Trần Thiện Đạo do Khai Trí xuất bản. Từ đó đến nay đã có thêm nhiều bản dịch Hoàng tử bé mới của các dịch giả khác nhau. Bản dịch Hoàng tử bé lần này, xuất bản nhân dịp kỷ niệm 70 năm Hoàng tử bé ra đời, cũng là ấn bản đầu tiên được Gallimard chính thức chuyển nhượng bản quyền tại Việt Nam, hy vọng sẽ góp phần làm phong phú thêm việc dịch và tiếp nhận tác phẩm quan trọng này với các thế hệ độc giả. 
Tôi cứ sống cô độc như vậy, chẳng có một ai để chuyện trò thật sự, cho tới một lần gặp nạn ở sa mạc Sahara cách đây sáu năm. Có thứ gì đó bị vỡ trong động cơ máy bay. Và vì ở bên cạnh chẳng có thợ máy cũng như hành khách nào nên một mình tôi sẽ phải cố mà sửa cho bằng được vụ hỏng hóc nan giải này. Với tôi đó thật là một việc sống còn. Tôi chỉ có vừa đủ nước để uống trong tám ngày.'),

('Ông Già Và Biển Cả','http://product.hstatic.net/200000017360/product/bia-1_ong-gia-va-bien-ca_615e3ecae186401ea06865301bce1a21_grande.png', 42000,'Lê Huy Bắc', 148, '12.5 x 20.5 cm', '2020-05-10',  5, 'Văn học', 3, 'Emest Hemingway', 50, 
'Hoàng tử bé được viết ở New York trong những ngày tác giả sống lưu vong và được xuất bản lần đầu tiên tại New York vào năm 1943, rồi đến năm 1946 mới được xuất bản tại Pháp. Không nghi ngờ gì, đây là tác phẩm nổi tiếng nhất, được đọc nhiều nhất và cũng được yêu mến nhất của Saint-Exupéry. Cuốn sách được bình chọn là tác phẩm hay nhất thế kỉ 20 ở Pháp, đồng thời cũng là cuốn sách Pháp được dịch và được đọc nhiều nhất trên thế giới. Với 250 ngôn ngữ dịch khác nhau kể cả phương ngữ cùng hơn 200 triệu bản in trên toàn thế giới, Hoàng tử bé được coi là một trong những tác phẩm bán chạy nhất của nhân loại. 
Ở Việt Nam, Hoàng tử bé được dịch và xuất bản khá sớm. Từ năm 1966 đã có đồng thời hai bản dịch: Hoàng tử bé của Bùi Giáng do An Tiêm xuất bản và Cậu hoàng con của Trần Thiện Đạo do Khai Trí xuất bản. Từ đó đến nay đã có thêm nhiều bản dịch Hoàng tử bé mới của các dịch giả khác nhau. Bản dịch Hoàng tử bé lần này, xuất bản nhân dịp kỷ niệm 70 năm Hoàng tử bé ra đời, cũng là ấn bản đầu tiên được Gallimard chính thức chuyển nhượng bản quyền tại Việt Nam, hy vọng sẽ góp phần làm phong phú thêm việc dịch và tiếp nhận tác phẩm quan trọng này với các thế hệ độc giả. 
Tôi cứ sống cô độc như vậy, chẳng có một ai để chuyện trò thật sự, cho tới một lần gặp nạn ở sa mạc Sahara cách đây sáu năm. Có thứ gì đó bị vỡ trong động cơ máy bay. Và vì ở bên cạnh chẳng có thợ máy cũng như hành khách nào nên một mình tôi sẽ phải cố mà sửa cho bằng được vụ hỏng hóc nan giải này. Với tôi đó thật là một việc sống còn. Tôi chỉ có vừa đủ nước để uống trong tám ngày.'),

('Những Người Khốn Khổ','https://1.bp.blogspot.com/-EF_tW1-EOKg/YPvxv-Y_0LI/AAAAAAAAChw/xcJQmAb0-04_9LtxLmZUg6WixLXP9KhOgCLcBGAsYHQ/s2048/20210724_173358.jpg', 39000,'Huy Hoàng', 2054, '14 x 21cm', '2017-05-10', 15, 'Văn học',  3, 'Victor Hugo', 0, 
'Những người khốn khổ là bài hát ca ngợi tình yêu và tự do của Giăng Văngiăng - một con người tái sinh trong đau khổ và tuyệt vọng.'),

('Tắt đèn','https://filethcs.hcm.edu.vn/UploadImages/thcslethanhcong/2023_2/tat-den-ngo-tat-to_2322023931.jpg?w=400', 50000,'', 2053, '14 x 21cm', '2022-05-10', 5, 'MinhLongbook',  2, 'Ngô Tất Tố', 25, 
' Tắt đèn là một cuốn xã hội "tiểu thuyết tả cảnh đau khổ của dân quê, của một người đàn bà nhà quê An Nam suốt đời sống trong sự nghèo đói và sự ức hiếp của bọn cường hào và người có thế lực mà lúc nào cũng vẫn hết lòng vì chồng, vì con”.
(Ngô Tất Tố)
“Theo tôi tiên tri, thì cuốn Tắt đèn còn phải sống lâu, thọ hơn cả một số văn gia đương kim hôm nay. Chị Dậu đích là tác giả Ngô Tất Tố hoá thân ra mà thôi. Chị Dậu là cái đốm sáng đặc biệt của Tắt đèn. Nếu ví toàn truyện Tắt đèn là một khóm cây, thì chị Dậu là cả gốc cả ngọn cả cành và chính chị Dậu đã nổi gió lên mà rung cho cả cái cây dạ hương Tắt đèn đó lên”.
( Nguyễn Tuân - 1962 )
 “Chị Dậu là nhân vật điển hình được người đọc yêu mến. Và người yêu mến chị hơn cả là Ngô Tất Tố. Giữa biết bao tệ nạn và cảnh đời bất công ngang trái ở nông thôn Việt Nam cũ, Ngô Tất Tố đã hết lòng bảo vệ một người phụ nữ là chị Dậu. Nhiều lần chị Dậu bị đẩy vào tình thế hiểm nghèo, rất có thể bị làm nhục nhưng Ngô Tất Tố đã giữ cho chị Dậu được bảo đảm toàn vẹn, giữ trọn phẩm giá, không phải đau đớn, dằn vặt”.'),

('Truyện Kiều','https://www.nxbtre.com.vn/Images/Book/nxbtre_full_18492020_034932.jpg', 140000,'', 292, '14 x 21cm', '2018-05-10',7, 'Trí thức Việt Book',  2, 'Nguyễn Du', 0, 
'Sách Văn Học - Truyện kiều - khổ nhỏ
Nguyễn Du có nhiều tác phẩm cả chữ Hán lẫn chữ Nôm, nhưng tiêu biểu cho thiên tài Nguyễn Du là Đoạn trường tán thanh và Văn tế thập loại chúng sinh, đều viết bằng quốc âm. Đoạn trường tán thanh được gọi phổ biến là Truyện Kiều, là một truyện thơ lục bát. Cả hai tác phẩm đều xuất sắc, tràn trề tinhthần nhân đạo chủ nghĩa, phản ánh sinh động xã hội bất công, cuộc đời dâu bể. Tác phẩm cũng cho thấy một trình độ nghệ thuật bậc thầy.
Truyện Kiều đóng một vai trò quan trọng trong sinh hoạt văn hóa Việt Nam. Nhiều nhân vật trong Truyện Kiều trở thành điển hinh cho những mẫu người trong xã hội cũ, mang những tính các tiêu biểu Sở Khanh, Hoạn Thư, Từ Hải, và đều đi vào thành ngữ Việt Nam. Khả năng khái quát của nhiều cảnh tình, ngôn ngữ, trong tác phẩm khiến chi quần chúng tìm đến Truyện Kiều, như tìm một điều dự báo.
Năm 1965, Nguyễn Du chính thức được Nhà nước làm lễ kỷ niệm, Hội đồng Hòa bình thế giới ghi tên ông trong danh sách những nhà văn hóa thế giới'),

('Số Đỏ','https://salt.tikicdn.com/cache/w1200/media/catalog/product/i/m/img413_2.jpg', 75000,'', 280, '14,5 x 20,5 cm', '2017-05-10', 30,'NXB Văn học',  2, 'Vũ Trọng Phụng', 5, 
'Nhân vật chính của Số đỏ là Xuân - biệt danh là Xuân Tóc đỏ, từ chỗ là một kẻ bị coi là hạ lưu, bỗng nhảy lên tầng lớp danh giá của xã hội nhờ trào lưu Âu hóa của giới tiểu tư sản Hà Nội khi đó.
Số đỏ được xây dựng theo thể chương hồi, mỗi chương vừa như một sketch (kịch ngắn) độc lập, lại vừa như một giai đoạn phiêu lưu. Những câu chuyện trong đó ẩn chứa lối sống đầy tha hóa của bộ phận tư sản Hà Nội thời bấy giờ. Ông chê bai những thói xấu ấy khiến cho nhiều giá trị cuộc sống bị đảo lộn và mất đi giá trị ban đầu của nó.
Số đỏ ban đầu đã được viết ra để nhại những chương trình Âu hoá xã hội của Tự Lực văn đoàn, thành phần văn học độc chiếm văn đàn trên nhiều lãnh vực văn hóa xã hội, và cũng là đối thủ quyết liệt nhất của Vũ Trọng Phụng trên "mặt trận tư tưởng". Những mẫu hình họ Vũ đưa ra để chế giễu, hầu hết nằm trong chương trình Âu hoá, cải cách xã hội của Tự Lực văn đoàn với các khẩu hiệu: Âu hoá, theo mới, hoàn toàn theo mới không chút do dự, làm việc xã hội, theo chủ nghiã bình dân, vận động thể thao, luyện tập thân thể cường tráng, làm nhà ánh sáng, giải phóng phụ nữ, thiết kế y phục tân thời: kiểu áo Le mur Cát Tường v.v..'),

('Lão Hạc','https://book.sachgiai.com/uploads/book/lao-hac/truyen-ngan-lao-hac-nam-cao.jpg', 490000,'', 2000, '14.5 x 20.5 cm', '2021-06-10', 20, 'Văn học', 2, 'Nam Cao', 10, 
'Nam Cao sinh năm 1915 mất năm 1951 tên thật là. Trần Hữu Tri (theo giấy khai sinh 1917-1951).
Sinh tại làng đại hoàng, tổng cao đà, huyện nam sang, phú ký nhân, tỉnh hà nam.
Ông đã ghép hai chữ của tên tổng và huyện làm bút danh nam cao.
Lão hạc là một truyện ngắn của nhà văn Nam Cao được viết năm 1943.
Tác phẩm được đánh giá là một trong những truyện ngắn khá tiêu biểu của dòng văn học hiện thực, nội dung truyện đã phần nào phản ánh được hiện trạng xã hội việt nam trong giai đoạn trước cách mạng tháng tám.
Lão hạc, một người nông dân chất phác, hiền lành. Lão mất vợ và có một người con trai nhưng vì quá nghèo nên không thể lấy vợ cho người con trai của mình.
Người con trai lão vì thế đã rời bỏ quê hương để đến đồn điền cao su làm ăn kiếm tiền.
Lão luôn trăn trở, suy nghĩ về tương lai của đứa con. Lão sống bằng nghề làm vườn, mảnh vườn mà vợ lão đã mất bao công sức để mua về và để lại cho con trai lão.
So với những người khác lúc đó, gia cảnh của lão khá đầy đủ, tuy nhiên do ốm yếu hơn hai tháng và cũng vì trận bão mà lão không có việc gì để làm.
Lão đã rất dằn vặt bản thân mình khi mang một "tội lỗi" là đã nỡ tâm "lừa một con chó".
Lão đã khóc rất nhiều với ông giáo người hàng xóm thân thiết của lão...'),

('Sống Mòn','https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1630330804i/12405088.jpg', 149000,'', 280, '14,5 x 20,5 cm', '2020-01-10', 30, 'NXB Văn Học',  2, 'Nam Cao', 10, 
'Sống mòn hoàn thành vào năm 1944, xuất bản ban đầu với tên gọi "Chết mòn" năm 1956. Trong tác phẩm, Nam Cao đã miêu tả sâu sắc tấn bi kịch tinh thần của người trí thức nghèo trong xã hội cũ. Họ là những người có ý thức rất cao về nhân phẩm và danh dự, có khát vọng - hoài bão văn chương lớn lao nhưng lại bị gánh nặng cơm áo gạo tiền bóp nghẹt sự sống. Rộng hơn là vận mệnh mấy con người ấy, ta thấy đặt ra một cách ám ảnh vấn đề vận mệnh chung của cả một xã hội chua xót, đau đớn, buồn thảm, tủi nhục, trong đó, đời sống không còn ý nghĩa, quay về phía nào cũng thấy dựng lên những bức tường bế tắc."
Cuốn tiểu thuyết chất chứa những suy nghĩ, trăn trở, ưu tư của Nam Cao về cách sống, về lối viết và nhiệm vụ của những người cầm bút. Không có những xung đột gay gắt, mâu thuẫn cao trào, chỉ đơn giản là những giằng xé đấu tranh nội tâm của mỗi phận người. Chỉ với giọng văn điềm đạm, cốt truyện đơn giản, thế nhưng, Sống mòn đã hội tụ đầy đủ tất cả sự điêu luyện, tinh tế của một ngòi bút truyện ngắn bậc thầy.'),

('Đời thừa','https://revelogue.com/wp-content/uploads/2020/08/nam-cao-doi-thua.jpg', 149000,'Hùng Sơn', 222, '14,5 x 20,5 cm', '2020-01-10', 10, 'NXB Văn Học',  2, 'Nam Cao', 5, 
'Đời Thừa - Tập Truyện Ngắn “Đời thừa”  truyện ngắn đặc sắc của Nam Cao xoay quanh cuộc sống người trí thức, với những tuyên ngôn để đời của nhà văn Nam Cao về văn chương, nghệ thuật.
Qua sáng tác của mình, Nam Cao thể hiện quan điểm nghệ thuật rằng, một tác phẩm văn học phải vượt lên trên tất cả các bờ cõi và giới hạn, phải là một tác phẩm chung cho cả loài người. “
Nó phải chứa đựng được một cái gì lớn lao, mạnh mẽ, vừa đau đớn, lại vừa phấn khởi; ca tụng tình yêu, bác ái, công bằng”
và "Văn chương không cần đến sự khéo tay, làm theo một cái khuôn mẫu. Văn chương chỉ dung nạp những người biết đào sâu, biết tìm tòi, khơi những nguồn chưa ai khơi và sáng tạo ra cái gì chưa có
". Ông đòi hỏi nhà văn phải có lương tâm, có nhân cách xứng với nghề; và cho rằng sự cẩu thả trong văn chương chẳng những là bất lương mà còn là đê tiện'),

('Dế Mèn Phiêu Lưu Ký','https://static.8cache.com/cover/o/eJzLyTDW1_VIzDROLfM3Noh31A8LM8zQLQlx8Uj11HeEgrw8V_0o5-Ck1IDyQEf3bP1iAwDLihCU/de-men-phieu-luu-ky.jpg', 150000,'', 144, '18 x 25 cm', '2019-02-10', 10, 'NXB Kim Đồng', 4, 'Ngô Tất Tố', 15, 
'“Một con dế đã từ tay ông thả ra chu du thế giới tìm những điều tốt đẹp cho loài người. Và con dế ấy đã mang tên tuổi ông đi cùng trên những chặng đường phiêu lưu đến với cộng đồng những con vật trong văn học thế giới, đến với những xứ sở thiên nhiên và văn hóa của các quốc gia khác. Dế Mèn Tô Hoài đã lại sinh ra Tô Hoài Dế Mèn, một nhà văn trẻ mãi không già trong văn chương...” - Nhà phê bình Phạm Xuân Nguyên
“Ông rất hiểu tư duy trẻ thơ, kể với chúng theo cách nghĩ của chúng, lí giải sự vật theo lô gích của trẻ. Hơn thế, với biệt tài miêu tả loài vật, Tô Hoài dựng lên một thế giới gần gũi với trẻ thơ. Khi cần, ông biết đem vào chất du ký khiến cho độc giả nhỏ tuổi vừa hồi hộp theo dõi, vừa thích thú khám phá.” '),

('Truyện - Doraemon Ngắn','https://tuoitho.mobi/upload/truyen/doremon-truyen-ngan-tap-3/anh-bia.jpg', 150000,'', 144, '18 x 25 cm', '2022-02-12', 30, 'NXB Kim Đồng', 4, 'Ngô Tất Tố', 0, 
'Những câu chuyện về chú mèo máy thông minh Doraemon và nhóm bạn Nobita, Shizuka, Suneo, Jaian, Dekisugi sẽ đưa chúng ta bước vào thế giới hồn nhiên, trong sáng đầy ắp tiếng cười với một kho bảo bối kì diệu - những bảo bối biến ước mơ của chúng ta thành sự thật. Nhưng trên tất cả Doraemon là hiện thân của tình bạn cao đẹp, của niềm khát khao vươn tới những tầm cao.'),

('Sách Tự Học Hóa','https://salt.tikicdn.com/ts/product/16/96/81/3f37867b43d59cfa088f79ac5f74eb5c.jpg', 99000,'', 284, '19 x 27 cm', '2019-02-10', 10, 'NXB đại học Quốc Gia Hà Nội', 5, 'Dale Carnegie', 0, 
'Tự học toàn diện Hóa học – Từ cơ bản đến nâng cao lớp 9 là cuốn sách được trình bày theo các chuyên đề học tập, kèm bài tập vận dụng và đề kiểm tra giúp các học sinh lớp 9 có thể dễ dàng tự học, ôn luyện môn Hóa học ngay tại nhà một cách bài bản, khoa học và hiệu quả. '),

('Sách Tự Học Toán','https://3.bp.blogspot.com/-qSv9VcaOkoo/XU_qlnOuFOI/AAAAAAAASoY/TJBCSSb6W1AAVpaeeSpfxU-_WDbZvPJtQCLcBGAs/s1600/chuyen-de-boi-duong-hoc-sinh-gioi-toan-9.gif', 145000,'', 284, '19 x 27 cm', '2019-02-10', 40, 'NXB đại học Quốc Gia Hà Nội', 5, 'Dale Carnegie', 0, 
' Là cuốn sách hệ thống đầy đủ kiến thức trọng tâm nhất các môn: Toán bám sát chương trình SGK. Giúp học sinh dễ dàng ghi nhớ, tra cứu & vận dụng để phục vụ quá trình học, ôn tập và luyện thi.');


-- create table if not exists `cart` (					
-- 	cart_id int primary key auto_increment,	
--     book_id int,
-- 	cart_quantity int not null,					
-- 	cart_total_money double not null,					
--     cart_status bit(1) default 0,
--     cart_purchase_date datetime,
--     foreign key (book_id) references book(book_id)
-- );

-- INSERT INTO`cart` (book_id, cart_quantity, cart_total_money, cart_status, cart_purchase_date) VALUES 
-- (1,2,152000,0,'2023-06-05'),
-- (2,2,138000,1,'2023-06-06'),
-- (2,2,138000,1,'2023-06-05');

create table if not exists cart (					
	cart_id int primary key auto_increment,
    book_id int,
	cart_quantity int not null,					
	cart_total_money double not null,					
    foreign key (book_id) references book(book_id)
);

INSERT INTO cart (cart_quantity, cart_total_money,book_id) VALUES 
(2, 152000,1),
(1, 69000,2),
( 2, 150000,3),
(4, 168000,4);



-- (10, 5000000,'2002-10-07',1),
-- (1, 50000,null,0),
-- (6, 45000, null,0),
-- (4, 45000, null,0),
-- (3, 45000, null,0),
-- (30, 45000, null,0),

-- (31, 45000, '2003-10-08',1),
-- (8, 45000, '2003-10-08',1),
-- (9, 45000, '2003-10-08',1),
-- (1, 45000, '2003-10-09',1),
-- (4, 45000, '2003-10-09',1),
-- (5, 45000, null,0),
-- (10, 45000, null,0),
-- (11, 45000,null,0),
-- (30, 45000, null,0),
-- (20, 45000, null,0);

-- create table if not exists cart_book (					
-- 	cart_book_id int primary key auto_increment,		
--     book_id int not null,
-- 	cart_id int not null,					
-- 	foreign key(cart_id) references cart(cart_id)	ON delete CASCADE,				
-- 	foreign key(book_id) references book(book_id) ON delete CASCADE					
-- );

-- INSERT INTO cart_book (book_id, cart_id) VALUES 
-- (1,1),(2,2),(3,3),(4,4),(5,5),
-- (6,6),(7,7),(8,8),
-- (9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(1,16),
-- (2,17),(3,18),(14,19),(13,20);

-- select *from cart where cart.cart_status = 0;
-- update cart set cart.cart_status = 0 where cart_id = 1;
-- update cart set cart_quantity = 2 where cart_id = 1

-- select * from book where book_flag = 0 order by book_publish_date desc

select *from cart join
book on cart.book_id = book.book_id;

select cart.cart_id, cart_quantity, cart_total_money, cart.book_id from cart join
            book on cart.book_id = book.book_id;
            