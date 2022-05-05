USE [WEB_TRUYEN]
GO
SET IDENTITY_INSERT [dbo].[DB_USER] ON 

INSERT [dbo].[DB_USER] ([id_user], [fullname], [ten_dangnhap], [mail], [matkhau_user], [quyen_han], [coin], [ma_khoa], [img_user], [status_], [created_at], [updated_at]) VALUES (2, N'Kamisato Ayaka', N'travinhcity6x', N'ankhang024@gmail.com', N'e1adc3949ba59abbe56e057f2f883e', N'0', 100000, N'eed43195ec7c6a93855d2b0d0f46fb9', N'747191545056_p0_master1200.jpg', 1, CAST(0x0000ADD8009A7E8B AS DateTime), CAST(0x0000ADD8009A7E8B AS DateTime))
INSERT [dbo].[DB_USER] ([id_user], [fullname], [ten_dangnhap], [mail], [matkhau_user], [quyen_han], [coin], [ma_khoa], [img_user], [status_], [created_at], [updated_at]) VALUES (7, N'admin', N'admin', N'KDAStudio@gmail.com', N'e1adc3949ba59abbe56e057f2f883e', N'2', 950000, N'a66abb5684c45962d887564f8346e8d', N'4334ab154f0e4f1ee72505afe32e17493706-removebg-preview.png', 1, CAST(0x0000ADDC00A45E97 AS DateTime), CAST(0x0000ADDC00A45E97 AS DateTime))
INSERT [dbo].[DB_USER] ([id_user], [fullname], [ten_dangnhap], [mail], [matkhau_user], [quyen_han], [coin], [ma_khoa], [img_user], [status_], [created_at], [updated_at]) VALUES (1026, N'Kamisato Ayaya', N'travinhcity7x', N'ayaya@mail.com', N'e1adc3949ba59abbe56e057f2f883e', N'2', 98829999, N'1b68993c7ec1f5ffeef245be43fdb6', N'7087243316096_1020335945445414_4164233053372659426_n.jpg', 1, CAST(0x0000ADDF00A8BEEC AS DateTime), CAST(0x0000ADDF00A8BEEC AS DateTime))
INSERT [dbo].[DB_USER] ([id_user], [fullname], [ten_dangnhap], [mail], [matkhau_user], [quyen_han], [coin], [ma_khoa], [img_user], [status_], [created_at], [updated_at]) VALUES (1034, N'khuong duy', N'duyvo', N'a@a.c', N'7a8fbde2e8c919527d2f8a29e6acd32', N'2', 198204498, N'68dbaf636013deb0333d5e6c67add19', N'9220157210846_2970731016506616_5376874345464786497_n.jpg', 1, CAST(0x0000ADE001479E7D AS DateTime), CAST(0x0000ADE001479E7D AS DateTime))
INSERT [dbo].[DB_USER] ([id_user], [fullname], [ten_dangnhap], [mail], [matkhau_user], [quyen_han], [coin], [ma_khoa], [img_user], [status_], [created_at], [updated_at]) VALUES (2040, N'Dy Nhỏ Nèe', N'dyno11', N'shadofst0511@gmail.com', N'b59c67bf196a4758191e42f76670ceba', N'1', 199094998, N'b5d0fa5c1b262964a5b959a6e6793b5', N'993sqidBae.jpg', 1, CAST(0x0000ADEF00F2527B AS DateTime), CAST(0x0000ADEF00F2527B AS DateTime))
INSERT [dbo].[DB_USER] ([id_user], [fullname], [ten_dangnhap], [mail], [matkhau_user], [quyen_han], [coin], [ma_khoa], [img_user], [status_], [created_at], [updated_at]) VALUES (2041, N'adadad1321', N'adadad1321', N'adadad1321@adadad1321.com', N'496a3a13b59728d118f539c39b25f27', N'0', 0, N'5320162f94e4a6ff4f77154e34472aab', NULL, 1, CAST(0x0000ADEF01098308 AS DateTime), CAST(0x0000ADEF01098308 AS DateTime))
INSERT [dbo].[DB_USER] ([id_user], [fullname], [ten_dangnhap], [mail], [matkhau_user], [quyen_han], [coin], [ma_khoa], [img_user], [status_], [created_at], [updated_at]) VALUES (2042, N'Lê trung kiên', N'kevinle', N'kevinle@a.com ', N'b57260e817f17461bbca8b6ed7d623f1', N'0', 0, N'e3ed2c9f76ccf53c6f7c8a3729025ce', NULL, 1, CAST(0x0000ADEF01104365 AS DateTime), CAST(0x0000ADEF01104365 AS DateTime))
INSERT [dbo].[DB_USER] ([id_user], [fullname], [ten_dangnhap], [mail], [matkhau_user], [quyen_han], [coin], [ma_khoa], [img_user], [status_], [created_at], [updated_at]) VALUES (2043, N'Tạ Trọng Ân', N'an', N'tatrongan201@gmail.com', N'e1adc3949ba59abbe56e057f2f883e', N'0', 0, N'beee4a1b3cdd99fc43aa25d72a07e4a', N'95124152bd45caebc51a5ac7541d1ca1d47f.jpg', 1, CAST(0x0000ADF20107C199 AS DateTime), CAST(0x0000ADF20107C199 AS DateTime))
SET IDENTITY_INSERT [dbo].[DB_USER] OFF
SET IDENTITY_INSERT [dbo].[DB_CHUONG] ON 

INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (1071, 1090, 7, N'123213', N'&lt;p&gt;12312313123&lt;/p&gt;
', 1, CAST(0x0000ADDF00A430C2 AS DateTime), CAST(0x0000ADDF00A430C2 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (1072, 1078, 7, N'Episode 1', N'&lt;p&gt;sdafcxvvdfgre&lt;/p&gt;
', 1, CAST(0x0000ADDF00A5517E AS DateTime), CAST(0x0000ADDF00A5517E AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (1076, 23, 7, N'132', N'&lt;p&gt;123123&lt;/p&gt;
', 1, CAST(0x0000ADDF00A791A2 AS DateTime), CAST(0x0000ADDF00A791A2 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (1077, 1099, 7, N'chuong 1.2', N'&lt;p&gt;12345&lt;/p&gt;
', 1, CAST(0x0000ADE0004CE34E AS DateTime), CAST(0x0000ADE0004CE34E AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (1079, 1073, 7, N'Tập 01 - Sát thủ đệ nhất thế giới chuyển sinh thành quý tộc ở thế giới khác', N'&lt;iframe width=&quot;100%&quot; height=&quot;750&quot; src=&quot;https://www.youtube.com/embed/i4r0VbB94u0&quot; title=&quot;YouTube video player&quot; frameborder=&quot;0&quot; allow=&quot;accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture&quot; allowfullscreen&gt;&lt;/iframe&gt;', 1, CAST(0x0000ADE0014DBE41 AS DateTime), CAST(0x0000ADE0014DBE41 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (1080, 1073, 7, N'Tập 02 - Sát thủ đệ nhất thế giới chuyển sinh thành quý tộc ở thế giới khác', N'&lt;iframe width=&quot;100%&quot; height=&quot;750&quot; src=&quot;https://www.youtube.com/embed/lS17E55hoa4&quot; title=&quot;YouTube video player&quot; frameborder=&quot;0&quot; allow=&quot;accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture&quot; allowfullscreen&gt;&lt;/iframe&gt;', 1, CAST(0x0000ADE0014EAC49 AS DateTime), CAST(0x0000ADE0014EAC49 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (1081, 1073, 7, N'Tập 03 - Sát thủ đệ nhất thế giới chuyển sinh thành quý tộc ở thế giới khác', N'&lt;iframe width=&quot;100%&quot; height=&quot;750&quot; src=&quot;https://www.youtube.com/embed/y_zJB9Wdo14&quot; title=&quot;YouTube video player&quot; frameborder=&quot;0&quot; allow=&quot;accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture&quot; allowfullscreen&gt;&lt;/iframe&gt;', 1, CAST(0x0000ADE0014EEC17 AS DateTime), CAST(0x0000ADE0014EEC17 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (1082, 1073, 7, N'Tập 04 - Sát thủ đệ nhất thế giới chuyển sinh thành quý tộc ở thế giới khác', N'&lt;iframe width=&quot;100%&quot; height=&quot;750&quot; src=&quot;https://www.youtube.com/embed/EG0Fe2QZemM&quot; title=&quot;YouTube video player&quot; frameborder=&quot;0&quot; allow=&quot;accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture&quot; allowfullscreen&gt;&lt;/iframe&gt;', 1, CAST(0x0000ADE0014F1B50 AS DateTime), CAST(0x0000ADE0014F1B50 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (1083, 1073, 7, N'Tập 05 - Sát thủ đệ nhất thế giới chuyển sinh thành quý tộc ở thế giới khác', N'&lt;iframe width=&quot;100%&quot; height=&quot;750&quot; src=&quot;https://www.youtube.com/embed/UisoD-2rr20&quot; title=&quot;YouTube video player&quot; frameborder=&quot;0&quot; allow=&quot;accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture&quot; allowfullscreen&gt;&lt;/iframe&gt;', 1, CAST(0x0000ADE0014F475E AS DateTime), CAST(0x0000ADE0014F475E AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (1084, 1073, 7, N'Tập 06 - Sát thủ đệ nhất thế giới chuyển sinh thành quý tộc ở thế giới khác', N'&lt;iframe width=&quot;100%&quot; height=&quot;750&quot; src=&quot;https://www.youtube.com/embed/oq8sxzX39_c&quot; title=&quot;YouTube video player&quot; frameborder=&quot;0&quot; allow=&quot;accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture&quot; allowfullscreen&gt;&lt;/iframe&gt;', 1, CAST(0x0000ADE0014F6FB8 AS DateTime), CAST(0x0000ADE0014F6FB8 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (1090, 1088, 7, N'Chương 1: Giấc mơ', N'&lt;p&gt;Một giọng n&amp;oacute;i quen thuộc, một m&amp;ugrave;i hương quen thuộc, &amp;aacute;nh s&amp;aacute;ng v&amp;agrave; hơi ấm dễ chịu bao quanh t&amp;ocirc;i một c&amp;aacute;ch &amp;ecirc;m &amp;aacute;i.&lt;/p&gt;

&lt;p&gt;Một cảm gi&amp;aacute;c kh&amp;oacute; hiểu như thể c&amp;oacute; điều g&amp;igrave; đ&amp;oacute; rất quan trọng bỗng nhi&amp;ecirc;n lấp đầy bất cứ x&amp;oacute; xỉnh n&amp;agrave;o, kết nối tất cả những mắt x&amp;iacute;ch của cuộc đời t&amp;ocirc;i lại.&lt;/p&gt;

&lt;p&gt;Những nỗi c&amp;ocirc; đơn, v&amp;agrave; lo lắng bỗng chốc tan biến, như thể t&amp;ocirc;i bỗng nhi&amp;ecirc;n b&amp;eacute; lại, trở th&amp;agrave;nh đứa trẻ sơ sinh đang ngậm bầu sữa mẹ v&amp;ocirc; tư lự.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i ch&amp;igrave;m trong một cảm gi&amp;aacute;c mềm mại v&amp;agrave; dịu d&amp;agrave;ng, như thể chưa từng trải qua mất m&amp;aacute;t v&amp;agrave; đau thương.&lt;/p&gt;

&lt;p&gt;V&amp;agrave;, t&amp;ocirc;i mở mắt.&lt;/p&gt;

&lt;p&gt;Kia l&amp;agrave; trần nh&amp;agrave;.&lt;/p&gt;

&lt;p&gt;Đ&amp;acirc;y l&amp;agrave; căn ph&amp;ograve;ng, v&amp;agrave; b&amp;acirc;y giờ l&amp;agrave; buổi s&amp;aacute;ng sớm.&lt;/p&gt;

&lt;p&gt;Một m&amp;igrave;nh, giữa Tokyo.&lt;/p&gt;

&lt;p&gt;Ra vậy&amp;hellip;&lt;/p&gt;

&lt;p&gt;H&amp;oacute;a ra, đ&amp;oacute; chỉ l&amp;agrave; một giấc mơ. T&amp;ocirc;i xoay sở t&amp;igrave;m c&amp;aacute;ch cựa quậy cơ thể để tho&amp;aacute;t khỏi c&amp;aacute;i&amp;nbsp; giường m&amp;agrave; t&amp;ocirc;i đang nằm.&lt;/p&gt;

&lt;p&gt;Chỉ trong khoảnh khắc, ước chừng hai gi&amp;acirc;y, những cảm x&amp;uacute;c tr&amp;agrave;n ngập t&amp;acirc;m tr&amp;iacute; t&amp;ocirc;i l&amp;uacute;c n&amp;atilde;y, bỗng chốc tan biến đi một c&amp;aacute;ch nhanh ch&amp;oacute;ng. Kh&amp;ocirc;ng dấu vết, kh&amp;ocirc;ng đọng lại bất cứ điều g&amp;igrave;, như thể c&amp;oacute; một cảm x&amp;uacute;c m&amp;atilde;nh liệt n&amp;agrave;o đ&amp;oacute; b&amp;ecirc;n trong t&amp;ocirc;i đang trỗi dậy, nước mắt t&amp;ocirc;i tr&amp;agrave;o ra.&lt;/p&gt;

&lt;p&gt;S&amp;aacute;ng sớm, khi vừa tỉnh giấc, kh&amp;ocirc;ng hiểu v&amp;igrave; sao bỗng nhi&amp;ecirc;n thỉnh thoảng t&amp;ocirc;i lại kh&amp;oacute;c. C&amp;oacute; những l&amp;uacute;c xảy ra những chuyện như vậy đấy, v&amp;agrave; thực tế th&amp;igrave; t&amp;ocirc;i chẳng thể n&amp;agrave;o nhớ được giấc mơ m&amp;agrave; t&amp;ocirc;i chắc chắn rằng, chỉ ước chừng v&amp;agrave;i gi&amp;acirc;y trước, đ&amp;atilde; tr&amp;ocirc;ng thấy r&amp;otilde; r&amp;agrave;ng lắm.&lt;/p&gt;

&lt;p&gt;Lấy b&amp;agrave;n tay phải gạt nước mắt c&amp;ograve;n đọng tr&amp;ecirc;n kh&amp;oacute;e mắt, t&amp;ocirc;i liếc nh&amp;igrave;n xung quanh. Nước mắt b&amp;aacute;m lại ở ng&amp;oacute;n tay. Nhưng rồi n&amp;oacute; cũng nhanh ch&amp;oacute;ng kh&amp;ocirc; đi,&amp;nbsp; giống như những k&amp;yacute; ức c&amp;ograve;n đọng lại trong giấc mơ trước đ&amp;oacute;. C&amp;oacute; thứ g&amp;igrave; đ&amp;oacute; quan trọng, rất quan trọng m&amp;agrave; dường như t&amp;ocirc;i đ&amp;atilde; từng giữ trong b&amp;agrave;n tay n&amp;agrave;y.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i cũng kh&amp;ocirc;ng biết nữa.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i rời khỏi giường, hướng về bồn rửa tay ph&amp;iacute;a b&amp;ecirc;n kia nhưng cũng nằm trong ph&amp;ograve;ng. Vục khu&amp;ocirc;n mặt v&amp;agrave;o l&amp;agrave;n nước lạnh, v&amp;agrave; tận hưởng m&amp;ugrave;i vị của n&amp;oacute;, cũng như c&amp;aacute;i cảm gi&amp;aacute;c r&amp;ugrave;ng m&amp;igrave;nh sảng kho&amp;aacute;i, t&amp;ocirc;i ngước nh&amp;igrave;n bản th&amp;acirc;n đang phản chiếu trong tấm gương ph&amp;iacute;a trước mặt.&lt;/p&gt;

&lt;p&gt;Tấm gương đang phản chiếu t&amp;ocirc;i, trong một bộ dạng dường như c&amp;oacute; phần bất m&amp;atilde;n c&amp;aacute;i g&amp;igrave; đ&amp;oacute;.&lt;/p&gt;

&lt;p&gt;Rồi t&amp;ocirc;i bắt đầu chải t&amp;oacute;c, k&amp;eacute;o thắt lưng để chỉnh đốn lại bộ đồng phục đang mặc. T&amp;ocirc;i đ&amp;atilde; bỏ kh&amp;ocirc;ng d&amp;ugrave;ng c&amp;agrave;-vạt, cũng chẳng hiểu v&amp;igrave; sao nữa. Cuối c&amp;ugrave;ng t&amp;ocirc;i kho&amp;aacute;c vội &amp;aacute;o cho&amp;agrave;ng.&lt;/p&gt;

&lt;p&gt;V&amp;agrave; t&amp;ocirc;i mở cửa căn hộ đang thu&amp;ecirc; ra.&lt;/p&gt;

&lt;p&gt;Đ&amp;oacute;ng c&amp;aacute;nh cửa lại rồi quay đi, trước mắt t&amp;ocirc;i hiện l&amp;ecirc;n một khung cảnh vốn đ&amp;atilde; quen thuộc. Phong cảnh của Tokyo như mở rộng ra trước mắt t&amp;ocirc;i, những t&amp;ograve;a nh&amp;agrave; cao tầng chạy san s&amp;aacute;t nhau, khiến t&amp;ocirc;i c&amp;oacute; một sự li&amp;ecirc;n tưởng k&amp;igrave; lạ tới những d&amp;atilde;y n&amp;uacute;i ở đ&amp;acirc;u đ&amp;oacute; t&amp;ocirc;i từng nh&amp;igrave;n thấy.&lt;/p&gt;

&lt;p&gt;Rốt cuộc, t&amp;ocirc;i cũng xoay sở h&amp;ograve;a v&amp;agrave;o d&amp;ograve;ng người tấp nập ở nh&amp;agrave; ga,rồi sau đ&amp;oacute; t&amp;igrave;m c&amp;aacute;ch tho&amp;aacute;t ra để cuối c&amp;ugrave;ng đứng b&amp;ecirc;n thang m&amp;aacute;y nối chuyến, chuyển l&amp;ecirc;n chuyến t&amp;agrave;u điện c&amp;ocirc;ng cộng, v&amp;agrave; trong khi chờ đợi, t&amp;ocirc;i ngước nh&amp;igrave;n khung cảnh quen thuộc kia. Trong những g&amp;oacute;c nhỏ nhất của th&amp;agrave;nh phố n&amp;agrave;y, từ cửa sổ, từ những chuyến t&amp;agrave;u, v&amp;agrave; từ những c&amp;acirc;y cầu d&amp;agrave;nh cho người đi bộ, lu&amp;ocirc;n lu&amp;ocirc;n đọng lại dấu vết của con người.&lt;/p&gt;

&lt;p&gt;Giống như một cơn mưa những c&amp;aacute;nh hoa anh đ&amp;agrave;o v&amp;agrave;o m&amp;ugrave;a xu&amp;acirc;n, h&amp;agrave;ng trăm h&amp;agrave;ng ngh&amp;igrave;n người đang đan v&amp;agrave;o nhau, để l&amp;ecirc;n những chuyến t&amp;agrave;u điện&amp;nbsp; hoặc l&amp;agrave; đang chuyển đến một chuyến t&amp;agrave;u kh&amp;aacute;c, tất cả tạo n&amp;ecirc;n d&amp;ograve;ng chảy cho th&amp;agrave;nh phố n&amp;agrave;y.&lt;/p&gt;

&lt;p&gt;Kh&amp;ocirc;ng hiểu tại sao h&amp;ocirc;m nay, t&amp;ocirc;i mới nhận ra những điều s&amp;acirc;u xa v&amp;agrave; ưu tư ấy. T&amp;ocirc;i đăm chi&amp;ecirc;u ngắm nh&amp;igrave;n th&amp;agrave;nh phố.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Dường như t&amp;ocirc;i đang cố gắng t&amp;igrave;m kiếm thứ g&amp;igrave; đ&amp;oacute;.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Một ai đ&amp;oacute;.&lt;/p&gt;
', 1, CAST(0x0000ADE00157702B AS DateTime), CAST(0x0000ADE00157702B AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (1091, 1102, 1034, N'Chương 1', N'&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/public/nguoidung/Images/68dbaf636013deb0333d5e6c67add19/images/truyen-kieu-co-bao-nhieu-cau-tho-luc-bat-01.jpg&quot; style=&quot;height:720px; width:1280px&quot; /&gt;&lt;/p&gt;
', 1, CAST(0x0000ADE00157FC48 AS DateTime), CAST(0x0000ADE00157FC48 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (1092, 1088, 1034, N'Chương 2: Sự khởi đầu', N'&lt;p&gt;C&amp;oacute; tiếng chu&amp;ocirc;ng điện thoại ho&amp;agrave;n to&amp;agrave;n lạ lẫm reo vang.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Nghe như tiếng chim h&amp;oacute;t ngo&amp;agrave;i cửa sổ. T&amp;ocirc;i lờ mờ nghĩ như vậy. Th&amp;ocirc;i dậy nh&amp;eacute;? Nhưng m&amp;agrave; t&amp;ocirc;i vẫn c&amp;ograve;n đang buồn ngủ lắm. Bởi đ&amp;ecirc;m qua t&amp;ocirc;i đ&amp;atilde; thức miệt m&amp;agrave;i tập trung vẽ tranh, đến khi l&amp;ecirc;n giường th&amp;igrave; trời đ&amp;atilde; tảng s&amp;aacute;ng.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Taki kun, taki kun&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Lần n&amp;agrave;y l&amp;agrave; tiếng ai đ&amp;oacute; đang gọi t&amp;ecirc;n ai đ&amp;oacute;. Giọng con g&amp;aacute;i.&lt;/p&gt;

&lt;p&gt;Giọng con g&amp;aacute;i?&lt;/p&gt;

&lt;p&gt;&amp;ldquo; Taki kun, taki kun&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Giọng n&amp;oacute;i nghẹn lại như thể c&amp;ocirc; b&amp;eacute; chuẩn bị kh&amp;oacute;c tới nơi. Một giọng n&amp;oacute;i giống như c&amp;oacute; một nỗi buồn n&amp;agrave;o đ&amp;oacute; bao phủ, v&amp;agrave; vang vọng xa xăm như thể n&amp;oacute; đến từ những v&amp;igrave; sao.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Cậu kh&amp;ocirc;ng nhớ sao?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Giọng n&amp;oacute;i đầy bất an bỗng nhi&amp;ecirc;n hỏi t&amp;ocirc;i. Nhưng kh&amp;ocirc;ng, tớ kh&amp;ocirc;ng biết cậu l&amp;agrave; ai đ&amp;acirc;u.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;hellip;&amp;hellip;&amp;hellip;.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Chuyến t&amp;agrave;u điện bất chợt dừng lại, v&amp;agrave; cửa tự động mở ra. T&amp;ocirc;i giật m&amp;igrave;nh nhanh ch&amp;oacute;ng bước rời khỏi. V&amp;agrave; khi nhận ra l&amp;agrave; m&amp;igrave;nh đang đứng ở bậc thềm đợi chuyến kế, th&amp;igrave; toa t&amp;agrave;u vừa rồi đ&amp;atilde; lại đầy ắp người. Ngay ph&amp;iacute;a trước mắt t&amp;ocirc;i, một c&amp;ocirc; b&amp;eacute; học sinh c&amp;oacute; vẻ l&amp;agrave; c&amp;ugrave;ng tuổi đang chăm ch&amp;uacute; nh&amp;igrave;n t&amp;ocirc;i, v&amp;agrave; khi t&amp;ocirc;i đang thắc mắc bộ đồng phục đ&amp;oacute; của trường n&amp;agrave;o, th&amp;igrave; c&amp;ocirc; b&amp;eacute; đ&amp;atilde; bị cuốn đi bởi c&amp;aacute;i sự đ&amp;ocirc;ng đặc người tr&amp;ecirc;n chuyến t&amp;agrave;u.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;T&amp;ecirc;n m&amp;igrave;nh l&amp;agrave; Mitsuha&amp;rdquo;&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; b&amp;eacute; bỗng nhi&amp;ecirc;n h&amp;eacute;t l&amp;ecirc;n, v&amp;agrave; cố gắng vươn sợi d&amp;acirc;y buộc t&amp;oacute;c về ph&amp;iacute;a t&amp;ocirc;i. V&amp;agrave; t&amp;ocirc;i cũng bất th&amp;igrave;nh l&amp;igrave;nh vươn tay m&amp;igrave;nh ra để bắt lấy. Con t&amp;agrave;u bỗng chốc nhấn ch&amp;igrave;m trong m&amp;agrave;n đ&amp;ecirc;m như thể trời đ&amp;atilde; chuyển tối, v&amp;agrave; rồi tất cả lại trở lại ồn &amp;agrave;o như trước. T&amp;ocirc;i va v&amp;agrave;o hết người n&amp;agrave;y đến người kh&amp;aacute;c, c&amp;oacute; lẽ bởi ảnh hưởng của c&amp;aacute;i cảm gi&amp;aacute;c k&amp;igrave; lạ vừa rồi khiến t&amp;ocirc;i mất thăng bằng.&lt;/p&gt;

&lt;p&gt;V&amp;agrave; rồi t&amp;ocirc;i lại mở mắt ra.&lt;/p&gt;

&lt;p&gt;Giọng n&amp;oacute;i của c&amp;ocirc; g&amp;aacute;i, tiếng vang, vẫn c&amp;ograve;n đọng lại đ&amp;acirc;u đ&amp;oacute; trong t&amp;acirc;m tr&amp;iacute; t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;T&amp;ecirc;n c&amp;ocirc; b&amp;eacute; l&amp;agrave; Mitsuha? C&amp;oacute; phải kh&amp;ocirc;ng nhỉ?&lt;/p&gt;

&lt;p&gt;Một c&amp;aacute;i t&amp;ecirc;n kh&amp;ocirc;ng hề quen thuộc, với một c&amp;ocirc; g&amp;aacute;i t&amp;ocirc;i kh&amp;ocirc;ng hề hay biết.&lt;/p&gt;

&lt;p&gt;Một c&amp;ocirc; b&amp;eacute; dường như đang sợ h&amp;atilde;i điều g&amp;igrave; đ&amp;oacute;, đang cố gắng giữ những giọt nước mắt khỏi lăn d&amp;agrave;i tr&amp;ecirc;n kh&amp;oacute;e mắt, v&amp;agrave; bộ đồng phục dường như kh&amp;ocirc;ng thuộc về bất k&amp;igrave; ng&amp;ocirc;i trường n&amp;agrave;o ở đ&amp;acirc;y. Một biểu hiện như thể c&amp;ocirc; b&amp;eacute; đang nắm giữ vận mệnh của vũ trụ v&amp;agrave; đang t&amp;igrave;m kiếm thứ g&amp;igrave; đ&amp;oacute;.&lt;/p&gt;

&lt;p&gt;Nhưng m&amp;agrave;, chắc đ&amp;oacute; chỉ l&amp;agrave; mơ th&amp;ocirc;i m&amp;agrave;? Chẳng c&amp;oacute; &amp;yacute; nghĩa g&amp;igrave; cả. Chẳng c&amp;oacute; g&amp;igrave; phải để t&amp;acirc;m, khu&amp;ocirc;n mặt đ&amp;oacute; cũng kh&amp;ocirc;ng thể nhớ được. Rồi th&amp;igrave; c&amp;aacute;i &amp;acirc;m thanh vang vọng trong đầu kia cũng bị biến mất.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Nhưng m&amp;agrave;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Nhưng m&amp;agrave;, tim t&amp;ocirc;i vẫn đập mạnh, v&amp;agrave; cơ thể t&amp;ocirc;i nặng trĩu một c&amp;aacute;ch k&amp;igrave; lạ, to&amp;agrave;n th&amp;acirc;n t&amp;ocirc;i ướt sũng v&amp;igrave; mồ h&amp;ocirc;i. T&amp;ocirc;i cố gắng h&amp;iacute;t thở để trấn tĩnh lại.&lt;/p&gt;

&lt;p&gt;Bị cảm &amp;agrave;? Mũi v&amp;agrave; họng t&amp;ocirc;i như c&amp;oacute; một cảm gi&amp;aacute;c k&amp;igrave; cục, kh&amp;ocirc;ng kh&amp;iacute; của con đường ng&amp;agrave;y n&amp;agrave;o cũng đi lại cũng kh&amp;aacute;c, v&amp;agrave; ngực t&amp;ocirc;i bỗng nhi&amp;ecirc;n c&amp;oacute; cảm gi&amp;aacute;c rất nặng nề, một cảm gi&amp;aacute;c nặng nề mang t&amp;iacute;nh vật l&amp;yacute;. Cơ thể t&amp;ocirc;i như đổ xuống ngay trước mắt.&lt;/p&gt;

&lt;p&gt;V&amp;agrave; ở đ&amp;oacute;, t&amp;ocirc;i nh&amp;igrave;n thấy c&amp;oacute; một khe ngực.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Ở đ&amp;oacute;, t&amp;ocirc;i nh&amp;igrave;n thấy c&amp;oacute; một khe ngực.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;hellip;&amp;hellip;&amp;hellip;..????&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Tấm r&amp;egrave;m phản chiếu &amp;aacute;nh s&amp;aacute;ng buổi b&amp;igrave;nh minh, đang rọi v&amp;agrave;o một l&amp;agrave;n da trắng muốt v&amp;agrave; mềm mại. Giữa hai bầu ngực, đổ b&amp;oacute;ng xuống như thể đọng lại một c&amp;aacute;i hồ nước ở đ&amp;oacute;.&lt;/p&gt;

&lt;p&gt;C&amp;aacute;i g&amp;igrave; thế n&amp;agrave;y?&lt;/p&gt;

&lt;p&gt;Những g&amp;igrave; trước mắt t&amp;ocirc;i như&amp;nbsp; một sự hiển nhi&amp;ecirc;n b&amp;igrave;nh thường, như thể quả t&amp;aacute;o rơi xuống mặt đất. T&amp;ocirc;i đ&amp;atilde; nghĩ như thế.&lt;/p&gt;

&lt;p&gt;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&lt;/p&gt;

&lt;p&gt;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&lt;/p&gt;

&lt;p&gt;&amp;hellip;&amp;hellip;&amp;hellip;.&lt;/p&gt;

&lt;p&gt;?????????&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i bỗng nhi&amp;ecirc;n cảm động, &amp;ldquo;&amp;Ocirc;i, &amp;ocirc;i&amp;hellip;&amp;rdquo;, c&amp;aacute;i g&amp;igrave; thế n&amp;agrave;y, t&amp;ocirc;i nh&amp;igrave;n một c&amp;aacute;ch chăm ch&amp;uacute;. C&amp;aacute;i n&amp;agrave;y gọi l&amp;agrave; g&amp;igrave; nhỉ? Cơ thể con g&amp;aacute;i &amp;agrave;? Tuyệt vời qu&amp;aacute;.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Chị ơi, chị l&amp;egrave;m g&amp;igrave; thế?&amp;rdquo; (Ch&amp;uacute; th&amp;iacute;ch: giọng của Yotsuba v&amp;agrave; Mitsuha l&amp;agrave; giọng địa phương- ND)&lt;/p&gt;

&lt;p&gt;Vừa ngước nh&amp;igrave;n t&amp;igrave;m kiếm phương hướng của giọng n&amp;oacute;i, một c&amp;ocirc; b&amp;eacute; bỗng nhi&amp;ecirc;n k&amp;eacute;o tấm cửa ph&amp;ograve;ng ra. Nh&amp;igrave;n thấy cảnh t&amp;ocirc;i đang nắn b&amp;oacute;p ngực, c&amp;ocirc; b&amp;eacute; ng&amp;acirc;y ng&amp;ocirc; cất tiếng hỏi.&lt;/p&gt;

&lt;p&gt;Ui tuyệt vời thế, mơ g&amp;igrave; m&amp;agrave; cực k&amp;igrave; ch&amp;acirc;n thật thế n&amp;agrave;y, n&amp;agrave;y&amp;hellip;ơ?&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i lại nh&amp;igrave;n c&amp;ocirc; b&amp;eacute; một lần nữa. Khoảng tầm mười tuổi, một c&amp;ocirc; b&amp;eacute; lộ vẻ năng động v&amp;agrave; rất xinh xắn.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Chị ưi?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; b&amp;eacute; vừa hỏi vừa chỉ v&amp;agrave;o t&amp;ocirc;i. N&amp;oacute;i vậy th&amp;igrave; t&amp;ocirc;i l&amp;agrave; chị &amp;agrave;? C&amp;ocirc; b&amp;eacute; &amp;aacute; khẩu trong một l&amp;uacute;c rồi cũng cất tiếng:&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Chị ngủ nướng c&amp;aacute;i g&amp;igrave; vựi? C&amp;ograve;n kh&amp;ocirc;ng mau nhanh nhanh l&amp;ecirc;n, đi ăn s&amp;aacute;ng.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Để mặc t&amp;ocirc;i c&amp;ograve;n đang ngơ ng&amp;aacute;c, con b&amp;eacute; đ&amp;oacute;ng sầm tấm cửa lại. Trong l&amp;uacute;c nghĩ thầm, con b&amp;eacute; n&amp;agrave;y sao dễ c&amp;aacute;u thế nhỉ? T&amp;ocirc;i tho&amp;aacute;t khỏi đống chăn đệm v&amp;agrave; đứng l&amp;ecirc;n nh&amp;igrave;n xung quanh.&amp;nbsp; M&amp;agrave; nhắc tới chuyện đấy, t&amp;ocirc;i cũng cảm thấy đ&amp;oacute;i meo rồi. T&amp;ocirc;i dừng lại ở một tấm gương d&amp;agrave;i đặt trong g&amp;oacute;c ph&amp;ograve;ng v&amp;agrave; nh&amp;igrave;n chăm ch&amp;uacute; h&amp;igrave;nh ảnh đang phản chiếu trong đ&amp;oacute;. T&amp;ocirc;i mặc một bộ pịjama đang trễ một phần xuống tận vai, sau đ&amp;oacute; th&amp;igrave; cả quần &amp;aacute;o đều rơi xuống nền nh&amp;agrave;, t&amp;ocirc;i ho&amp;agrave;n to&amp;agrave;n khỏa th&amp;acirc;n.&lt;/p&gt;

&lt;p&gt;Cơn ng&amp;aacute;i ngủ lập tức biến mất. H&amp;igrave;nh ảnh của t&amp;ocirc;i hiện l&amp;ecirc;n r&amp;otilde; mồn một trong gương. Một m&amp;aacute;i t&amp;oacute;c d&amp;agrave;i đen &amp;oacute;ng như d&amp;ograve;ng nước,&amp;nbsp; một khu&amp;ocirc;n mặt tr&amp;ograve;n nhỏ nhắn được nhấn bằng một cặp l&amp;ocirc;ng m&amp;agrave;y thanh t&amp;uacute;, với đ&amp;ocirc;i m&amp;ocirc;i lu&amp;ocirc;n như đang mỉm cười vui vẻ tạo cảm gi&amp;aacute;c gần gũi. Một c&amp;aacute;i cổ nhỏ nhắn ẩn dưới đ&amp;oacute; l&amp;agrave; những l&amp;aacute;ch xương vai c&amp;acirc;n đối, v&amp;agrave; ơn trời l&amp;agrave; cơ thể n&amp;agrave;y dường như được nu&amp;ocirc;i dưỡng một c&amp;aacute;ch điều độ. V&amp;agrave; cặp ngực ch&amp;iacute;nh l&amp;agrave; c&amp;uacute; quyết định nhất của to&amp;agrave;n bộ t&amp;ograve;a thi&amp;ecirc;n nhi&amp;ecirc;n n&amp;agrave;y, tiếp theo đ&amp;oacute; l&amp;agrave; những đường cong đầy gợi h&amp;igrave;nh mềm mại v&amp;agrave; quyến rũ.&lt;/p&gt;

&lt;p&gt;Mặc d&amp;ugrave; t&amp;ocirc;i chưa một lần nh&amp;igrave;n thấy trong đời.&lt;/p&gt;

&lt;p&gt;Nhưng kh&amp;ocirc;ng c&amp;ograve;n g&amp;igrave; nghi ngờ nữa, đ&amp;acirc;y ch&amp;iacute;nh l&amp;agrave; cơ thể của một c&amp;ocirc; g&amp;aacute;i.&lt;/p&gt;

&lt;p&gt;Con g&amp;aacute;i?&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i&amp;hellip;l&amp;agrave; con g&amp;aacute;i &amp;agrave;?&lt;/p&gt;

&lt;p&gt;Bỗng nhi&amp;ecirc;n bị bao bọc trong một cơ thể như thế n&amp;agrave;y chỉ trong chớp mắt, đầu &amp;oacute;c t&amp;ocirc;i như trống trơn.&lt;/p&gt;

&lt;p&gt;Rồi bất th&amp;igrave;nh l&amp;igrave;nh, t&amp;acirc;m tr&amp;iacute; t&amp;ocirc;i rối loạn.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;V&amp;agrave; t&amp;ocirc;i h&amp;eacute;t l&amp;ecirc;n.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Chị! &amp;nbsp;l&amp;agrave;m g&amp;igrave; m&amp;agrave; l&amp;acirc;u thế!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Yotsuba vừa n&amp;oacute;i vừa mở cửa v&amp;agrave;o ph&amp;ograve;ng, n&amp;eacute;m cho t&amp;ocirc;i một c&amp;aacute;i nh&amp;igrave;n đầy tr&amp;aacute;ch m&amp;oacute;c.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;S&amp;aacute;ng mai chị sẽ nấu bữa s&amp;aacute;ng cho&amp;rdquo;&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i n&amp;oacute;i thay cho lời xin lỗi. C&amp;ocirc; b&amp;eacute; Yotsuba, răng vẫn c&amp;ograve;n chưa thay hết, dường như c&amp;oacute; một c&amp;aacute;i uy hơn cả chị của n&amp;oacute;. T&amp;ocirc;i thầm nghĩ, c&amp;oacute; lẽ cần phải tỏ th&amp;aacute;i độ hối lỗi hơn th&amp;igrave; mới ổn. Ngồi v&amp;agrave;o b&amp;agrave;n, t&amp;ocirc;i loay hoay giữa đống đồ c&amp;aacute; nh&amp;acirc;n v&amp;agrave; mở nồi cơm ra để tự lấy phần cơm cho m&amp;igrave;nh. Lấy thế n&amp;agrave;y c&amp;oacute; nhiều qu&amp;aacute; kh&amp;ocirc;ng nhỉ? H&amp;igrave;nh như nhiều qu&amp;aacute; thật. M&amp;agrave; th&amp;ocirc;i kệ đi vậy, đang đ&amp;oacute;i m&amp;agrave;.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Itadakimasu.&amp;rdquo; (Xin mời d&amp;ugrave;ng bữa- tiếng Nhật, ND)&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Trứng r&amp;aacute;n c&amp;ugrave;ng s&amp;uacute;p ăn k&amp;egrave;m với nước tương v&amp;agrave; cơm, t&amp;ocirc;i h&amp;aacute; họng thật to để l&amp;agrave;m sao tọng được hết ch&amp;uacute;ng v&amp;agrave;o v&amp;agrave; nhai nhồm nho&amp;agrave;m. Ngon qu&amp;aacute;, hạnh ph&amp;uacute;c qu&amp;aacute;. Nhưng, h&amp;igrave;nh như kh&amp;ocirc;ng kh&amp;iacute; c&amp;oacute; vẻ kh&amp;ocirc;ng được b&amp;igrave;nh thường cho lắm, t&amp;ocirc;i thầm nghĩ khi bắt gặp &amp;aacute;nh mắt của mọi người.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Hum nay, ch&amp;aacute;u kh&amp;ocirc;ng b&amp;igrave;nh thường he?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Dạ?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Dường như nhận ra c&amp;aacute;i g&amp;igrave; đ&amp;oacute;, c&amp;oacute; lẽ l&amp;agrave; b&amp;agrave; t&amp;ocirc;i, nh&amp;igrave;n chằm chằm qu&amp;ecirc;n cả nhai cơm.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;H&amp;ocirc;m qua tại ch&amp;aacute;u đ&amp;oacute;i v&amp;atilde;i ra b&amp;agrave; ạ&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Con b&amp;eacute; Yotsuba nh&amp;igrave;n t&amp;ocirc;i cười cười.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Kh&amp;ocirc;ng được vừa ăn vừa n&amp;oacute;i như thế, v&amp;agrave; đừng d&amp;ugrave;ng những từ k&amp;igrave; quặc như thế&amp;rdquo;&lt;/p&gt;

&lt;p&gt;K&amp;igrave; quặc? &amp;Aacute;nh nh&amp;igrave;n của b&amp;agrave; như đang đ&amp;aacute;nh gi&amp;aacute; một c&amp;aacute;ch trịch thượng, khiến t&amp;ocirc;i c&amp;oacute; cảm gi&amp;aacute;c m&amp;igrave;nh vừa h&amp;agrave;nh động một c&amp;aacute;ch đầy ngu ngốc. Lại th&amp;ecirc;m con b&amp;eacute; Yotsuba đang nh&amp;igrave;n t&amp;ocirc;i một c&amp;aacute;ch đẩy ngờ vực.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;C&amp;aacute;i g&amp;igrave; k&amp;igrave; quặc hở b&amp;agrave;? C&amp;aacute;i g&amp;igrave; thế b&amp;agrave;?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Con b&amp;eacute; Yotsuba sốt sắng hỏi một c&amp;aacute;ch t&amp;ograve; m&amp;ograve;.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ping pong ping pong&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Bằng một &amp;acirc;m thanh đột ngột vọng v&amp;agrave;o, tiếng loa th&amp;ocirc;ng b&amp;aacute;o ở đ&amp;acirc;u đ&amp;oacute; bỗng vang l&amp;ecirc;n.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ch&amp;agrave;o buổi s&amp;aacute;ng, thưa mọi người&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Đ&amp;oacute; l&amp;agrave; giọng của chị c&amp;ocirc; bạn sayaka th&amp;acirc;n thiết của t&amp;ocirc;i, đang l&amp;agrave; nh&amp;acirc;n vi&amp;ecirc;n h&amp;agrave;nh ch&amp;iacute;nh của ph&amp;ograve;ng c&amp;ocirc;ng t&amp;aacute;c sinh hoạt v&amp;agrave; th&amp;ocirc;ng tin. Thị trấn Itomori n&amp;agrave;y, lượng cư d&amp;acirc;n chỉ tầm một ngh&amp;igrave;n năm trăm người, nhỏ tới độ m&amp;agrave; ai cũng biết nhau cả. N&amp;oacute;i cho đ&amp;uacute;ng l&amp;agrave; người n&amp;agrave;y biết người kia, v&amp;agrave; người kia quen người kia nữa.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Đ&amp;acirc;y l&amp;agrave; th&amp;ocirc;ng b&amp;aacute;o từ văn ph&amp;ograve;ng của thị trấn Itomori&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;Acirc;m thanh từ loa ph&amp;aacute;t ra, chậm r&amp;atilde;i v&amp;agrave; r&amp;otilde; r&amp;agrave;ng từng từ một: đ&amp;acirc;y- l&amp;agrave;- th&amp;ocirc;ng-b&amp;aacute;o-từ-thị-trấn&amp;hellip; &amp;Acirc;m thanh dội v&amp;agrave;o những d&amp;atilde;y n&amp;uacute;i bao bọc chốn n&amp;agrave;y v&amp;agrave; vọng ngược về, khiến cho bất cứ x&amp;oacute; xỉnh n&amp;agrave;o của c&amp;aacute;i thị trấn b&amp;eacute; tẹo n&amp;agrave;y đều c&amp;oacute; thể nghe r&amp;otilde; mồn một bản th&amp;ocirc;ng b&amp;aacute;o buổi s&amp;aacute;ng n&amp;agrave;y.&lt;/p&gt;

&lt;p&gt;Mỗi ng&amp;agrave;y hai lần, đ&amp;agrave;i ph&amp;aacute;t thanh sẽ b&amp;aacute;o những th&amp;ocirc;ng tin như t&amp;igrave;nh h&amp;igrave;nh thời tiết v&amp;agrave; tin tức đ&amp;aacute;ng ch&amp;uacute; &amp;yacute;. Mọi nh&amp;agrave; trong thị trấn n&amp;agrave;y đều được ph&amp;aacute;t một m&amp;aacute;y thu ph&amp;aacute;t thanh như thế n&amp;agrave;y, để v&amp;iacute; dụ c&amp;oacute; những th&amp;ocirc;ng b&amp;aacute;o kiểu kế hoạch n&amp;agrave;y nọ, hoặc b&amp;atilde;o tuyết, hoặc h&amp;ocirc;m qua c&amp;oacute; em b&amp;eacute; n&amp;agrave;o vừa ch&amp;agrave;o đời chẳng hạn. Thỉnh thoảng c&amp;oacute; thể l&amp;agrave; c&amp;aacute;o ph&amp;oacute; cho tang lễ của ai đ&amp;oacute;&amp;hellip; Chung quy lại, tất cả những sự kiện d&amp;ugrave; lớn hay nhỏ g&amp;igrave; đều được th&amp;ocirc;ng b&amp;aacute;o tr&amp;ecirc;n đ&amp;agrave;i ph&amp;aacute;t thanh n&amp;agrave;y.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ng&amp;agrave;y 20 th&amp;aacute;ng sau sẽ l&amp;agrave; ng&amp;agrave;y tuyển cử trưởng th&amp;ocirc;n của l&amp;agrave;ng, hội đồng bầu cử Itomori xin được th&amp;ocirc;ng b&amp;aacute;o&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Rột một c&amp;aacute;i.&lt;/p&gt;

&lt;p&gt;Tất cả ch&amp;igrave;m trong im lặng.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;C&amp;aacute;i loa vốn thiết kế để kh&amp;ocirc;ng ai thể tắt được. Nhưng b&amp;agrave; t&amp;ocirc;i th&amp;igrave; chỉ đơn giản r&amp;uacute;t phứt d&amp;acirc;y điện ra. B&amp;agrave; l&amp;atilde;o ngo&amp;agrave;i t&amp;aacute;m mươi tuổi, lu&amp;ocirc;n mặc &amp;aacute;o kimono truyền thống, &amp;iacute;t n&amp;oacute;i nhưng lu&amp;ocirc;n tiềm ẩn một c&amp;aacute;i g&amp;igrave; đ&amp;oacute; v&amp;ocirc; c&amp;ugrave;ng uy nghi&amp;ecirc;m v&amp;agrave; đ&amp;aacute;ng sợ, lu&amp;ocirc;n h&amp;agrave;nh động một c&amp;aacute;ch dứt kho&amp;aacute;t. &amp;ldquo;Ngầu thiệt&amp;rdquo;, vừa nghĩ t&amp;ocirc;i vừa vươn tay lấy c&amp;aacute;i điều khiển bật ti vi l&amp;ecirc;n. Tr&amp;aacute;i ngược với &amp;acirc;m thanh đ&amp;aacute;ng sợ của chị g&amp;aacute;i Sayaka, th&amp;igrave; c&amp;ocirc; g&amp;aacute;i dẫn chương tr&amp;igrave;nh của đ&amp;agrave;i NHK n&amp;agrave;y n&amp;oacute;i với một giọng rất dễ thương.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Đ&amp;acirc;y l&amp;agrave; một chuyến viếng thăm hiếm hoi của một h&amp;agrave;nh tr&amp;igrave;nh một ngh&amp;igrave;n hai trăm năm của ng&amp;ocirc;i sao chổi n&amp;agrave;y, v&amp;acirc;ng cuối th&amp;aacute;ng n&amp;agrave;y chỉ c&amp;ograve;n v&amp;agrave;i ng&amp;agrave;y nữa tất cả sẽ được chứng kiến một hiện tượng k&amp;igrave; vĩ nhất. JAXA với tư c&amp;aacute;ch cơ quan đầu ti&amp;ecirc;n chịu tr&amp;aacute;ch nhiệm về kh&amp;ocirc;ng gian đang ho&amp;agrave;n tất qu&amp;aacute; tr&amp;igrave;nh quan s&amp;aacute;t thi&amp;ecirc;n thể khi n&amp;oacute; tiếp cận gần tr&amp;aacute;i đất&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;M&amp;agrave;n h&amp;igrave;nh đang hiện l&amp;ecirc;n h&amp;igrave;nh ảnh của sao chổi Tiamate với d&amp;ograve;ng chữ nổi bật : chỉ c&amp;ograve;n 1 th&amp;aacute;ng nữa. Bỗng nhi&amp;ecirc;n kh&amp;ocirc;ng kh&amp;iacute; trở n&amp;ecirc;n im lặng, kh&amp;ocirc;ng ai n&amp;oacute;i với ai điều g&amp;igrave;, cả ba lặng lẽ ăn cho xong bữa cơm s&amp;aacute;ng.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Chị c&amp;oacute; thể th&amp;ocirc;i đi kh&amp;ocirc;ng?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Đột nhi&amp;ecirc;n, Yotsuba cất lời như thể hiểu ra c&amp;aacute;i nguy&amp;ecirc;n nh&amp;acirc;n của sự im lặng.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Chuyện của người lớn, đừng xen v&amp;agrave;o&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Đ&amp;uacute;ng vậy, đ&amp;oacute; l&amp;agrave; chuyện của người lớn. C&amp;aacute;i g&amp;igrave; m&amp;agrave; bầu với chả cử cơ chứ.&lt;/p&gt;

&lt;p&gt;Phi phi bi&amp;hellip;. Một tiếng động ngu ngốc n&amp;agrave;o đ&amp;oacute; từ đ&amp;acirc;u đ&amp;oacute; vang ra, h&amp;oacute;a ra đ&amp;oacute; l&amp;agrave; tiếng của c&amp;aacute;nh cửa nh&amp;agrave; đ&amp;atilde; qu&amp;aacute; cũ. &amp;ldquo;Con đi học đ&amp;acirc;y&amp;rdquo;, t&amp;ocirc;i cất lời lớn như để b&amp;aacute;o cho người b&amp;agrave; đang ngồi trong nh&amp;agrave;. T&amp;ocirc;i c&amp;ugrave;ng với Yotsuba, nhanh ch&amp;oacute;ng rời khỏi bậc thềm ph&amp;ograve;ng kh&amp;aacute;ch.&lt;/p&gt;

&lt;p&gt;Ph&amp;iacute;a b&amp;ecirc;n ngo&amp;agrave;i, tiếng chim h&amp;oacute;t r&amp;eacute;o rắt.&lt;/p&gt;

&lt;p&gt;Con đường d&amp;agrave;i ngoằn ngh&amp;egrave;o, tạo bởi những bậc thang bằng sỏi đ&amp;aacute; b&amp;aacute;m vắt vẻo tr&amp;ecirc;n những con dốc n&amp;uacute;i, tạo th&amp;agrave;nh những vệt bạc mờ mờ như những sợi chỉ đang ngoằn ngh&amp;egrave;o. &amp;Aacute;nh b&amp;igrave;nh minh chiếu rọi c&amp;agrave;ng l&amp;agrave;m cho những con đường đ&amp;oacute; trở n&amp;ecirc;n nổi bật. Những sợi chỉ đ&amp;oacute; cuối c&amp;ugrave;ng đều dẫn tới một c&amp;aacute;i hồ ở ch&amp;iacute;nh giữa thị trấn, được bao bọc một c&amp;aacute;ch cẩn thận lại bằng những d&amp;atilde;y n&amp;uacute;i tr&amp;ugrave;ng điệp, khiến khung cảnh trở n&amp;ecirc;n m&amp;ecirc; hoặc một c&amp;aacute;ch k&amp;igrave; lạ.&lt;/p&gt;

&lt;p&gt;Khung cảnh mở ra như trong phần mở đầu của một t&amp;aacute;c phẩm điện ảnh n&amp;agrave;o đ&amp;oacute; thời cổ xưa, c&amp;oacute; lẽ l&amp;agrave; từ thời Chi&amp;ecirc;u H&amp;ograve;a. V&amp;agrave; chị em ch&amp;uacute;ng t&amp;ocirc;i, đang sống ở đấy.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Mi-tsuhaaaaaa&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Ngay sau khi chia tay Yotsuba để đi về hướng trường học của m&amp;igrave;nh, một giọng n&amp;oacute;i bất th&amp;igrave;nh th&amp;igrave;nh vang l&amp;ecirc;n sau lưng t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;Đ&amp;oacute; l&amp;agrave; giọng n&amp;oacute;i của Teshi đang v&amp;ocirc; tư thả dốc bằng con xe đạp của m&amp;igrave;nh, ngồi ph&amp;iacute;a sau lấp l&amp;oacute; khu&amp;ocirc;n mặt của Saya, cũng l&amp;agrave; một người bạn th&amp;acirc;n thiết của t&amp;ocirc;i. C&amp;ocirc; b&amp;eacute; đang c&amp;agrave;u nh&amp;agrave;u với Tesshi &amp;ldquo;&amp;Ocirc;ng l&amp;uacute;c n&amp;agrave;o cũng lao xuống nhanh qu&amp;aacute;, nguy hiểm lắm&amp;rdquo; v&amp;agrave; cậu sẽ đ&amp;aacute;p lại kiểu &amp;ldquo;cứ ngồi im đi&amp;rdquo; hoặc l&amp;agrave; &amp;ldquo;tại v&amp;igrave; nặng qu&amp;aacute; đ&amp;oacute; m&amp;agrave;&amp;rdquo;. V&amp;agrave; c&amp;aacute;i khung cảnh n&amp;agrave;y, hầu như lặp đi lặp lại mỗi ng&amp;agrave;y.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo; Hai người, th&amp;acirc;n thiết gh&amp;ecirc; đ&amp;oacute; nhỉ&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Th&amp;acirc;n c&amp;aacute;i con khỉ mốc&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Cả hai đồng thanh phản b&amp;aacute;c lại. C&amp;aacute;i kiểu phủ định một c&amp;aacute;ch rất nghi&amp;ecirc;m t&amp;uacute;c đ&amp;oacute;, chẳng hiểu v&amp;igrave; sao l&amp;agrave;m cho t&amp;ocirc;i bật cười. Cả ba ch&amp;uacute;ng t&amp;ocirc;i l&amp;agrave; bạn th&amp;acirc;n của nhau hơn mười năm nay. V&amp;agrave; l&amp;uacute;c n&amp;agrave;o, ch&amp;uacute;ng t&amp;ocirc;i cũng gặp nhau như thế n&amp;agrave;y, v&amp;agrave; bắt đầu một ng&amp;agrave;y mới như vậy. Mặc d&amp;ugrave; c&amp;oacute; l&amp;uacute;c t&amp;ocirc;i nghĩ, thực ra ch&amp;uacute;ng t&amp;ocirc;i cũng chẳng tới mức hợp nhau như vậy.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Mitsuha, h&amp;ocirc;m nay rốt cuộc b&amp;agrave; cũng buộc t&amp;oacute;c đ&amp;agrave;ng ho&amp;agrave;ng trở lại.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Saya, vẫn đang y&amp;ecirc;n vị ở y&amp;ecirc;n &amp;nbsp;sau xe tận hưởng cảm gi&amp;aacute;c thả dốc, liếc nh&amp;igrave;n d&amp;acirc;y buộc t&amp;oacute;c của t&amp;ocirc;i v&amp;agrave; n&amp;oacute;i một c&amp;aacute;ch kh&amp;oacute; hiểu.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Sao, t&amp;oacute;c th&amp;igrave; sao cơ?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;M&amp;agrave; n&amp;oacute;i như vậy, th&amp;igrave; h&amp;igrave;nh như s&amp;aacute;ng nay, t&amp;ocirc;i cũng được Yotsuba n&amp;oacute;i về c&amp;aacute;i g&amp;igrave; đ&amp;oacute; cũng li&amp;ecirc;n quan tới t&amp;oacute;c tai, chẳng lẽ h&amp;ocirc;m qua c&amp;oacute; chuyện g&amp;igrave; rất buồn cười đ&amp;atilde; xảy ra sao? T&amp;ocirc;i đang cố gắng nhớ lại những k&amp;iacute; ức của ng&amp;agrave;y h&amp;ocirc;m qua&amp;hellip;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ừ, đừng n&amp;oacute;i l&amp;agrave; b&amp;agrave; đang bị b&amp;agrave; ngoại trấn b&amp;ugrave;a nh&amp;eacute;?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Trấn b&amp;ugrave;a?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Nếu thế th&amp;igrave; v&amp;atilde;i rồi&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Hả&amp;rdquo; Đột nhi&amp;ecirc;n t&amp;ocirc;i kh&amp;ocirc;ng biết phải d&amp;ugrave;ng từ ngữ n&amp;agrave;o để trả lời cả. C&amp;ograve;n Saya-chan th&amp;igrave; đang lộ vẻ cực k&amp;igrave; quan t&amp;acirc;m tới mức c&amp;oacute; phần hơi lo lắng.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Tại sao cậu lại như đang giấu diếm chuyện g&amp;igrave; vậy? Chắc chắn l&amp;agrave; cậu đang bị stress rồi&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Stress?&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Khoan đ&amp;atilde;, hai người đang n&amp;oacute;i chuyện g&amp;igrave; vậy?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Tự nhi&amp;ecirc;n cả hai bỗng trở n&amp;ecirc;n lo lắng cho t&amp;ocirc;i, ng&amp;agrave;y h&amp;ocirc;m qua, thực sự t&amp;ocirc;i kh&amp;ocirc;ng thể nhớ r&amp;otilde; r&amp;agrave;ng lắm, nhưng chắc chắn đ&amp;oacute; l&amp;agrave; một ng&amp;agrave;y rất b&amp;igrave;nh thường. T&amp;ocirc;i đoan chắc l&amp;agrave; như vậy.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;V&amp;agrave; kh&amp;ocirc;ng c&amp;oacute; g&amp;igrave; hơn điều đ&amp;oacute;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Những nghi vấn trong đầu t&amp;ocirc;i lập tức bị x&amp;oacute;a tan bởi &amp;acirc;m thanh được khuếch đại vang l&amp;ecirc;n từ xa. T&amp;ocirc;i ngước nh&amp;igrave;n vị tr&amp;iacute; ph&amp;aacute;t ra nguồn &amp;acirc;m, đ&amp;oacute; l&amp;agrave; t&amp;ograve;a nh&amp;agrave; h&amp;agrave;nh ch&amp;iacute;nh của thị trấn. Giữa b&amp;atilde;i đậu xe c&amp;oacute; phần rộng một c&amp;aacute;ch thừa th&amp;atilde;i, người ta đ&amp;atilde; dựng l&amp;ecirc;n một c&amp;aacute;i bậc cao v&amp;agrave; đặt tr&amp;ecirc;n đ&amp;oacute; một c&amp;aacute;i micro c&amp;ugrave;ng hai d&amp;agrave;n loa. Đứng giữa s&amp;acirc;n khấu ấy, l&amp;agrave; một người cao lớn c&amp;oacute; khu&amp;ocirc;n mặt nghi&amp;ecirc;m nghị. Đ&amp;oacute; l&amp;agrave; cha t&amp;ocirc;i. &amp;Ocirc;ng mặc bộ vest nghi&amp;ecirc;m chỉnh, ph&amp;iacute;a tr&amp;ecirc;n t&amp;uacute;i &amp;aacute;o ngực đ&amp;iacute;nh ngay ngắn một tấm thẻ ghi r&amp;otilde; r&amp;agrave;ng t&amp;ecirc;n của &amp;ocirc;ng: Miyamizu Toshiki. &amp;Ocirc;ng đang diễn thuyết để tranh chức trưởng thị trấn cho lần bầu cử n&amp;agrave;y.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Hơn tất cả, t&amp;ocirc;i muốn tiếp tục ph&amp;aacute;t triển những nghề truyền thống của l&amp;agrave;ng, v&amp;agrave; để l&amp;agrave;m được điều đ&amp;oacute;, cần phải hợp t&amp;aacute;c x&amp;atilde; h&amp;oacute;a to&amp;agrave;n bộ những vật tư của l&amp;agrave;ng. V&amp;agrave; cần phải thực hiện điều đ&amp;oacute; đầu ti&amp;ecirc;n, để c&amp;oacute; thể tạo ra sự ổn định cho ph&amp;aacute;t triển. Với tư c&amp;aacute;ch l&amp;agrave; trưởng thị trấn của nhiệm k&amp;igrave; trước, t&amp;ocirc;i đ&amp;atilde; cố gắng hết sức để ph&amp;aacute;t triển l&amp;agrave;ng cho tới l&amp;uacute;c n&amp;agrave;y, nhưng t&amp;ocirc;i vẫn muốn tiếp tục tiến xa hơn, để cho tất cả trẻ con cũng như người gi&amp;agrave; trong l&amp;agrave;ng c&amp;oacute; được cuộc sống ổn định ấm no hơn. Với sứ mệnh đ&amp;oacute;, t&amp;ocirc;i sẽ tiếp tục đổi mới cũng như củng cố năng lực của m&amp;igrave;nh&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;B&amp;agrave;i diễn thuyết đầy thuyết phục. Giống như những ch&amp;iacute;nh trị gia vẫn thường xuất hiện tr&amp;ecirc;n truyền h&amp;igrave;nh vậy. Nhưng đ&amp;aacute;ng tiếc, khung cảnh lại kh&amp;ocirc;ng được như &amp;yacute; lắm khi thay v&amp;igrave; l&amp;agrave; những th&amp;iacute;nh giả, th&amp;igrave; xung quanh s&amp;acirc;n khấu lại bị bao v&amp;acirc;y bởi c&amp;acirc;y cối, n&amp;uacute;i rừng v&amp;agrave; ruộng l&amp;uacute;a. T&amp;ocirc;i chẳng mấy hứng th&amp;uacute; lắm, bởi kiểu g&amp;igrave; th&amp;igrave; cha t&amp;ocirc;i cũng sẽ t&amp;aacute;i đắc cử. Nhưng t&amp;ocirc;i cố gắng giấu c&amp;aacute;i sự ch&amp;aacute;n chường đ&amp;oacute; đi.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;Ocirc; k&amp;igrave;a, miyamizu-san&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;hellip;.Ch&amp;agrave;o buổi s&amp;aacute;ng&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Cực k&amp;igrave; tệ hại rồi.&lt;/p&gt;

&lt;p&gt;Một nh&amp;oacute;m ba người bạn học c&amp;ugrave;ng trường từ đ&amp;acirc;u xuất hiện cất tiếng gọi t&amp;ocirc;i. Cho d&amp;ugrave; ở trong trường cao trung m&amp;agrave; vốn chẳng c&amp;oacute; mấy học sinh, nhưng ch&amp;uacute;ng t&amp;ocirc;i vẫn chơi theo từng nh&amp;oacute;m ri&amp;ecirc;ng biệt, v&amp;agrave; mỗi khi c&amp;oacute; chuyện g&amp;igrave; đ&amp;oacute; li&amp;ecirc;n quan tới những quyết s&amp;aacute;ch của trong l&amp;agrave;ng m&amp;agrave; vốn kh&amp;ocirc;ng được đồng thuận, th&amp;igrave; đ&amp;aacute;m học sinh c&amp;ugrave;ng trường lại n&amp;eacute;m c&amp;aacute;i nh&amp;igrave;n đầy vẻ o&amp;aacute;n gh&amp;eacute;t v&amp;agrave;o đ&amp;aacute;m bọn t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Về vấn đề trưởng th&amp;ocirc;n, v&amp;agrave; c&amp;aacute;c cơ sở th&amp;igrave;&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Một người đ&amp;agrave;n &amp;ocirc;ng sau khi chăm ch&amp;uacute; nghe lời diễn thuyết của cha t&amp;ocirc;i bỗng nhi&amp;ecirc;n l&amp;ecirc;n tiếng. &amp;Ocirc;ng ta ch&amp;iacute;nh l&amp;agrave; cha của Tessi, đang đứng b&amp;ecirc;n cạnh cha t&amp;ocirc;i v&amp;agrave; cười với một vẻ mặt đầy đắc &amp;yacute;. Tr&amp;ecirc;n t&amp;uacute;i &amp;aacute;o &amp;ocirc;ng đ&amp;iacute;nh một dải ruy băng nhỏ viết &amp;ldquo;ủng hộ ng&amp;agrave;i&amp;nbsp; Miyamizu&amp;rdquo;. Từ đằng xa, ch&amp;uacute;ng t&amp;ocirc;i vẫn tiếp tục quan s&amp;aacute;t b&amp;agrave;i ph&amp;aacute;t biểu của cha Tessi.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Mấy c&amp;ocirc; cậu ở ph&amp;iacute;a kia giờ n&amp;agrave;y c&amp;ograve;n tụ tập l&amp;agrave;m g&amp;igrave; vậy? Kh&amp;ocirc;ng đi học đi&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i giật th&amp;oacute;t cả m&amp;igrave;nh khi bỗng nhi&amp;ecirc;n bị ch&amp;uacute; &amp;yacute;. T&amp;ocirc;i kh&amp;ocirc;ng d&amp;aacute;m nh&amp;igrave;n về ph&amp;iacute;a hội trường nữa, giả tảng như kh&amp;ocirc;ng nghe thấy v&amp;agrave; t&amp;igrave;m c&amp;aacute;ch rảo bước đi thật nhanh để tr&amp;aacute;nh xa khỏi những c&amp;aacute;i nh&amp;igrave;n đang ngo&amp;aacute;i lại t&amp;igrave;m hiểu nguy&amp;ecirc;n nh&amp;acirc;n của c&amp;acirc;u n&amp;oacute;i tr&amp;ecirc;n loa ph&amp;oacute;ng thanh vừa rồi. Saya-chan, tr&amp;ocirc;ng c&amp;oacute; vẻ đang v&amp;ocirc; c&amp;ugrave;ng bối rối vội v&amp;atilde; chạy theo t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Mitsuha&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Đột nhi&amp;ecirc;n c&amp;oacute; tiếng gọi t&amp;ecirc;n t&amp;ocirc;i vang l&amp;ecirc;n, trong một khoảnh khắc tim t&amp;ocirc;i như ngừng đập, kh&amp;ocirc;ng thể tin nổi, nguời cha đang diễn thuyết say sưa bỗng nhi&amp;ecirc;n hạ micro xuống v&amp;agrave; cất giọng hướng về ph&amp;iacute;a ch&amp;uacute;ng t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Mitsuha, kh&amp;ocirc;ng được thả ngực m&amp;agrave; chạy như thế&amp;rdquo;&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i đỏ mặt t&amp;iacute;a tai, kh&amp;ocirc;ng hiểu sao, tự nhi&amp;ecirc;n nước mắt t&amp;ocirc;i lại tr&amp;agrave;o ra.&lt;/p&gt;

&lt;p&gt;Thật l&amp;agrave; tồi tệ. Bằng những sải bước thật d&amp;agrave;i, t&amp;ocirc;i cố gắng tho&amp;aacute;t khỏi chốn đấy. &amp;ldquo;Với con g&amp;aacute;i m&amp;agrave; nghi&amp;ecirc;m khắc dữ ta&amp;rdquo;, &amp;ldquo;Qủa đ&amp;uacute;ng kh&amp;iacute; chất của nh&amp;agrave; l&amp;atilde;nh đạo đ&amp;oacute; chứ&amp;rdquo;. Những c&amp;acirc;u b&amp;igrave;nh phẩm đại loại như vậy cứ tr&amp;ocirc;i qua tai khi t&amp;ocirc;i vụt qua đ&amp;aacute;m đ&amp;ocirc;ng đ&amp;oacute;. Dường như đ&amp;aacute;m bạn cũng đang x&amp;igrave; x&amp;agrave;o b&amp;agrave;n t&amp;aacute;n đằng sau lưng: &amp;ldquo;&amp;Ocirc;i ch&amp;agrave;, tội nghiệp nhỏ qu&amp;aacute;&amp;rdquo;.&lt;/p&gt;

&lt;p&gt;Thật tồi tệ.&lt;/p&gt;

&lt;p&gt;Tiếng nhạc cổ động r&amp;eacute;o rắt từ chỗ đ&amp;aacute;m đ&amp;ocirc;ng dần dần lắng xuống, v&amp;agrave; cho tới khi mọi &amp;acirc;m thanh trở n&amp;ecirc;n lặng ngắt, th&amp;igrave; t&amp;ocirc;i nhận ra ng&amp;ocirc;i l&amp;agrave;ng n&amp;agrave;y chỉ l&amp;agrave; một nơi kh&amp;ocirc;ng đ&amp;aacute;ng sống.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Cạch cạch cạch&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;Acirc;m thanh từ tấm bảng đen lại vang l&amp;ecirc;n, h&amp;igrave;nh như tr&amp;ecirc;n đ&amp;oacute; đang viết một b&amp;agrave;i thơ, hay đoản ca g&amp;igrave; đ&amp;oacute;.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Xin ai đừng vấn hỏi, t&amp;ocirc;i đang ở chốn n&amp;agrave;o&lt;/p&gt;

&lt;p&gt;Lặng dưới cơn mưa ng&amp;acirc;u, chờ người thương m&amp;ograve;n mỏi.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Chữ ai, đ&amp;acirc;y l&amp;agrave; một từ cổ c&amp;aacute;c em nh&amp;eacute;, n&amp;oacute; ch&amp;iacute;nh bắt nguồn từ chữ chạng vạng. C&amp;aacute;c em biết thời điểm chạng vạng chứ?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; gi&amp;aacute;o Yuki cất giọng du dương như vậy v&amp;agrave; hỏi ch&amp;uacute;ng t&amp;ocirc;i, vừa hỏi c&amp;ocirc; vừa viết thật to chữ &amp;ldquo;Xin ai&amp;rdquo; l&amp;ecirc;n bảng.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;L&amp;agrave; thời điểm m&amp;agrave; kh&amp;ocirc;ng hẳn l&amp;agrave; trời đ&amp;atilde; tối, cũng kh&amp;ocirc;ng phải l&amp;agrave; trời đ&amp;atilde; s&amp;aacute;ng. Thời điểm v&amp;ograve;ng lu&amp;acirc;n hồi của con người trở th&amp;agrave;nh một nhịp. Người đ&amp;agrave;n &amp;ocirc;ng ấy, đ&amp;atilde; khiến Ai trở n&amp;ecirc;n kh&amp;ocirc;ng thể hiểu được nỗi niềm. Đ&amp;oacute; l&amp;agrave; thời điểm m&amp;agrave; c&amp;oacute; thể con người sẽ gặp những thứ k&amp;igrave; lạ, như hồn ma người chết, hay y&amp;ecirc;u qu&amp;aacute;i. Ch&amp;iacute;nh v&amp;igrave; thế đ&amp;oacute; l&amp;agrave; thời điểm &amp;ldquo;K&amp;igrave; ngộ&amp;rdquo;. Xưa hơn nữa, cũng c&amp;oacute; những người gọi đ&amp;acirc;y l&amp;agrave; thời gian của mộ, hay biến &amp;acirc;m đi một ch&amp;uacute;t.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Yuki-chan sensei, lần n&amp;agrave;y c&amp;ocirc; viết th&amp;ecirc;m nhiều dị bản của chữ h&amp;aacute;n &amp;ldquo; Chạng vạng&amp;rdquo; l&amp;ecirc;n bảng đen. Chữ g&amp;igrave; thế n&amp;agrave;y? T&amp;ocirc;i bất gi&amp;aacute;c tự hỏi.&lt;/p&gt;

&lt;p&gt;Bỗng c&amp;oacute; tiếng ai đ&amp;oacute; cất l&amp;ecirc;n từ dưới.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Seiseiii, l&amp;agrave; c&amp;acirc;u hỏi ạ. Vậy c&amp;oacute; c&amp;aacute;i gọi l&amp;agrave; thời gian &amp;ldquo;đi nửa&amp;rdquo; kh&amp;ocirc;ng ạ?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Dĩ nhi&amp;ecirc;n l&amp;agrave; t&amp;ocirc;i hiểu c&amp;acirc;u hỏi đ&amp;oacute;, từ khi c&amp;ograve;n nhỏ, t&amp;ocirc;i đ&amp;atilde; được dạy khi n&amp;oacute;i về buổi chiều, tức l&amp;agrave; thời gian đ&amp;atilde; đi được &amp;ldquo;một nửa&amp;rdquo;. Yuki sensei nghe xong c&amp;acirc;u hỏi, c&amp;ocirc; bỗng nở một nụ cười dịu d&amp;agrave;ng v&amp;agrave; kh&amp;oacute; hiểu.&lt;/p&gt;

&lt;p&gt;V&amp;agrave; n&amp;oacute;i tới kh&amp;oacute; hiểu, cũng quả l&amp;agrave; k&amp;igrave; lạ khi ở l&amp;agrave;ng qu&amp;ecirc; hẻo l&amp;aacute;nh n&amp;agrave;y, trong ng&amp;ocirc;i trường b&amp;eacute; x&amp;iacute;u n&amp;agrave;y, lại c&amp;oacute; một người dạy văn cổ điển xinh đẹp như Yuki sensei.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Đ&amp;oacute; l&amp;agrave; từ địa phương em ạ. Ở đ&amp;acirc;y, từ những người cao tuổi, c&amp;ograve;n rất rất nhiều từ địa phương được lưu truyền lại.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Hiển nhi&amp;ecirc;n rồi, v&amp;igrave; đ&amp;acirc;y l&amp;agrave; v&amp;ugrave;ng qu&amp;ecirc; m&amp;agrave;&amp;rdquo;. C&amp;oacute; ai đ&amp;oacute;&amp;nbsp;bỗng n&amp;oacute;i leo . K&amp;eacute;o theo một tr&amp;agrave;ng cười rần rần của cả lớp.&lt;/p&gt;

&lt;p&gt;Đ&amp;uacute;ng thật vậy, thỉnh thoảng b&amp;agrave; t&amp;ocirc;i cũng n&amp;oacute;i nhiều khi khiến t&amp;ocirc;i phải thốt l&amp;ecirc;n: tiếng g&amp;igrave; vậy? Một thứ &amp;acirc;m thanh c&amp;oacute; t&amp;iacute;nh chất ng&amp;ocirc;n ngữ để truyền đạt &amp;agrave;? Thỉnh thoảng b&amp;agrave; t&amp;ocirc;i c&amp;ograve;n thậm xưng &amp;ldquo;l&amp;atilde;o&amp;rdquo; với đ&amp;aacute;m trẻ con nữa mới buồn cười. Vẩn vơ những suy nghĩ như thế trong đầu, t&amp;ocirc;i liếc nh&amp;igrave;n xuống trang vở. Trang giấy trắng kh&amp;ocirc;ng hiểu sao lại bị lấp bởi d&amp;ograve;ng chữ to v&amp;agrave; th&amp;ocirc;, như thể ai đ&amp;oacute; kh&amp;ocirc;ng phải t&amp;ocirc;i viết l&amp;ecirc;n.&lt;/p&gt;

&lt;p&gt;&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;

&lt;p&gt;&lt;em&gt;&lt;strong&gt;&amp;ldquo;Cậu l&amp;agrave; ai vậy?&amp;rdquo;&lt;/strong&gt;&lt;/em&gt;&lt;/p&gt;

&lt;p&gt;Ơ&amp;hellip;&lt;/p&gt;

&lt;p&gt;C&amp;aacute;i g&amp;igrave; thế n&amp;agrave;y?&lt;/p&gt;

&lt;p&gt;B&amp;uacute;t t&amp;iacute;ch n&amp;agrave;y ho&amp;agrave;n to&amp;agrave;n kh&amp;ocirc;ng phải l&amp;agrave; do t&amp;ocirc;i viết, v&amp;agrave; trong l&amp;uacute;c đăm chi&amp;ecirc;u suy nghĩ, tiếng l&amp;agrave;o r&amp;agrave;o xung quanh t&amp;ocirc;i dường như được k&amp;eacute;o d&amp;atilde;n ra từ nơi rất xa x&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;Ơ lạ nhỉ, &amp;ldquo;Cậu l&amp;agrave; ai&amp;hellip;&amp;rdquo; nghĩa l&amp;agrave; g&amp;igrave; ?&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;hellip;. Tiếp theo, xin mời Miyamizu&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Dạ v&amp;acirc;ng&amp;rdquo;&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i lập cập đứng l&amp;ecirc;n ng&amp;aacute;o ng&amp;aacute;c, khiến Yuki-sensei nh&amp;igrave;n với một vẻ mặt k&amp;igrave; lạ, rồi đ&amp;agrave;nh nhắc t&amp;ocirc;i h&amp;atilde;y đọc nốt những g&amp;igrave; c&amp;ograve;n lại ở trang ch&amp;iacute;n mươi t&amp;aacute;m.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;N&amp;agrave;y Miyamizu-san, h&amp;ocirc;m nay em c&amp;oacute; nhớ t&amp;ecirc;n em l&amp;agrave; g&amp;igrave; kh&amp;ocirc;ng vậy?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Ngay lập tức cả lớp cười nghi&amp;ecirc;ng ngả. Ha&amp;hellip;Hả&amp;hellip;? C&amp;aacute;i qu&amp;aacute;i g&amp;igrave; vậy? C&amp;oacute; chuyện g&amp;igrave; vậy?&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;B&amp;agrave; kh&amp;ocirc;ng nhớ g&amp;igrave; &amp;agrave;?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;ừa&amp;hellip; Kh&amp;ocirc;ng nhớ g&amp;igrave; cả&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Thật kh&amp;ocirc;ng đ&amp;oacute;?&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;T&amp;ocirc;i bảo rồi c&amp;ograve;n g&amp;igrave;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Trả lời một c&amp;aacute;ch kh&amp;oacute; chịu, t&amp;ocirc;i uống một ngụm nước tr&amp;aacute;i c&amp;acirc;y. Ồ, ngon thế? Nước g&amp;igrave; vậy, nước chuối &amp;agrave;? T&amp;ocirc;i nh&amp;igrave;n c&amp;aacute;i lon nước. L&amp;uacute;c n&amp;agrave;y, Saya-chan nh&amp;igrave;n t&amp;ocirc;i như thể nh&amp;igrave;n một thứ đồ g&amp;igrave; đ&amp;oacute; ngộ nghĩnh lắm.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;L&amp;agrave; tại v&amp;igrave;, b&amp;agrave; h&amp;ocirc;m qua, qu&amp;ecirc;n cả b&amp;agrave;n m&amp;igrave;nh ngồi, qu&amp;ecirc;n lu&amp;ocirc;n cả tủ gi&amp;agrave;y của m&amp;igrave;nh nữa. T&amp;oacute;c tai th&amp;igrave; b&amp;ugrave; x&amp;ugrave; như kiểu từ tr&amp;ecirc;n giường b&amp;agrave; chạy thẳng tới trường lu&amp;ocirc;n vậy. Khăn qu&amp;agrave;ng cổ thậm ch&amp;iacute; c&amp;ograve;n kh&amp;ocirc;ng thắt lu&amp;ocirc;n nữa. V&amp;agrave; b&amp;agrave; cứ ng&amp;aacute;o ngơ như thế suốt.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i cố tưởng tượng ra c&amp;aacute;i bộ dạng ấy như m&amp;ocirc; tả.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Hả&amp;hellip;.trời&amp;hellip;, c&amp;aacute;i đ&amp;oacute; l&amp;agrave; thật &amp;agrave;?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;Ocirc;i c&amp;aacute;i g&amp;igrave;, chả lẽ k&amp;iacute; ức của Mitsuha ng&amp;agrave;y h&amp;ocirc;m qua bị ai đ&amp;oacute; x&amp;oacute;a mất rồi &amp;agrave;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i hoang mang cố gắng nhớ lại. R&amp;otilde; r&amp;agrave;ng l&amp;agrave; c&amp;oacute; c&amp;aacute;i g&amp;igrave; đ&amp;oacute; kh&amp;ocirc;ng b&amp;igrave;nh thường. Tất cả k&amp;iacute; ức ng&amp;agrave;y h&amp;ocirc;m qua t&amp;ocirc;i tuyệt nhi&amp;ecirc;n kh&amp;ocirc;ng thể nhớ được g&amp;igrave; cả.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;Agrave;, m&amp;agrave; đ&amp;oacute; l&amp;agrave; th&amp;agrave;nh phố n&amp;agrave;o ấy nhỉ?&lt;/p&gt;

&lt;p&gt;Một c&amp;aacute;i g&amp;igrave; đ&amp;oacute; tho&amp;aacute;ng qua&amp;hellip;Một cậu con trai?&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i cố gắng lần theo những k&amp;iacute; ức. Nhưng tiếng chu&amp;ocirc;ng v&amp;agrave;o giờ đ&amp;atilde; vang l&amp;ecirc;n.&lt;/p&gt;

&lt;p&gt;Ch&amp;uacute;ng t&amp;ocirc;i mau ch&amp;oacute;ng dọn những hộp nước tr&amp;aacute;i c&amp;acirc;y b&amp;agrave;y biện ra từ l&amp;uacute;c n&amp;atilde;y.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ừ, như kiểu t&amp;ocirc;i c&amp;oacute; cảm giấc l&amp;agrave; t&amp;ocirc;i c&amp;oacute; một giấc mơ giống nhau vậy. Đ&amp;oacute; kiểu như, cuộc sống của một nam sinh, ừ, mơ, m&amp;agrave; t&amp;ocirc;i cũng kh&amp;ocirc;ng thể nhớ được&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;hellip;.Uhm, t&amp;ocirc;i hiểu rồi&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Đột nhi&amp;ecirc;n Tessie la l&amp;ecirc;n một tiếng thật lớn khiến t&amp;ocirc;i giật nảy người. Cậu ta d&amp;iacute; cuốn tạp ch&amp;iacute; Move, cuốn tạp ch&amp;iacute; đề t&amp;agrave;i về những điều huyền b&amp;iacute; m&amp;agrave; hắn đang say sưa đọc từ n&amp;atilde;y v&amp;agrave;o s&amp;aacute;t mũi ch&amp;uacute;ng t&amp;ocirc;i. Hắn vừa n&amp;oacute;i, nước bọt bay l&amp;egrave;o ph&amp;egrave;o:&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Đ&amp;eacute;y gọi l&amp;agrave; k&amp;iacute; ức từ tiền kiếp . C&amp;eacute;i n&amp;agrave;y, kh&amp;ocirc;ng pheỉ l&amp;agrave; khoa học. N&amp;oacute;i seo cho dễ hỉu nhỉ? Dựa v&amp;agrave;o giải th&amp;iacute;ch về thuyết đa thế giới của Elbert, tui sẽ cố gắng thuyết minh cho dễ hiểu về sự kế tục của &amp;yacute; thức&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Th&amp;ocirc;i &amp;ocirc;ng im d&amp;ugrave;m t&amp;ocirc;i được kh&amp;ocirc;ng?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Saya- chan ngay lập tức quặc lại Tessie. C&amp;ograve;n t&amp;ocirc;i, chợt nhận ra điều g&amp;igrave; đ&amp;oacute;, cũng la l&amp;ecirc;n: &amp;ldquo;Chẳng lẽ &amp;ocirc;ng ch&amp;iacute;nh l&amp;agrave; người viết bậy l&amp;ecirc;n vở của t&amp;ocirc;i &amp;agrave; ?&amp;rdquo;.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Viết..g&amp;igrave; cơ?&amp;rdquo; Tessie nh&amp;iacute;u m&amp;agrave;y hỏi lại.&lt;/p&gt;

&lt;p&gt;Chẳng lẽ kh&amp;ocirc;ng phải &amp;agrave;? Thực ra Tessie cũng chẳng phải l&amp;agrave; loại hay b&amp;agrave;y tr&amp;ograve; nghịch ngợm với người kh&amp;aacute;c như vậy.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;Agrave; kh&amp;ocirc;ng, kh&amp;ocirc;ng c&amp;oacute; g&amp;igrave; đ&amp;acirc;u&amp;rdquo; T&amp;ocirc;i sửa lại.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;G&amp;igrave; chứ, tại sao lại l&amp;agrave; viết bậy, b&amp;agrave; nghi ngờ t&amp;ocirc;i chuyện g&amp;igrave; sao?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;T&amp;ocirc;i đ&amp;atilde; bảo l&amp;agrave; kh&amp;ocirc;ng c&amp;oacute; g&amp;igrave; rồi&amp;rdquo;.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ờ, Mitsuha tồi tệ qu&amp;aacute; nh&amp;eacute;. Sayaka nghe g&amp;igrave; kh&amp;ocirc;ng? T&amp;ocirc;i cần được bảo vệ, gọi t&amp;ocirc;i cảnh s&amp;aacute;t, cảnh s&amp;aacute;t. M&amp;agrave; trường hợp n&amp;agrave;y, phải nhờ luật sư th&amp;igrave; đ&amp;uacute;ng hơn nhỉ? Theo b&amp;agrave; th&amp;igrave; n&amp;ecirc;n như thế n&amp;agrave;o?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Phớt lờ Tessie đang cố gắng pha tr&amp;ograve; nhạt thếch, Sayaka nh&amp;igrave;n chăm chăm v&amp;agrave;o ngọn cỏ ph&amp;iacute;a trước chỗ ch&amp;uacute;ng t&amp;ocirc;i ngồi v&amp;agrave; kết luận: &amp;ldquo;Nhưng đ&amp;uacute;ng l&amp;agrave; lạ thật ha, chẳng lẽ b&amp;agrave; thực sự bị stress sao?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i cũng cảm thấy điều đ&amp;oacute;. Cố gắng tin v&amp;agrave;o những lời của hai người bạn. L&amp;uacute;c n&amp;agrave;y, Tessie lại trốn m&amp;igrave;nh v&amp;agrave;o quyển tạp ch&amp;iacute; về những điều huyền b&amp;iacute;, v&amp;agrave; tỏ vẻ chẳng c&amp;oacute; chuyện g&amp;igrave; đ&amp;atilde; xảy ra với t&amp;ocirc;i cả. Kh&amp;ocirc;ng bao giờ cố l&amp;agrave;m mọi thứ trở n&amp;ecirc;n tồi tệ hơn, lại l&amp;agrave; ưu điểm của hắn.&lt;/p&gt;

&lt;p&gt;&amp;ldquo; Kết luận, nhất định b&amp;agrave; đ&amp;atilde; bị stress. Mitsuha, dạo gần đ&amp;acirc;y mấy chuyện đau đầu nhiều lắm hả?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Ờ đ&amp;uacute;ng vậy. Nhiều lắm. Kh&amp;ocirc;ng chỉ mỗi c&amp;aacute;i việc bầu cử kia, mỗi tối c&amp;ograve;n phải chuẩn bị cho mấy thủ tục cho lễ lạt. Trong ng&amp;ocirc;i l&amp;agrave;ng n&amp;agrave;y, n&amp;oacute;i g&amp;igrave; th&amp;igrave; n&amp;oacute;i, cha t&amp;ocirc;i cũng l&amp;agrave; người đứng đầu, b&amp;agrave; t&amp;ocirc;i th&amp;igrave; l&amp;agrave; thần chủ của ng&amp;ocirc;i ch&amp;ugrave;a linh thi&amp;ecirc;ng duy nhất ở đ&amp;acirc;y. T&amp;ocirc;i ấp hai tay v&amp;agrave;o mặt đăm chi&amp;ecirc;u suy nghĩ.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;Ocirc;i, t&amp;ocirc;i chỉ muốn mau ch&amp;oacute;ng tốt nghiệp rồi l&amp;ecirc;n Tokyo th&amp;ocirc;i. Rời khỏi ng&amp;ocirc;i l&amp;agrave;ng qu&amp;aacute; chật hẹp, qu&amp;aacute; lệ thuộc v&amp;agrave;o n&amp;ocirc;ng nghiệp n&amp;agrave;y&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Kaya-san, bằng một biểu cảm như rất rất hiểu v&amp;agrave; th&amp;ocirc;ng cảm điều đ&amp;oacute;, sốt sắng gật đầu với t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Nh&amp;agrave; t&amp;ocirc;i cũng kh&amp;aacute; hơn g&amp;igrave; đ&amp;acirc;u, ba đời gia đ&amp;igrave;nh đều l&amp;agrave;m nữ ph&amp;aacute;t thanh của l&amp;agrave;ng, đến nỗi t&amp;ocirc;i ra đường cũng bị c&amp;aacute;c cụ gọi l&amp;agrave; &amp;ldquo;Chị ph&amp;aacute;t thanh vi&amp;ecirc;n&amp;rdquo; đ&amp;oacute;. Rồi kiểu g&amp;igrave; t&amp;ocirc;i cũng sẽ v&amp;agrave;o trong sở ph&amp;aacute;t thanh của l&amp;agrave;ng v&amp;agrave; tiếp tục c&amp;ocirc;ng việc của gia đ&amp;igrave;nh. T&amp;ocirc;i c&amp;ograve;n chẳng biết m&amp;igrave;nh muốn g&amp;igrave; nữa.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Sayaka-chan, vậy khi tốt nghiệp rồi, b&amp;agrave; h&amp;atilde;y c&amp;ugrave;ng t&amp;ocirc;i l&amp;ecirc;n Tokyo nh&amp;eacute;. H&amp;atilde;y t&amp;igrave;m c&amp;aacute;ch tho&amp;aacute;t khỏi nơi n&amp;agrave;y, tung đ&amp;ocirc;i c&amp;aacute;nh của tự do. N&amp;agrave;y Tessie, cũng đi c&amp;ugrave;ng bọn t&amp;ocirc;i đi.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Tessie th&amp;ograve; mặt ra khỏi cuốn tạp ch&amp;iacute; huyền b&amp;iacute;, ng&amp;acirc;y người ra nh&amp;igrave;n ch&amp;uacute;ng t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;Ocirc;ng, c&amp;oacute; nghe g&amp;igrave; n&amp;atilde;y giờ kh&amp;ocirc;ng vậy?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;Agrave; ừ, t&amp;ocirc;i th&amp;igrave;&amp;hellip;n&amp;oacute;i sao nhỉ, t&amp;ocirc;i nghĩ l&amp;agrave; sẽ sống cuộc sống b&amp;igrave;nh thường ở ng&amp;ocirc;i l&amp;agrave;ng n&amp;agrave;y th&amp;ocirc;i&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Cả t&amp;ocirc;i v&amp;agrave; Sayaka nh&amp;igrave;n nhau, kh&amp;ocirc;ng ai n&amp;oacute;i g&amp;igrave;, lặng lẽ thở d&amp;agrave;i. C&amp;aacute;i g&amp;atilde; n&amp;agrave;y, hắn chẳng bao giờ c&amp;oacute; một suy nghĩ g&amp;igrave; hiểu t&amp;acirc;m l&amp;yacute; con g&amp;aacute;i g&amp;igrave; cả, cứ sống đơn giản như vậy. Ờ m&amp;agrave; n&amp;oacute;i lại, t&amp;ocirc;i cũng l&amp;agrave;m g&amp;igrave; c&amp;oacute; bạn trai m&amp;agrave; hiểu t&amp;acirc;m l&amp;yacute; đ&amp;aacute;m con trai kia chứ.&lt;/p&gt;

&lt;p&gt;Một cơn gi&amp;oacute; thoảng qua trước mắt ch&amp;uacute;ng t&amp;ocirc;i, l&amp;agrave;m gợn s&amp;oacute;ng hồ nước phẳng lặng giữa l&amp;agrave;ng. Tho&amp;aacute;ng chốc, mọi thứ trở n&amp;ecirc;n thật b&amp;igrave;nh y&amp;ecirc;n một c&amp;aacute;ch k&amp;igrave; lạ.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Ng&amp;ocirc;i l&amp;agrave;ng nhỏ b&amp;eacute; n&amp;agrave;y, kh&amp;ocirc;ng c&amp;oacute; hiệu s&amp;aacute;ch, cũng chẳng c&amp;oacute; ph&amp;ograve;ng nha sĩ, t&amp;agrave;u điện th&amp;igrave; phải hai tiếng mới c&amp;oacute; lấy một chuyến. C&amp;ograve;n xe bu&amp;yacute;t th&amp;igrave; một ng&amp;agrave;y hai chuyến gh&amp;eacute; qua. Dự b&amp;aacute;o thời tiết th&amp;igrave; lu&amp;ocirc;n nằm ngo&amp;agrave;i tầm phủ s&amp;oacute;ng của vệ tinh địa tĩnh hay l&amp;agrave; trạm quan trắc đối lưu. Cửa h&amp;agrave;ng tiện lời th&amp;igrave; ch&amp;iacute;n giờ l&amp;agrave; đ&amp;oacute;ng cửa m&amp;agrave; thậm ch&amp;iacute; c&amp;oacute; b&amp;aacute;n g&amp;igrave; đ&amp;acirc;u, chỉ b&amp;aacute;n rau v&amp;agrave; n&amp;ocirc;ng cụ.&lt;/p&gt;

&lt;p&gt;Tr&amp;ecirc;n đường học về, t&amp;ocirc;i v&amp;agrave; Sayaka tiếp tục &amp;ldquo;chế độ&amp;rdquo; bất m&amp;atilde;n về ng&amp;ocirc;i l&amp;agrave;ng Itomori nhỏ b&amp;eacute;.&lt;/p&gt;

&lt;p&gt;Chỗ để giải tr&amp;iacute; th&amp;igrave; c&amp;oacute; hai nơi n&amp;agrave;y, nhưng cũng chẳng phải l&amp;agrave; Mc.Donal hay l&amp;agrave; Mosu. Việc tuyển dụng kh&amp;oacute; khăn n&amp;agrave;y, chẳng c&amp;oacute; gia đ&amp;igrave;nh n&amp;agrave;o mới chuyển đến n&amp;agrave;y, thời gian chiếu s&amp;aacute;ng trong ng&amp;agrave;y qu&amp;aacute; &amp;iacute;t n&amp;agrave;y, v&amp;agrave; cứ thế, ch&amp;uacute;ng t&amp;ocirc;i thao thao bất tuyệt về những thứ trong ng&amp;ocirc;i l&amp;agrave;ng n&amp;agrave;y v&amp;agrave; cảm nhận ch&amp;aacute;n nản của hai đứa. H&amp;ocirc;m nay thực sự, cả hai đều trở n&amp;ecirc;n tuyệt vọng.&lt;/p&gt;

&lt;p&gt;Giữ xe đạp theo ch&amp;uacute;ng t&amp;ocirc;i, Tessie im lặng như thể đang ng&amp;aacute;i ngủ. Bỗng hắn cất tiếng uể oải cực k&amp;igrave; đ&amp;aacute;ng gh&amp;eacute;t.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;N&amp;agrave;y hai b&amp;agrave;&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;C&amp;aacute;i g&amp;igrave;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Hai đứa quay người lại hỏi, nh&amp;igrave;n Tessie nở nụ cười yếu ớt để cố gắng kh&amp;ocirc;ng phải trở th&amp;agrave;nh kẻ ph&amp;aacute; bĩnh c&amp;acirc;u chuyện đang trở n&amp;ecirc;n rất hăng của ch&amp;uacute;ng t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;N&amp;oacute;i về chuyện l&amp;uacute;c n&amp;atilde;y th&amp;igrave;&amp;hellip;, tr&amp;ecirc;n đường vừa mở một qu&amp;aacute;n caf&amp;eacute; đ&amp;oacute;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ca&amp;hellip;C&amp;aacute;i g&amp;igrave; cơ?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Caf&amp;eacute; sao, ch&amp;uacute;ng t&amp;ocirc;i phấn kh&amp;iacute;ch h&amp;eacute;t lớn.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Xạch xạch&amp;rdquo;, một tiếng &amp;acirc;m thanh đanh gi&amp;ograve;n của kim loại va v&amp;agrave;o nhau vang l&amp;ecirc;n nhưng đột ngột tắt lịm đi như thể c&amp;oacute; thứ g&amp;igrave; đ&amp;oacute; đang cố ngăn n&amp;oacute; ph&amp;aacute;t ra. &amp;ldquo;Thấy kh&amp;ocirc;ng&amp;rdquo;, Tessie n&amp;oacute;i với một vẻ mặt tự h&amp;agrave;o, khi lấy lon caf&amp;eacute; từ chiếc m&amp;aacute;y b&amp;aacute;n h&amp;agrave;ng tự động mới c&amp;oacute;ng đặt tr&amp;ecirc;n vệ đường. Tiếng p&amp;iacute;p p&amp;iacute;p của n&amp;uacute;t bấm, v&amp;agrave; tiếng lạch xạch của bộ phận đẩy h&amp;agrave;ng, một lần nữa lại khiến c&amp;aacute;c &amp;ocirc;ng b&amp;agrave; gi&amp;agrave; đi đồng về ch&amp;uacute; &amp;yacute;. Bọn t&amp;ocirc;i cố gắng ngồi t&amp;aacute;ch biệt ra, để kh&amp;ocirc;ng bị coi l&amp;agrave; &amp;ldquo;đang đi c&amp;ugrave;ng với nhau uống caf&amp;eacute; đấy&amp;rdquo;. V&amp;agrave; đ&amp;oacute; l&amp;agrave; qu&amp;aacute;n caf&amp;eacute; của ch&amp;uacute;ng t&amp;ocirc;i, n&amp;oacute; kh&amp;ocirc;ng phải l&amp;agrave; qu&amp;aacute;n Starbuck, hay l&amp;agrave; qu&amp;aacute;n Talese. M&amp;agrave; n&amp;oacute; cũng chẳng phải l&amp;agrave; bất k&amp;igrave; cửa h&amp;agrave;ng caf&amp;eacute; b&amp;aacute;n b&amp;aacute;nh kem ăn k&amp;egrave;m n&amp;agrave;o tr&amp;ecirc;n c&amp;otilde;i thế gian n&amp;agrave;y, thậm ch&amp;iacute; cả trong mơ cũng chẳng phải. B&amp;ecirc;n cạnh chiếc m&amp;aacute;y b&amp;aacute;n h&amp;agrave;ng đ&amp;oacute;, l&amp;agrave; một tấm bảng c&amp;oacute; d&amp;aacute;n quảng c&amp;aacute;o về một loại kem n&amp;agrave;o đ&amp;oacute;, tr&amp;ocirc;ng n&amp;oacute; cũ kĩ c&amp;oacute; khi đ&amp;atilde; được ba mươi năm tuổi. Đặt b&amp;ecirc;n cạnh một c&amp;aacute;i ghế d&amp;agrave;i tr&amp;ocirc;ng cũ kĩ chẳng k&amp;eacute;m. Bởi vốn lẽ, đ&amp;acirc;y l&amp;agrave; một trạm dừng xe bu&amp;yacute;t cũ.&lt;/p&gt;

&lt;p&gt;Chẳng c&amp;ograve;n c&amp;aacute;ch n&amp;agrave;o kh&amp;aacute;c, ch&amp;uacute;ng t&amp;ocirc;i ba người c&amp;ugrave;ng ngồi xuống chiếc ghế đặt gần đ&amp;oacute;. Chẳng ai n&amp;oacute;i với ai c&amp;acirc;u g&amp;igrave;, c&amp;ugrave;ng nhau chậm r&amp;atilde;i thưởng thức lon caf&amp;eacute; n&amp;oacute;ng hổi.&lt;/p&gt;

&lt;p&gt;M&amp;agrave;, c&amp;oacute; lẽ Tessie cố t&amp;igrave;nh lừa ch&amp;uacute;ng t&amp;ocirc;i th&amp;igrave; đ&amp;uacute;ng hơn. Th&amp;ocirc;i th&amp;igrave; cũng chẳng biết phải xử hắn như thế n&amp;agrave;o cả.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Vậy nh&amp;eacute;, t&amp;ocirc;i về trước đ&amp;acirc;y&amp;rdquo;&lt;/p&gt;

&lt;p&gt;H&amp;ocirc;m nay c&amp;oacute; vẻ m&amp;aacute;t hơn h&amp;ocirc;m qua tầm một độ nhỉ? Đ&amp;acirc;u c&amp;oacute; t&amp;ocirc;i nghĩ l&amp;agrave; n&amp;oacute;ng hơn chứ. Hai đứa ch&amp;uacute;ng t&amp;ocirc;i lại tiếp tục c&amp;acirc;u chuyện chủ đề đấy, trong khi thu dọn lại đống vỏ lon rỗng.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Tối nay nhớ quẩy hết m&amp;igrave;nh nh&amp;eacute;&amp;rdquo; Sayaka-chan đột ngột đổi chủ đề. &amp;ldquo;T&amp;ocirc;i sẽ đứng ở ph&amp;iacute;a sau cổ vũ cho b&amp;agrave;&amp;rdquo;.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Th&amp;ocirc;i b&amp;agrave; đừng đến l&amp;agrave;m g&amp;igrave; cả. M&amp;agrave; kh&amp;ocirc;ng, tuyệt đối đừng c&amp;oacute; đến&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Vừa n&amp;oacute;i t&amp;ocirc;i vừa quay lại hai người bạn, ra vẻ cầu khẩn như muốn n&amp;oacute;i &amp;ldquo; Nếu đ&amp;atilde; l&amp;agrave; chiến hữu th&amp;igrave; h&amp;atilde;y hiểu cho t&amp;ocirc;i&amp;rdquo; như vậy. Cả đ&amp;aacute;m bắt đầu leo l&amp;ecirc;n những bậc dốc đ&amp;aacute; trở về nh&amp;agrave;.&lt;/p&gt;

&lt;p&gt;Đi được một qu&amp;atilde;ng, ch&amp;uacute;ng t&amp;ocirc;i bất chợt quay người lại, ngắm nh&amp;igrave;n ho&amp;agrave;ng h&amp;ocirc;n đang đổ xuống chậm r&amp;atilde;i v&amp;agrave; nhẹ nh&amp;agrave;ng về ph&amp;iacute;a đằng xa của hồ nước phẳng lặng. B&amp;oacute;ng đổ xuống c&amp;aacute;i ghế đ&amp;aacute; dưới dốc l&amp;uacute;c n&amp;atilde;y, khiến tr&amp;ocirc;ng n&amp;oacute; như trở th&amp;agrave;nh một c&amp;aacute;i đ&amp;agrave;n dương cầm đang cất những &amp;acirc;m thanh du dương cuối ng&amp;agrave;y. Qủa nhi&amp;ecirc;n l&amp;agrave; giống thật. Nhưng t&amp;ocirc;i th&amp;igrave; đang chỉ đăm chi&amp;ecirc;u về buổi tối bất hạnh h&amp;ocirc;m nay. Hai người kia, ch&amp;iacute; &amp;iacute;t h&amp;atilde;y c&amp;ugrave;ng t&amp;ocirc;i h&amp;aacute;t l&amp;ecirc;n b&amp;agrave;i ca cho nỗi thống khổ n&amp;agrave;y n&amp;agrave;o&amp;hellip;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;..&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Con cũng l&amp;agrave;m được chứ bộ&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Yotsuba n&amp;oacute;i bằng giọng bất m&amp;atilde;n.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Yotsuba th&amp;igrave; vẫn c&amp;ograve;n nhỏ qu&amp;aacute;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;B&amp;agrave; t&amp;ocirc;i đ&amp;aacute;p lời của c&amp;ocirc; em g&amp;aacute;i.&lt;/p&gt;

&lt;p&gt;Trong căn ph&amp;ograve;ng chủ yếu đặt những dụng cụ th&amp;ecirc;u th&amp;ugrave;a. Ba người ch&amp;uacute;ng t&amp;ocirc;i lặng lẽ đan những sợi tơ v&amp;agrave;o với nhau. &amp;Acirc;m thanh của m&amp;aacute;y đan vang l&amp;ecirc;n kh&amp;ocirc;ng ngớt. &amp;ldquo;H&amp;atilde;y thử nghe tiếng của những sợi tơ n&amp;agrave;y m&amp;agrave; xem&amp;rdquo;, b&amp;agrave; t&amp;ocirc;i vẫn tiếp tục k&amp;eacute;o sợi đan n&amp;oacute;i. &amp;ldquo;Nếu l&amp;agrave;m như vậy, khi cuộn những sợi tơ n&amp;agrave;y v&amp;agrave;o nhau, xem n&amp;agrave;y, n&amp;oacute; giống như đang th&amp;aacute;o dần những cảm x&amp;uacute;c của con người v&amp;agrave;o trong sợi chỉ n&amp;agrave;y vậy.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Nhưng m&amp;agrave; mấy sợi tơ n&amp;agrave;y đ&amp;acirc;u c&amp;oacute; n&amp;oacute;i được đ&amp;acirc;u&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Phớt lờ tiếng phản đối của Yotsuba, b&amp;agrave; t&amp;ocirc;i vẫn tiếp tục c&amp;acirc;u chuyện cổ t&amp;iacute;ch về những sợi tơ sợi chỉ n&amp;agrave;y: &amp;ldquo;Lịch sử ng&amp;agrave;n năm&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Ba người ch&amp;uacute;ng t&amp;ocirc;i đang cố gắng ho&amp;agrave;n thiện nốt những đường n&amp;eacute;t cuối c&amp;ugrave;ng cho y phục chuẩn bị buổi lễ ch&amp;ugrave;a đ&amp;ecirc;m nay. Đan sợi, c&amp;oacute; lẽ l&amp;agrave; một nghề thủ c&amp;ocirc;ng truyền thống từ xa xưa trong l&amp;agrave;ng. Những sợi chỉ đủ m&amp;agrave;u sắc được đan v&amp;agrave;o nhau th&amp;agrave;nh những sợi lớn hơn, sau đ&amp;oacute;&amp;nbsp; n&amp;oacute; sẽ được dệt th&amp;agrave;nh những tấm lụa rực rỡ để may y phục. N&amp;oacute;i như thế, để l&amp;agrave;m được những tấm lụa đ&amp;oacute;, cũng đ&amp;ograve;i hỏi một sự khổ luyện kh&amp;ocirc;ng hề đơn giản. Ch&amp;iacute;nh v&amp;igrave; thế, b&amp;agrave; l&amp;agrave; người đảm đương phần việc ch&amp;iacute;nh. Việc của Yotsuba l&amp;agrave; li&amp;ecirc;n tục nới lỏng c&amp;aacute;i b&amp;agrave;n tiếp chỉ cho b&amp;agrave; t&amp;ocirc;i c&amp;oacute; thể dệt li&amp;ecirc;n tục.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Lịch sử ng&amp;agrave;n năm của l&amp;agrave;ng ta, được h&amp;igrave;nh th&amp;agrave;nh từ ch&amp;iacute;nh nghề dệt n&amp;agrave;y đấy. Rốt cuộc th&amp;igrave;, ta chẳng hiểu tại sao trường học ng&amp;agrave;y nay lại kh&amp;ocirc;ng dạy về những điều như vậy chứ. C&amp;acirc;u chuyện về con dốc ở l&amp;agrave;ng, đến giờ cũng đ&amp;atilde; được hơn ngh&amp;igrave;n năm rồi c&amp;ograve;n g&amp;igrave;&amp;hellip;&lt;/p&gt;

&lt;p&gt;B&amp;agrave; t&amp;ocirc;i lại bắt đầu những c&amp;acirc;u chuyện xưa cũ rồi đấy. T&amp;ocirc;i nở một nụ cười l&amp;eacute;n l&amp;uacute;t. Từ l&amp;uacute;c c&amp;ograve;n b&amp;eacute; t&amp;yacute; cho tới giờ, cứ mỗi lần bọn ch&amp;uacute;ng t&amp;ocirc;i gi&amp;uacute;p b&amp;agrave; dệt sợi, c&amp;acirc;u chuyện ấy lại cứ được kể m&amp;atilde;i. Đối với b&amp;agrave; t&amp;ocirc;i, th&amp;igrave; kể chuyện về lịch sử ng&amp;ocirc;i l&amp;agrave;ng n&amp;agrave;y dường như l&amp;agrave; một sở th&amp;iacute;ch rất đặc biệt của người.&lt;/p&gt;

&lt;p&gt;Đuốc từ Ngũ Kiển Lang đ&amp;atilde; được thắp l&amp;ecirc;n, tạo th&amp;agrave;nh một v&amp;ograve;ng tr&amp;ograve;n bao quanh ng&amp;ocirc;i đền nhỏ.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Hỏa thi&amp;ecirc;u cung điện, hỏa thi&amp;ecirc;u văn tự, hỏa thi&amp;ecirc;u ch&amp;uacute;ng sanh, nghĩa tục của n&amp;oacute; l&amp;agrave; như vậy&amp;rdquo;&lt;/p&gt;

&lt;p&gt;B&amp;agrave; vừa n&amp;oacute;i vừa nh&amp;igrave;n ch&amp;uacute;ng t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Đại Hỏa của Ngũ Kiển Lang&amp;rdquo;.T&amp;ocirc;i lẩm bẩm tiếp lời.&lt;/p&gt;

&lt;p&gt;B&amp;agrave; t&amp;ocirc;i gật g&amp;ugrave; ra chiều v&amp;ocirc; c&amp;ugrave;ng h&amp;agrave;i l&amp;ograve;ng. &amp;ldquo;Đ&amp;uacute;ng vậy, đ&amp;oacute; l&amp;agrave; t&amp;ecirc;n của trận hỏa hoạn năm ấy.&amp;rdquo; b&amp;agrave; dừng một ch&amp;uacute;t trước sự kinh ngạc của Yotsuba: &amp;ldquo;G&amp;igrave; cơ, t&amp;ecirc;n của trận hỏa hoạn ấy l&amp;agrave; t&amp;ecirc;n của lễ h&amp;ocirc;m nay &amp;aacute;? &amp;ldquo;. Qủa l&amp;agrave; v&amp;igrave; trận hỏa hoạn khủng khiếp ấy m&amp;agrave; giờ đ&amp;acirc;y lịch sử của l&amp;agrave;ng chỉ c&amp;ograve;n c&amp;aacute;i t&amp;ecirc;n l&amp;agrave; c&amp;ograve;n s&amp;oacute;t lại.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Cũng may, vẫn c&amp;ograve;n s&amp;oacute;t lại những chứng cứ từ những họa h&amp;igrave;nh trong sắc phục của cổ nh&amp;acirc;n. Mặc d&amp;ugrave; cũng chỉ c&amp;ograve;n s&amp;oacute;t lại một ch&amp;uacute;t &amp;iacute;t như b&amp;acirc;y giờ. Nhưng những g&amp;igrave; c&amp;ograve;n lại đ&amp;oacute; sẽ kh&amp;ocirc;ng thể bị x&amp;oacute;a nh&amp;ograve;a. &amp;Yacute; nghĩa đ&amp;atilde; được khắc s&amp;acirc;u v&amp;agrave;o h&amp;igrave;nh tượng, chắc chắn sẽ được ng&amp;agrave;n đời sau lưu giữ v&amp;agrave; đọc lại&amp;rdquo;.&lt;/p&gt;

&lt;p&gt;B&amp;agrave; vừa kể chuyện, vừa ng&amp;acirc;n nga một kh&amp;uacute;c ca kh&amp;ocirc;ng biết đ&amp;atilde; được truyền lại từ bao giờ. T&amp;ocirc;i vừa đan, vừa lầm rầm h&amp;aacute;t theo như vậy.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Đ&amp;oacute; l&amp;agrave; nghĩa vụ thi&amp;ecirc;ng li&amp;ecirc;ng của d&amp;ograve;ng họ Miyamizu của ch&amp;uacute;ng ta, phải lưu truyền lại cho thế hệ sau&amp;rdquo;.&lt;/p&gt;

&lt;p&gt;Bỗng nhi&amp;ecirc;n kh&amp;oacute;e mắt b&amp;agrave; t&amp;ocirc;i lộ một vẻ nhu m&amp;igrave; v&amp;agrave; c&amp;oacute; c&amp;aacute;i g&amp;igrave; đ&amp;oacute; man m&amp;aacute;c buồn.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Thằng con ngu ngốc ấy, vứt bỏ hết việc c&amp;uacute;ng tế, chỉ v&amp;igrave; chạy theo những chuyện ch&amp;iacute;nh trị tầm thường kia. Ta chẳng biết phải l&amp;agrave;m sao cả&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;B&amp;agrave;&amp;nbsp; tr&amp;uacute;t một hơi giận dữ v&amp;agrave; bất lực. T&amp;ocirc;i cũng khe khẽ thở d&amp;agrave;i. Ng&amp;ocirc;i l&amp;agrave;ng nhỏ b&amp;eacute; n&amp;agrave;y, đ&amp;aacute;ng gh&amp;eacute;t, hay đ&amp;aacute;ng để sống, đi thật xa hay ở lại đ&amp;acirc;y c&amp;ugrave;ng gia đ&amp;igrave;nh, thực sự bản th&amp;acirc;n t&amp;ocirc;i cũng kh&amp;ocirc;ng thể hiểu được m&amp;igrave;nh. N&amp;acirc;ng nhẹ tấm lụa mịn m&amp;agrave;ng lấp l&amp;aacute;nh những m&amp;agrave;u sắc rực rỡ tr&amp;ecirc;n tay, t&amp;ocirc;i bất gi&amp;aacute;c cảm thấy một nỗi buồn nặng trĩu.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Tiếng t&amp;ugrave; lớn vẳng xa từ ph&amp;iacute;a ng&amp;ocirc;i đền, b&amp;aacute;o hiệu đ&amp;atilde; đến giờ lễ thức được bắt đầu. Khu vực đền thờ h&amp;ocirc;m nay, kh&amp;aacute;ch thập phương đổ về như trẩy hội. Tất cả đến để cầu nguyện cho những điều bất hạnh được si&amp;ecirc;u tho&amp;aacute;t, như những người bị giết oan, hay để cho gia đ&amp;igrave;nh được đo&amp;agrave;n tụ khiến nơi n&amp;agrave;y giống như một s&amp;acirc;n khấu của những điều bất hạnh. Với t&amp;ocirc;i cho d&amp;ugrave; đ&amp;oacute; l&amp;agrave; kẻ giết người m&amp;aacute;u lạnh n&amp;agrave;o đang ở dưới cũng chẳng c&amp;oacute; vấn đề g&amp;igrave;. L&amp;uacute;c n&amp;agrave;y t&amp;ocirc;i đang chuẩn bị mặc đồ của một vu nữ. Vẫn như hằng năm, t&amp;ocirc;i sẽ l&amp;agrave; vũ c&amp;ocirc;ng ch&amp;iacute;nh cho nghi lễ của đền Miyamizu. Mọi bất hạnh của tất cả mọi người sẽ được chuyển v&amp;agrave;o hai chị em t&amp;ocirc;i v&amp;agrave; như thế, mọi bất hạnh của những người đến viếng đều được gột tẩy.&lt;/p&gt;

&lt;p&gt;Chị em t&amp;ocirc;i mặc trang phục vu nữa, m&amp;ocirc;i được nhuộm đỏ thẫm v&amp;agrave; khu&amp;ocirc;n mặt được trang điểm kĩ lưỡng, ch&amp;uacute;ng t&amp;ocirc;i bước ra vũ đ&amp;agrave;i dưới tiếng nhạc lễ v&amp;agrave; bắt đầu nhảy theo điệu vũ m&amp;agrave; người b&amp;agrave; ch&amp;uacute;ng t&amp;ocirc;i đ&amp;atilde; truyền thụ lại.&lt;/p&gt;

&lt;p&gt;Bước nhảy của hai người đối lập với nhau, như muốn n&amp;oacute;i rằng bởi sự kiện đ&amp;aacute;m ch&amp;aacute;y ng&amp;agrave;y ấy đ&amp;atilde; khiến nhiều thứ bị mất m&amp;aacute;t. Liền sau đ&amp;oacute;, t&amp;ocirc;i hạ những sợi d&amp;acirc;y đầy m&amp;agrave;u sắc xuống, đưa theo c&amp;aacute;nh tay đang giữ một c&amp;aacute;i lục lạc bằng đồng lớn. &amp;Acirc;m thanh từ c&amp;aacute;i lục lạc, h&amp;ograve;a quyện c&amp;ugrave;ng nền nhạc v&amp;agrave; nhịp nhảy, như thể ch&amp;uacute;ng t&amp;ocirc;i đang bồng bềnh lướt tr&amp;ecirc;n bậc thềm n&amp;agrave;y vậy. L&amp;uacute;c n&amp;atilde;y, tho&amp;aacute;ng qua, t&amp;ocirc;i vừa tr&amp;ocirc;ng thấy b&amp;oacute;ng của Saya-chan. Tuy n&amp;oacute;i c&amp;ocirc; bạn đừng đến, nhưng khi nghĩ đến chuyện c&amp;ocirc; n&amp;agrave;ng đang gửi h&amp;igrave;nh ảnh ch&amp;uacute;ng t&amp;ocirc;i l&amp;ecirc;n mạng x&amp;atilde; hội LINE để cổ vũ, tự nhi&amp;ecirc;n t&amp;ocirc;i cảm thấy b&amp;igrave;nh tĩnh lại rất nhiều.&lt;/p&gt;

&lt;p&gt;N&amp;oacute;i cho đ&amp;uacute;ng ra th&amp;igrave;, thực ra thứ t&amp;ocirc;i cảm thấy kh&amp;oacute; chịu kh&amp;ocirc;ng phải l&amp;agrave; ở điệu vũ n&amp;agrave;y. Cũng chỉ l&amp;agrave; một ch&amp;uacute;t hơi xấu hổ m&amp;agrave; th&amp;ocirc;i. Bởi v&amp;igrave; t&amp;ocirc;i đ&amp;atilde; quen với điệu vũ n&amp;agrave;y từ hồi c&amp;ograve;n b&amp;eacute;. Chẳng qua, c&amp;agrave;ng lớn th&amp;igrave; c&amp;aacute;i sự ngại ng&amp;ugrave;ng đ&amp;oacute; c&amp;agrave;ng trở n&amp;ecirc;n r&amp;otilde; r&amp;agrave;ng hơn. C&amp;aacute;i m&amp;agrave; t&amp;ocirc;i gh&amp;eacute;t l&amp;agrave; phần tiếp theo của buổi nghi lễ n&amp;agrave;y. C&amp;aacute;i m&amp;agrave; bọn chị em t&amp;ocirc;i buộc phải l&amp;agrave;m. C&amp;aacute;i kh&amp;ocirc;ng thể nghĩ được g&amp;igrave; ngo&amp;agrave;i xấu hổ.&lt;/p&gt;

&lt;p&gt;&amp;Ocirc;i trời ạ.&lt;/p&gt;

&lt;p&gt;Kinh khủng qu&amp;aacute;.&lt;/p&gt;

&lt;p&gt;Vừa nghĩ, t&amp;ocirc;i vừa cử động cơ thể, ho&amp;agrave;n th&amp;agrave;nh nốt những bước cuối c&amp;ugrave;ng của điệu vũ phần đầu nghi lễ. &amp;Ocirc;i trời, cuối c&amp;ugrave;ng th&amp;igrave;&amp;hellip;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Tiếng nhai nh&amp;oacute;p nh&amp;eacute;p.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i ngậm một miếng cơm trong miệng một c&amp;aacute;ch từ tốn. L&amp;uacute;c n&amp;agrave;y tốt hơn hết l&amp;agrave; kh&amp;ocirc;ng n&amp;ecirc;n nghĩ g&amp;igrave; cả. Mắt t&amp;ocirc;i nhắm thật chặt trong khi nhai, cố gắng kh&amp;ocirc;ng để cơ thể cảm nhận được m&amp;ugrave;i vị m&amp;agrave;u sắc hay bất k&amp;igrave; &amp;acirc;m thanh g&amp;igrave; hết. Ở b&amp;ecirc;n cạnh, Yotsuba cũng đang l&amp;agrave;m điều tương tự vậy. Ph&amp;iacute;a trước mặt nơi ch&amp;uacute;ng t&amp;ocirc;i đang ngay ngắn quỳ, hai chiếc b&amp;aacute;t vu&amp;ocirc;ng bằng gỗ đang được đặt ngay ngắn. Dĩ nhi&amp;ecirc;n, ph&amp;iacute;a trước, c&amp;ocirc;ng ch&amp;uacute;ng, từ người phụ l&amp;atilde;o lẫn trẻ em, đang chăm ch&amp;uacute; nh&amp;igrave;n mọi cử chỉ của ch&amp;uacute;ng t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;Tiếng nhai nh&amp;oacute;p nh&amp;eacute;p.&lt;/p&gt;

&lt;p&gt;Th&amp;ocirc;i th&amp;igrave;, cũng đến l&amp;uacute;c phải cho n&amp;oacute; ra rồi.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i với tay lấy c&amp;aacute;i b&amp;aacute;t gỗ, miệng vẫn giữa nguy&amp;ecirc;n như ban đầu, một tay phủ vạt &amp;aacute;o để che đi phần miệng.&lt;/p&gt;

&lt;p&gt;V&amp;agrave;.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i h&amp;aacute; miệng nhả ra đống cơm nhai suốt từ n&amp;atilde;y. Cơm được nghiền n&amp;aacute;t, trộn c&amp;ugrave;ng với nước bọt của t&amp;ocirc;i, tạo th&amp;agrave;nh một thứ dịch m&amp;agrave;u trắng tinh, từ từ tr&amp;agrave;o ra khỏi miệng t&amp;ocirc;i, chảy xuống b&amp;aacute;t gỗ đang được hứng sẵn ph&amp;iacute;a dưới. Trong l&amp;ograve;ng t&amp;ocirc;i đang kh&amp;oacute;c nức nở. L&amp;agrave;m ơn, mọi người, xin đừng nh&amp;igrave;n c&amp;aacute;i cảnh n&amp;agrave;y.&lt;/p&gt;

&lt;p&gt;Thứ đ&amp;oacute; sẽ được ủ th&amp;agrave;nh rượu.&lt;/p&gt;

&lt;p&gt;Thứ cơm được nghiền n&amp;aacute;t v&amp;agrave; trộn bởi nước bọt của t&amp;ocirc;i, sẽ dần l&amp;ecirc;n men v&amp;agrave; h&amp;oacute;a th&amp;agrave;nh rượu. Đ&amp;oacute; l&amp;agrave; c&amp;aacute;ch ủ rượu l&amp;acirc;u đời nhất của Nhật Bản. Đ&amp;acirc;y l&amp;agrave; thứ sẽ d&amp;acirc;ng l&amp;ecirc;n những vị thần. Từ ng&amp;agrave;n xưa, kh&amp;ocirc;ng chỉ nơi đ&amp;acirc;y m&amp;agrave; nhiều v&amp;ugrave;ng kh&amp;aacute;c cũng thực hiện nghi thức n&amp;agrave;y. Nhưng ở thế kỉ thứ hai mươi mốt, t&amp;ocirc;i kh&amp;ocirc;ng nghĩ c&amp;ograve;n nơi n&amp;agrave;o tr&amp;ecirc;n tr&amp;aacute;i đất vẫn c&amp;ograve;n tồn tại phong tục n&amp;agrave;y kh&amp;ocirc;ng nữa.&lt;/p&gt;

&lt;p&gt;M&amp;agrave; n&amp;oacute;i cho c&amp;ugrave;ng, nội việc m&amp;uacute;a dưới bộ dạng của một vu nữ cũng đ&amp;atilde; đủ qu&amp;aacute;i đản rồi ấy chứ.&lt;/p&gt;

&lt;p&gt;V&amp;agrave; cho tới khi lấp đầy c&amp;aacute;i b&amp;aacute;t gỗ ấy, hai chị em t&amp;ocirc;i sẽ lặp đi lặp lại c&amp;aacute;i việc nhai cơm trộn nước bọt như vậy. V&amp;agrave; cứ mỗi lần nhổ ra, th&amp;igrave; trong tim t&amp;ocirc;i lại thắt lại như đang kh&amp;oacute;c.&lt;/p&gt;

&lt;p&gt;Bỗng nhi&amp;ecirc;n t&amp;ocirc;i chợt linh cảm thấy một điều g&amp;igrave; bất thường, t&amp;ocirc;i len l&amp;eacute;n ngước nh&amp;igrave;n.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;A &amp;ldquo;&lt;/p&gt;

&lt;p&gt;Giống như c&amp;oacute; một quả bom chuẩn bị nổ ngay trước cửa đền. Tụi học c&amp;ugrave;ng lớp cũng đến xem. Tụi n&amp;oacute; đang n&amp;oacute;i c&amp;aacute;i g&amp;igrave; m&amp;agrave; c&amp;oacute; vẻ th&amp;uacute; vị vậy? Lại c&amp;ograve;n chăm ch&amp;uacute; nh&amp;igrave;n t&amp;ocirc;i nữa chứ. Mặc d&amp;ugrave; khoảng c&amp;aacute;ch đ&amp;oacute; chắc chắn t&amp;ocirc;i kh&amp;ocirc;ng thể nghe được g&amp;igrave; cả, nhưng chẳng hiểu sao những &amp;acirc;m thanh rất r&amp;otilde; r&amp;agrave;ng cứ r&amp;oacute;t v&amp;agrave;o trong tai t&amp;ocirc;i một c&amp;aacute;ch từ tốn.&lt;/p&gt;

&lt;p&gt;Sau khi tốt nghiệp, t&amp;ocirc;i sẽ t&amp;eacute; khỏi nơi n&amp;agrave;y, đến một nơi thật xa.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i lấy hết dũng kh&amp;iacute; để quyết t&amp;acirc;m l&amp;agrave;m như vậy.&lt;/p&gt;

&lt;p&gt;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Chị kh&amp;ocirc;ng thấy khỏe &amp;agrave;? Bị bạn học nh&amp;igrave;n ch&amp;ograve;ng chọc vậy, c&amp;oacute; g&amp;igrave; m&amp;agrave; chị sốc tới mức ấy?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Nh&amp;oacute;c t&amp;igrave; chưa dậy th&amp;igrave; như c&amp;ocirc; th&amp;igrave; dĩ nhi&amp;ecirc;n l&amp;agrave; vui vẻ lắm rồi&amp;rdquo;&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i quặc lại con b&amp;eacute; Yotsuba l&amp;eacute;m lỉnh. L&amp;uacute;c n&amp;agrave;y, cả hai chị em t&amp;ocirc;i đ&amp;atilde; lui v&amp;agrave;o trong hậu đ&amp;agrave;i, thay bộ v&amp;aacute;y vu nữ bằng &amp;aacute;o thun v&amp;agrave; bước ra ngo&amp;agrave;i lễ đường ph&amp;iacute;a sau. Ch&amp;uacute;ng t&amp;ocirc;i đ&amp;atilde; bỏ lỡ to&amp;agrave;n bộ lễ hội ph&amp;iacute;a dưới l&amp;agrave;ng, b&amp;acirc;y giờ đang tranh thủ phụ gi&amp;uacute;p mọi người một tay dọn dẹp. Thực ra l&amp;agrave; v&amp;agrave;o hầu rượu, g&amp;oacute;p chuyện c&amp;ugrave;ng với mọi người với b&amp;agrave; t&amp;ocirc;i m&amp;agrave; th&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Mitsuha-san bao nhi&amp;ecirc;u tuổi rồi? &amp;Ocirc; đ&amp;atilde; mười bảy rồi cơ &amp;agrave;? &amp;Ocirc;i ch&amp;agrave; ch&amp;agrave;, được một c&amp;ocirc; b&amp;eacute; dễ thương như thế n&amp;agrave;y r&amp;oacute;t rượu, l&amp;atilde;o cũng trẻ lại đi mười tuổi rồi ấy&amp;rdquo;.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Thế &amp;ocirc;ng trẻ nốt đi n&amp;agrave;y, uống đi uống đi&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Hầu như t&amp;ocirc;i chỉ trả lời một c&amp;aacute;ch lấy lệ. L&amp;uacute;c n&amp;agrave;y, đ&amp;aacute;m trẻ đ&amp;atilde; kiệt sức n&amp;ecirc;n đều về nh&amp;agrave; hết. Th&amp;ocirc;i th&amp;igrave; cũng đ&amp;atilde; đến l&amp;uacute;c giải t&amp;aacute;n rồi. Chỉ c&amp;ograve;n mấy người gi&amp;agrave; ngồi lại trong hậu đ&amp;agrave;i. T&amp;ocirc;i hỏi Yotsuba:&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Yotsuba, em đo&amp;aacute;n xem tuổi trung b&amp;igrave;nh của mấy người&amp;rdquo;&lt;/p&gt;

&lt;p&gt;L&amp;uacute;c n&amp;agrave;y đ&amp;egrave;n đ&amp;oacute;m trong hậu đường đ&amp;atilde; tắt gần hết, kh&amp;ocirc;ng gian tĩnh mịch v&amp;agrave; m&amp;aacute;t mẻ, văng vẳng tiếng c&amp;ocirc;n tr&amp;ugrave;ng.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Em kh&amp;ocirc;ng biết, s&amp;aacute;u mươi tuổi ạ?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;L&amp;uacute;c n&amp;atilde;y ở bếp chị nhẩm t&amp;iacute;nh thử rồi, bảy mươi t&amp;aacute;m tuổi, bảy mươi t&amp;aacute;m tuổi đ&amp;oacute;!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;v&amp;acirc;ng&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Rồi giả sử đến l&amp;uacute;c ch&amp;uacute;ng ta chết, tầm 91 tuổi chẳng hạn, m&amp;agrave; c&amp;oacute; khi đến 100 tuổi, ch&amp;uacute;ng ta sẽ ở c&amp;aacute;i đền đ&amp;oacute;, đ&amp;oacute;n những người l&amp;igrave;a xa c&amp;otilde;i đời xuống &amp;acirc;m phủ&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;V&amp;acirc;ng&amp;rdquo;&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i chỉ muốn n&amp;oacute;i phứt ra rằng t&amp;ocirc;i muốn đi khỏi nơi n&amp;agrave;y lắm rồi. Nhưng t&amp;ocirc;i kh&amp;ocirc;ng nỡ thấy cảnh c&amp;ocirc; em g&amp;aacute;i bị sốc v&amp;igrave; &amp;yacute; nghĩ t&amp;aacute;o bạo đ&amp;oacute; của b&amp;agrave; chị.Dường như&amp;nbsp; t&amp;ocirc;i kh&amp;ocirc;ng thể truyền được nỗi l&amp;ograve;ng của m&amp;igrave;nh cho c&amp;ocirc; em g&amp;aacute;i đang nghĩ c&amp;aacute;i g&amp;igrave; đ&amp;oacute; kh&amp;aacute;c. T&amp;ocirc;i đ&amp;agrave;nh bỏ cuộc, ngước nh&amp;igrave;n bầu trời đ&amp;ecirc;m xanh thẫm. Bầu trời tr&amp;agrave;n ngập những v&amp;igrave; sao lấp l&amp;aacute;nh chiếu xuống nh&amp;acirc;n gian một c&amp;aacute;ch hờ hững v&amp;ocirc; t&amp;igrave;nh.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Vậy l&amp;agrave;&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Bước xuống những bậc thang đ&amp;aacute; dẫn lối trở về nh&amp;agrave; từ ng&amp;ocirc;i đền, bỗng nhi&amp;ecirc;n Yotsuba cất tiếng. C&amp;ocirc; b&amp;eacute; lộ ra một vẻ mặt như thể vừa t&amp;igrave;m ra một c&amp;aacute;i b&amp;aacute;nh kem ngon l&amp;agrave;nh ai đ&amp;oacute; giấu đi vậy. Yotsuba n&amp;oacute;i:&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Chị n&amp;agrave;y, b&amp;acirc;y giờ chị h&amp;atilde;y l&amp;agrave;m thật nhiều rượu khẩu giảo, để lấy tiền đi Tokyo&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Nhất thời, t&amp;ocirc;i đăm chi&amp;ecirc;u suy nghĩ những lời của Yotsuba.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;C&amp;ocirc; cũng nghĩ được ra tr&amp;ograve; đấy chứ&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Chị chụp ảnh n&amp;agrave;y, hoặc quay video với tựa đề : &amp;ldquo;Vu nữ nh&amp;aacute; rượu&amp;rdquo; rồi đem b&amp;aacute;n chắc cũng b&amp;aacute;n chạy lắm đ&amp;oacute;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Bị một c&amp;ocirc; b&amp;eacute; ch&amp;iacute;n tuổi, vẫn c&amp;ograve;n ng&amp;acirc;y thơ với thế giới n&amp;agrave;y lo lắng d&amp;ugrave;m cho người chị lẽ ra phải lo lắng cho c&amp;ocirc; b&amp;eacute;, tự nhi&amp;ecirc;n t&amp;ocirc;i cảm thấy Yotsuba thật đ&amp;aacute;ng y&amp;ecirc;u. V&amp;agrave; tự nhi&amp;ecirc;n, t&amp;ocirc;i cảm thấy thương c&amp;ocirc; em g&amp;aacute;i b&amp;eacute; bỏng của m&amp;igrave;nh qu&amp;aacute;. C&amp;oacute; khi đ&amp;uacute;ng thật, c&amp;oacute; lẽ t&amp;ocirc;i cũng n&amp;ecirc;n suy nghĩ một c&amp;aacute;ch nghi&amp;ecirc;m t&amp;uacute;c về việc thương mại thương hiệu rượu nước bọt của m&amp;igrave;nh. M&amp;agrave; khoan, c&amp;aacute;i rượu n&amp;agrave;y c&amp;oacute; được đem đi b&amp;aacute;n kh&amp;ocirc;ng nhỉ?&lt;/p&gt;

&lt;p&gt;&amp;ldquo;N&amp;egrave;, chị, &amp;yacute; tưởng đ&amp;oacute; thế n&amp;agrave;o?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ừm&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Ừm, th&amp;igrave;.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Kh&amp;ocirc;ng được kh&amp;ocirc;ng được, vi phạm luật thuế rượu&amp;rdquo;&lt;/p&gt;

&lt;p&gt;M&amp;agrave; thực ra nếu giải quyết được kh&amp;acirc;u thuế m&amp;aacute; th&amp;igrave; cũng đ&amp;acirc;u c&amp;oacute; g&amp;igrave; đ&amp;acirc;u nhỉ? T&amp;ocirc;i lại tiếp tục đăm chi&amp;ecirc;u nghĩ ngợi. Khi nhận ra th&amp;igrave; t&amp;ocirc;i đ&amp;atilde; đi được một qu&amp;atilde;ng xa rồi.Q&amp;uacute;a nhiều chuyện, c&amp;oacute; thể hay kh&amp;ocirc;ng thể, sự t&amp;igrave;nh, suy tư, tuyệt vọng&amp;hellip; trộn lẫn v&amp;agrave;o với nhau, l&amp;agrave;m ngực t&amp;ocirc;i như muốn nổ tung.&lt;/p&gt;

&lt;p&gt;Nhảy xuống dưới những bậc thang cuối c&amp;ugrave;ng, t&amp;ocirc;i h&amp;eacute;t l&amp;ecirc;n một tiếng, giống như thể tiếng phanh xe đột ngột bị k&amp;eacute;o l&amp;ecirc;n, x&amp;eacute; toạc m&amp;agrave;n đ&amp;ecirc;m tĩnh lặng v&amp;agrave; buồn ngủ, t&amp;ocirc;i la lớn tới nỗi khiến cho cổ họng t&amp;ocirc;i cũng phải đau r&amp;aacute;t.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;T&amp;ocirc;i ch&amp;aacute;n c&amp;aacute;i l&amp;agrave;ng qu&amp;ecirc; n&amp;agrave;y lắm rồi, t&amp;ocirc;i ch&amp;aacute;n c&amp;aacute;i cuộc đời t&amp;ocirc;i lắm rồi, l&amp;agrave;m ơn nếu c&amp;oacute; kiếp sau h&amp;atilde;y cho t&amp;ocirc;i trở th&amp;agrave;nh một anh đẹp trai n&amp;agrave;o đ&amp;oacute; điiiiiiiiiiiiiiiiiiiii&amp;rdquo;&lt;/p&gt;

&lt;p&gt;N&amp;uacute;i rừng vang vọng lời nguyện cầu của t&amp;ocirc;i cho đến khi &amp;acirc;m thanh trở th&amp;agrave;nh tiếng gi&amp;oacute; l&amp;ugrave;a v&amp;agrave;o mặt hồ phẳng như gương ph&amp;iacute;a dưới l&amp;agrave;ng v&amp;agrave; ngắt lịm&amp;hellip;&lt;/p&gt;

&lt;p&gt;Những lời n&amp;oacute;i chướng tai bột ph&amp;aacute;t vừa n&amp;atilde;y, c&amp;ugrave;ng với những giọt mồ h&amp;ocirc;i lăn tr&amp;ecirc;n khu&amp;ocirc;n mặt của t&amp;ocirc;i nhỏ xuống đất, ph&amp;uacute;t chốc đ&amp;atilde; tan biến v&amp;agrave;o hư v&amp;ocirc;.&lt;/p&gt;

&lt;p&gt;Nhưng cho d&amp;ugrave; vậy.&lt;/p&gt;

&lt;p&gt;Thần linh, nếu như ng&amp;agrave;i c&amp;oacute; thật&amp;hellip;&lt;/p&gt;

&lt;p&gt;Nhưng nếu thần linh, nếu ng&amp;agrave;i c&amp;oacute; thật, v&amp;agrave; c&amp;oacute; thể ban cho t&amp;ocirc;i điều ước, liệu t&amp;ocirc;i sẽ ước điều g&amp;igrave; đ&amp;acirc;y?&lt;/p&gt;
', 1, CAST(0x0000ADE001582C92 AS DateTime), CAST(0x0000ADE001582C92 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (1093, 1088, 7, N'Chương 3: Ngày cứ thế trôi', N'&lt;p&gt;C&amp;oacute; tiếng chu&amp;ocirc;ng điện thoại vang l&amp;ecirc;n. Tiếng chu&amp;ocirc;ng rất đỗi lạ lẫm.&lt;/p&gt;

&lt;p&gt;H&amp;igrave;nh như t&amp;ocirc;i đang trong cơn mộng du th&amp;igrave; phải. Mở mắt nh&amp;eacute;? Nhưng kh&amp;ocirc;ng, thực sự t&amp;ocirc;i vẫn c&amp;ograve;n buồn ngủ lắm. Hay th&amp;ocirc;i ngủ th&amp;ecirc;m một ch&amp;uacute;t nữa nhỉ? Mắt t&amp;ocirc;i vẫn nhắm thật chặt, tay quơ qu&amp;agrave;o cố với lấy chiếc điện thoại ở đ&amp;acirc;u đ&amp;oacute; tr&amp;ecirc;n giường, v&amp;ugrave;i trong đống chăn đệm.&lt;/p&gt;

&lt;p&gt;Ơ?&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i cố gắng vươn tay ra xa hơn nữa. Ồn qu&amp;aacute; ồn qu&amp;aacute;, c&amp;aacute;i tiếng chu&amp;ocirc;ng b&amp;aacute;o thức chết tiệt n&amp;agrave;y. T&amp;ocirc;i đ&amp;atilde; vứt điện thoại n&amp;agrave;y ở đ&amp;acirc;u nhỉ?&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;Ocirc;i đau!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Rầm. Lưng của t&amp;ocirc;i đ&amp;aacute;p một c&amp;aacute;nh dứt kho&amp;aacute;t xuống s&amp;agrave;n nh&amp;agrave;. Bằng một động t&amp;aacute;c cựa người n&amp;agrave;o đ&amp;oacute;, t&amp;ocirc;i đ&amp;atilde; rơi thẳng từ tr&amp;ecirc;n giường xuống m&amp;agrave; kh&amp;ocirc;ng c&amp;oacute; lấy một phản xạ. Đau qu&amp;aacute;, t&amp;ocirc;i r&amp;ecirc;n l&amp;ecirc;n. Bỗng c&amp;oacute; c&amp;aacute;i g&amp;igrave; đ&amp;oacute; k&amp;igrave; lạ lướt qua t&amp;acirc;m tr&amp;iacute;. Tại sao lại l&amp;agrave; giường?&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i buộc l&amp;ograve;ng mở mắt. Nửa th&amp;acirc;n tr&amp;ecirc;n đ&amp;atilde; bắt đầu c&amp;oacute; vẻ nghe lời hơn.&lt;/p&gt;

&lt;p&gt;Ơ k&amp;igrave;a?&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i đang ở trong một căn ph&amp;ograve;ng ho&amp;agrave;n to&amp;agrave;n lạ lẫm.&lt;/p&gt;

&lt;p&gt;H&amp;ocirc;m qua t&amp;ocirc;i c&amp;oacute; ngủ lại nh&amp;agrave; người bạn n&amp;agrave;o &amp;agrave;?&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Chỗ n&amp;agrave;o đ&amp;acirc;y&amp;rdquo;, t&amp;ocirc;i th&amp;igrave; thầm. T&amp;ocirc;i nhận ra thanh quản t&amp;ocirc;i ph&amp;aacute;t ra một giọng c&amp;oacute; vẻ nằng nặng. Một c&amp;aacute;ch phản xạ, t&amp;ocirc;i nhấc tay của m&amp;igrave;nh l&amp;ecirc;n. T&amp;ocirc;i đưa tay sờ c&amp;aacute;i cổ họng c&amp;oacute; c&amp;aacute;i g&amp;igrave; đ&amp;oacute; cưng cứng khang kh&amp;aacute;c so với thường n&amp;agrave;y.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ơ&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Tội một lần nữa thử n&amp;oacute;i một c&amp;aacute;i g&amp;igrave; đấy. Vẫn đục đục như bị cảm nặng lắm vậy. T&amp;ocirc;i hướng &amp;aacute;nh nh&amp;igrave;n của m&amp;igrave;nh xuống cơ thể&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Kh&amp;ocirc;ng c&amp;oacute; g&amp;igrave; cả&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Chiếc &amp;aacute;o thun mỏng, đi một đường trơn tru v&amp;agrave; ho&amp;agrave;n hảo từ ngực xuống bụng t&amp;ocirc;i một c&amp;aacute;ch thoải m&amp;aacute;i. Ho&amp;agrave;n to&amp;agrave;n chẳng c&amp;oacute; g&amp;igrave; cả.&lt;/p&gt;

&lt;p&gt;Ngực của t&amp;ocirc;i, biến mất.&lt;/p&gt;

&lt;p&gt;V&amp;agrave; tiếp đ&amp;oacute;, ở ph&amp;iacute;a dưới, giữa hai ch&amp;acirc;n của t&amp;ocirc;i, c&amp;oacute; một thứ g&amp;igrave; đ&amp;oacute; kh&amp;ocirc;ng b&amp;igrave;nh thường m&amp;agrave; nếu c&amp;oacute; thể nh&amp;igrave;n xuy&amp;ecirc;n qua được th&amp;igrave;&amp;hellip; Thứ k&amp;igrave; cục đ&amp;oacute;, thậm ch&amp;iacute; c&amp;ograve;n khiến t&amp;ocirc;i c&amp;oacute; cảm gi&amp;aacute;c kinh khủng hơn cả cảm gi&amp;aacute;c kh&amp;oacute; chịu khi kh&amp;ocirc;ng c&amp;ograve;n được che chắn bởi bộ ngực ph&amp;iacute;a trước.&lt;/p&gt;

&lt;p&gt;C&amp;aacute;i n&amp;agrave;y, l&amp;agrave; g&amp;igrave; đ&amp;acirc;y?&lt;/p&gt;

&lt;p&gt;Rất hoang mang, t&amp;ocirc;i đưa tay luồn xuống bộ phận đ&amp;oacute;. To&amp;agrave;n bộ x&amp;uacute;c gi&amp;aacute;c v&amp;agrave; mạch m&amp;aacute;u dường như đang đổ dồn hết v&amp;agrave;o thời khắc đấy.&lt;/p&gt;

&lt;p&gt;C&amp;aacute;i n&amp;agrave;y, c&amp;aacute;i thứ n&amp;agrave;y, chẳng lẽ l&amp;agrave;&amp;hellip;&lt;/p&gt;

&lt;p&gt;[&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;..&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;hellip;&amp;hellip;.]&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Tay t&amp;ocirc;i đ&amp;atilde; chạm phải &amp;ldquo;thứ đ&amp;oacute;&amp;rdquo;.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i gần như ngất lịm đi.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;[ &amp;hellip;]&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Ai đ&amp;acirc;y? Cậu con trai n&amp;agrave;y l&amp;agrave; ai đ&amp;acirc;y?&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i đăm đăm nh&amp;igrave;n v&amp;agrave;o khu&amp;ocirc;n mặt chưa từng quen biết, đang phản chiếu trong tấm gương b&amp;ecirc;n trong ph&amp;ograve;ng vệ sinh lạ hoắc. M&amp;aacute;i t&amp;oacute;c của người n&amp;agrave;y được vuốt nếp như thể đang muốn để kiểu đầu m&amp;aacute;i bờm kh&amp;ocirc;ng biết c&amp;oacute; phải v&amp;ocirc; t&amp;igrave;nh hay hữu &amp;yacute;. M&amp;aacute;i t&amp;oacute;c che phủ một phần h&amp;agrave;ng l&amp;ocirc;ng m&amp;agrave;y rậm, l&amp;agrave;m nổi bật cặp mắt to hiền l&amp;agrave;nh v&amp;agrave; dễ gần. Cặp m&amp;ocirc;i mềm mại một c&amp;aacute;ch tự nhi&amp;ecirc;n, dường như chưa từng phải d&amp;ugrave;ng đến kem dưỡng ẩm. Cơ bắp săn chắc v&amp;agrave; hai g&amp;ograve; m&amp;aacute; mảnh mai tr&amp;ocirc;ng c&amp;acirc;n đối tuyệt vời. Hai g&amp;ograve; m&amp;aacute; ấy, như thể được tr&amp;aacute;m bởi một lớp thạch cao trắng. T&amp;ocirc;i thử vỗ thật mạnh v&amp;agrave;o ch&amp;uacute;ng, một cảm gi&amp;aacute;c đau nh&amp;oacute;i chạy qua khắp cơ thể.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i vục mặt xuống l&amp;agrave;n nước lạnh, mắt nhắm chặt. Nhận ra cổ họng m&amp;igrave;nh đang kh&amp;aacute;t bỏng r&amp;aacute;t, t&amp;ocirc;i hứng một &amp;iacute;t nước từ v&amp;ograve;i v&amp;agrave; uống. M&amp;ugrave;i vị kh&amp;ocirc;ng được dễ chịu cho lắm, n&amp;oacute; giống như vị nước của bể bơi vậy.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Taki, dậy chưa vậy?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Đột nhi&amp;ecirc;n c&amp;oacute; tiếng đ&amp;agrave;n &amp;ocirc;ng cất l&amp;ecirc;n từ đằng xa, t&amp;ocirc;i giật m&amp;igrave;nh khẽ la l&amp;ecirc;n một tiếng nhỏ. &amp;ldquo;Taki&amp;rdquo;?&lt;/p&gt;

&lt;p&gt;&amp;ldquo;H&amp;ocirc;m nay l&amp;agrave; đến lượt con nấu cơm đ&amp;uacute;ng kh&amp;ocirc;ng? Ngủ nướng &amp;agrave;?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i nh&amp;igrave;n v&amp;agrave;o căn ph&amp;ograve;ng tr&amp;ocirc;ng c&amp;oacute; vẻ ra d&amp;aacute;ng một nơi gọi l&amp;agrave; ph&amp;ograve;ng kh&amp;aacute;ch, một người đ&amp;agrave;n &amp;ocirc;ng trung ni&amp;ecirc;n đang nh&amp;igrave;n t&amp;ocirc;i như đang c&amp;acirc;n nhắc điều g&amp;igrave; đ&amp;oacute;, &amp;ocirc;ng ta n&amp;oacute;i rồi liếc nh&amp;igrave;n những đĩa thức ăn đang đặt ngay ngắn tr&amp;ecirc;n b&amp;agrave;n.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Con xin lỗi&amp;rdquo;&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i trả lời một c&amp;aacute;ch phản xạ như vậy.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ta đi trước đ&amp;acirc;y nh&amp;eacute;, c&amp;oacute; s&amp;uacute;p miso đấy, nhớ ăn đi đấy nh&amp;eacute;.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Dạ, v&amp;acirc;ng&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Cho d&amp;ugrave; đi học trễ cũng cố gắng m&amp;agrave; đi học đi nh&amp;eacute;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Người trung ni&amp;ecirc;n vừa n&amp;oacute;i, vừa nhanh ch&amp;oacute;ng sắp xếp b&amp;aacute;t đĩa của m&amp;igrave;nh bỏ v&amp;agrave;o chậu rửa, nhẹ nh&amp;agrave;ng l&amp;aacute;ch qua t&amp;ocirc;i đang đứng như chết tr&amp;acirc;n ở đầu cửa v&amp;agrave; bắt đầu ra h&amp;agrave;nh lang xỏ gi&amp;agrave;y. Rất nhanh ch&amp;oacute;ng, &amp;ocirc;ng mở cửa, bước ra ngo&amp;agrave;i v&amp;agrave; đ&amp;oacute;ng vửa lại.&lt;/p&gt;

&lt;p&gt;C&amp;oacute; tiếng động như thể tiếng của một con chim ưng r&amp;eacute; l&amp;ecirc;n. T&amp;ocirc;i tho&amp;aacute;ng nghe thấy được.&lt;/p&gt;

&lt;p&gt;Nhưng rồi tất cả lại ch&amp;igrave;m v&amp;agrave;o y&amp;ecirc;n lặng.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Một giấc mơ k&amp;igrave; cục&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i tự lẩm bẩm trong miệng. T&amp;ocirc;i trở lại ph&amp;ograve;ng của m&amp;igrave;nh, v&amp;agrave; thử một lần nữa nh&amp;igrave;n quanh. Tr&amp;ecirc;n bốn bức tường được d&amp;aacute;n đặc k&amp;iacute;n những cơ man c&amp;aacute;c bức ph&amp;aacute;c thảo nh&amp;agrave; cửa, hay cầu đường. Tr&amp;ecirc;n s&amp;agrave;n nh&amp;agrave; vứt t&amp;aacute;n loạn đầy những cuốn tạp ch&amp;iacute;, giấy vẽ, tr&amp;ocirc;ng kh&amp;ocirc;ng kh&amp;aacute;c một cửa h&amp;agrave;ng b&amp;aacute;n đồ lưu niệm cũ kĩ, m&amp;agrave; nếu so s&amp;aacute;nh với gia đ&amp;igrave;nh t&amp;ocirc;i (thực ra th&amp;igrave; l&amp;agrave; bởi người b&amp;agrave; kh&amp;oacute; t&amp;iacute;nh), b&amp;agrave; sẽ bảo: &amp;ldquo;kh&amp;ocirc;ng thể tin được c&amp;oacute; một chỗ b&amp;agrave;y biện v&amp;ocirc; ph&amp;aacute;p v&amp;ocirc; thi&amp;ecirc;n như thế n&amp;agrave;y&amp;rdquo; vậy.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i đo&amp;aacute;n nơi đ&amp;acirc;y l&amp;agrave; một căn chung cư, bởi nh&amp;igrave;n v&amp;agrave;o kh&amp;ocirc;ng gian chật hẹp m&amp;agrave; suy ước như vậy. Mặc d&amp;ugrave;, đ&amp;acirc;y chỉ l&amp;agrave; trong giấc mơ, nhưng t&amp;ocirc;i cảm thấy n&amp;oacute; thực sự sống động như thật.&lt;/p&gt;

&lt;p&gt;Kh&amp;ocirc;ng ngờ tr&amp;iacute; tưởng tượng của t&amp;ocirc;i lại phong ph&amp;uacute; đến như vậy. Tương lai, hay t&amp;ocirc;i n&amp;ecirc;n đi theo ng&amp;agrave;nh mĩ thuật nhỉ?&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ring ring&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Tiếng chu&amp;ocirc;ng điện thoại ở x&amp;oacute; xỉnh n&amp;agrave;o vang l&amp;ecirc;n, rất đ&amp;uacute;ng thời điểm, k&amp;eacute;o t&amp;ocirc;i trở lại thực tế n&amp;agrave;y. T&amp;ocirc;i lo lắng lật tấm chăn nơi tiếng chu&amp;ocirc;ng ph&amp;aacute;t ra v&amp;agrave; nh&amp;igrave;n v&amp;agrave;o m&amp;agrave;n h&amp;igrave;nh đang hiện tin nhắn vừa được gửi đến:&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Đừng n&amp;oacute;i l&amp;agrave; đang ở nh&amp;agrave; đấy nh&amp;eacute;? Chổng phao c&amp;ocirc;ng l&amp;ecirc;n m&amp;agrave; chạy đi! &amp;ndash; Tsukasa&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Ớ, c&amp;aacute;i g&amp;igrave; vậy, ai l&amp;agrave; Tsukasa?&lt;/p&gt;

&lt;p&gt;M&amp;agrave; cho d&amp;ugrave; như thế n&amp;agrave;o, trước mắt t&amp;ocirc;i cần phải đi tới trường. T&amp;ocirc;i lại nh&amp;igrave;n quanh ph&amp;ograve;ng, v&amp;agrave; dừng mắt b&amp;ecirc;n cửa sổ, nơi treo một bộ đồng phục nam sinh. T&amp;ocirc;i đi tới với tay lấy, v&amp;agrave; dường như cảm nhận được, chuẩn bị c&amp;oacute; một t&amp;igrave;nh huống v&amp;ocirc; c&amp;ugrave;ng hiểm ngh&amp;egrave;o sắp xảy ra.&lt;/p&gt;

&lt;p&gt;&amp;Ocirc;i ch&amp;agrave; ch&amp;agrave;, ch&amp;iacute;nh l&amp;agrave; c&amp;aacute;i chuyện đ&amp;oacute;.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i muốn đi vệ sinh.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;[&amp;hellip;.]&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;To&amp;agrave;n th&amp;acirc;n t&amp;ocirc;i run l&amp;ecirc;n một chặp v&amp;agrave; đỏ lựng mặt, cho tới khi xong xu&amp;ocirc;i, t&amp;ocirc;i mới d&amp;aacute;m khe khẽ thở.&lt;/p&gt;

&lt;p&gt;Ra cơ thể của một người con trai l&amp;agrave; như vậy sao?&lt;/p&gt;

&lt;p&gt;Cuối c&amp;ugrave;ng th&amp;igrave; cũng xong được m&amp;agrave;n khốc liệt ấy, mặc d&amp;ugrave; cơ thể vẫn c&amp;ograve;n run lập cập.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i chưa bao giờ tưởng tượng được, để điều hướng được nước tiểu, phải d&amp;ugrave;ng tay để cố định &amp;ldquo;n&amp;oacute;&amp;rdquo; cả. Chưa bao giờ, c&amp;aacute;i vấn đề thải tiện lại trở n&amp;ecirc;n kinh khủng như l&amp;uacute;c n&amp;agrave;y. Trời ơi chết mất, c&amp;oacute; bị đi&amp;ecirc;n kh&amp;ocirc;ng? C&amp;oacute; bị ngu kh&amp;ocirc;ng cơ chứ. Bọn con trai đ&amp;uacute;ng l&amp;agrave; một lũ b&amp;ecirc;nh hoạn, trời đất t&amp;ocirc;i c&amp;ograve;n chưa bao giờ nh&amp;igrave;n thấy &amp;ldquo;n&amp;oacute;&amp;rdquo;. Trời đất, t&amp;ocirc;i vốn l&amp;agrave; một vu nữ m&amp;agrave;!&lt;/p&gt;

&lt;p&gt;Vẫn c&amp;ograve;n b&amp;agrave;ng ho&amp;agrave;ng với những g&amp;igrave; đ&amp;atilde; xảy ra, nước mắt t&amp;ocirc;i tr&amp;agrave;o ra một lần nữa. Vừa kh&amp;oacute;c th&amp;uacute;t th&amp;iacute;t, t&amp;ocirc;i vừa thay đồng phục, mở cửa rời khỏi nh&amp;agrave;.&amp;Aacute;nh s&amp;aacute;ng buổi sớm l&amp;ugrave;a v&amp;agrave;o mắt t&amp;ocirc;i một c&amp;aacute;ch rực rỡ nhất. T&amp;ocirc;i ngước l&amp;ecirc;n nh&amp;igrave;n.&lt;/p&gt;

&lt;p&gt;V&amp;agrave; ngay l&amp;uacute;c đ&amp;oacute;.&lt;/p&gt;

&lt;p&gt;Mắt t&amp;ocirc;i bị cho&amp;aacute;ng ngợp bởi phong cảnh ph&amp;iacute;a trước.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i dường như qu&amp;ecirc;n mất phải h&amp;iacute;t thở như thế n&amp;agrave;o.&lt;/p&gt;

&lt;p&gt;Nơi t&amp;ocirc;i đang đứng, l&amp;agrave; ở ban c&amp;ocirc;ng của một căn hộ cao tầng. Từ lan can, mở ra một c&amp;ocirc;ng vi&amp;ecirc;n được bọc phủ bởi một m&amp;agrave;u xanh tươi dịu m&amp;aacute;t. Bầu trời trong vắt, tạo n&amp;ecirc;n một bức tranh ho&amp;agrave;n hảo giữa m&amp;agrave;u xanh lục v&amp;agrave; m&amp;agrave;u xanh ngọc b&amp;iacute;ch. Những t&amp;ograve;a nh&amp;agrave; cao tầng nối nhau chạy san s&amp;aacute;t, từng t&amp;ograve;a nh&amp;agrave;, với h&amp;agrave;ng vạn những tấm k&amp;iacute;nh cửa sổ với đủ những m&amp;agrave;u sắc v&amp;agrave; đủ những h&amp;igrave;nh dạng to nhỏ, phản chiếu &amp;aacute;nh s&amp;aacute;ng mặt trời, trở n&amp;ecirc;n rực rỡ như những vi&amp;ecirc;n kim cương. Tất cả lọt v&amp;agrave;o mắt t&amp;ocirc;i, một c&amp;aacute;ch ho&amp;agrave;n hảo v&amp;agrave; diễm lệ nhất m&amp;agrave; t&amp;ocirc;i c&amp;oacute; thể tưởng tượng. Những t&amp;ograve;a cao ốc đ&amp;oacute;, chắc chắn l&amp;agrave; một nơi rất nổi tiếng, m&amp;agrave; với một người chưa từng l&amp;ecirc;n v&amp;ugrave;ng đ&amp;ocirc; hội, cũng c&amp;oacute; một c&amp;aacute;i cảm gi&amp;aacute;c như vậy. Ở những con đường đằng xa, xe cộ trở n&amp;ecirc;n nhỏ t&amp;yacute; hon như những m&amp;oacute;n đồ chơi, đang xếp từng h&amp;agrave;ng d&amp;agrave;i tr&amp;ocirc;i một c&amp;aacute;ch n&amp;aacute;o nhiệt. V&amp;agrave; điều l&amp;agrave;m t&amp;ocirc;i ấn tượng hơn tất cả, đ&amp;oacute; l&amp;agrave; được ngắm nh&amp;igrave;n tận mắt khung cảnh n&amp;agrave;y, vốn t&amp;ocirc;i chỉ được xem tr&amp;ecirc;n ti vi hay phim ảnh. Quang cảnh của th&amp;agrave;nh phố lớn nhất Nhật Bản. T&amp;ocirc;i sung sướng, vừa &amp;ocirc;m ngực vừa cố gắng k&amp;igrave;m n&amp;eacute;n để khỏi h&amp;eacute;t l&amp;ecirc;n th&amp;agrave;nh tiếng.&lt;/p&gt;

&lt;p&gt;Tokyo đấy!&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i x&amp;uacute;c động th&amp;igrave; thầm.&lt;/p&gt;

&lt;p&gt;Thế giới trước mắt t&amp;ocirc;i chưa bao giờ trở n&amp;ecirc;n rực rỡ như l&amp;uacute;c n&amp;agrave;y. T&amp;ocirc;i cố gắng trấn tĩnh điều h&amp;ograve;a hơi thở để kh&amp;ocirc;ng bị ngợp bởi cảm x&amp;uacute;c đang d&amp;acirc;ng l&amp;ecirc;n m&amp;atilde;nh liệt.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;N&amp;agrave;y, c&amp;aacute;i n&amp;agrave;y ấy mua ở đ&amp;acirc;u vậy?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;L&amp;aacute;t nữa về gh&amp;eacute; qua chỗ Nishiazabu kh&amp;ocirc;ng?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;T&amp;ocirc;i đang cố gắng đặt chỗ trước cho buổi diễn tiếp theo đ&amp;oacute;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;N&amp;agrave;y h&amp;ocirc;m nay trốn c&amp;acirc;u lạc bộ đi xem phim đi&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Tối nay t&amp;ocirc;i phải thay ca rồi&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;Ocirc;i trời, họ đang n&amp;oacute;i chuyện g&amp;igrave; vậy? Những người n&amp;agrave;y, l&amp;agrave; học sinh của Nhật Bản hiện đại đ&amp;acirc;y sao? Đ&amp;acirc;y gọi l&amp;agrave; &amp;ldquo;tự sướng&amp;rdquo; rồi đăng l&amp;ecirc;n c&amp;aacute;i gọi l&amp;agrave; &amp;ldquo;Facebook&amp;rdquo; đ&amp;acirc;y &amp;agrave;?&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i cố gắng n&amp;eacute;p m&amp;igrave;nh v&amp;agrave;o một b&amp;ecirc;n cửa, trong l&amp;uacute;c quan s&amp;aacute;t cẩn thận ph&amp;ograve;ng học để chọn thời điểm tốt m&amp;agrave; bước v&amp;agrave;o. May nhờ c&amp;oacute; định vị GPS ở điện thoại, m&amp;agrave; cuối c&amp;ugrave;ng t&amp;ocirc;i cũng c&amp;oacute; thể m&amp;ograve; được tới ng&amp;ocirc;i trường của người m&amp;agrave; t&amp;ocirc;i đang ở trong th&amp;acirc;n x&amp;aacute;c đang theo học. Mặc d&amp;ugrave; khi tới nơi, chu&amp;ocirc;ng đ&amp;atilde; reo tới giờ nghỉ trưa.&lt;/p&gt;

&lt;p&gt;Điều hấp dẫn hơn cả, ng&amp;ocirc;i trường n&amp;agrave;y, kh&amp;aacute;c xa so với c&amp;aacute;i trường cấp ba qu&amp;ecirc; m&amp;ugrave;a của t&amp;ocirc;i. C&amp;aacute;c lớp học đều được dựng một nửa bởi những tấm k&amp;iacute;nh trong vắt, cửa được sơn m&amp;agrave;u sắc rực rỡ, tr&amp;ocirc;ng tho&amp;aacute;ng qua giống như trong một trung t&amp;acirc;m hội nghị cấp cao thế giới vậy. Hoặc giống như một qu&amp;aacute;n bar được b&amp;agrave;y tr&amp;iacute; rất cầu k&amp;igrave;. Cậu con trai t&amp;ecirc;n &amp;ldquo;Tachibana Taki&amp;rdquo;, c&amp;ugrave;ng tuổi với t&amp;ocirc;i, nhưng đ&amp;atilde; được sống trong một thế giới như thế n&amp;agrave;y sao?&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i loay hoay với quyển sổ tay d&amp;agrave;nh cho học sinh để x&amp;aacute;c nhận một lần nữa t&amp;ecirc;n tuổi của cậu ch&amp;agrave;ng n&amp;agrave;y, liếc nh&amp;igrave;n tấm ảnh ch&amp;acirc;n dung rất ăn ảnh, t&amp;ocirc;i bất gi&amp;aacute;c hơi đỏ mặt.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ta-ki-&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ối&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Đột nhi&amp;ecirc;n c&amp;oacute; ai đ&amp;oacute; từ đằng sau qu&amp;agrave;ng lấy vai t&amp;ocirc;i l&amp;agrave;m t&amp;ocirc;i vuột một tiếng la khe khẽ. Một cậu ch&amp;agrave;ng đeo k&amp;iacute;nh nh&amp;igrave;n rất phong c&amp;aacute;ch của một trưởng ph&amp;ograve;ng kinh doanh đang vồ lấy vai của t&amp;ocirc;i, miệng cười toe to&amp;eacute;t. Th&amp;ocirc;i rồi ai đ&amp;acirc;y? Lần đầu ti&amp;ecirc;n trong đời, t&amp;ocirc;i đứng gần một cậu con trai đến như vậy.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;N&amp;agrave;y m&amp;agrave;y đừng n&amp;oacute;i l&amp;agrave; vừa mới tới đấy nh&amp;eacute;, trưa rồi đấy biết kh&amp;ocirc;ng? l&amp;agrave;m c&amp;aacute;i g&amp;igrave; ở đ&amp;acirc;y thế đầu đất? Đi ăn th&amp;ocirc;i&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Vừa n&amp;oacute;i, cậu con trai đeo k&amp;iacute;nh l&amp;ocirc;i t&amp;ocirc;i đi xềnh xệch. N&amp;agrave;y n&amp;agrave;y gượm gượm ch&amp;uacute;t, đừng l&amp;ocirc;i t&amp;ocirc;i như thế chứ!&lt;/p&gt;

&lt;p&gt;&amp;ldquo; N&amp;agrave;y đừng n&amp;oacute;i m&amp;agrave;y lờ tin nhắn của tao nh&amp;eacute;?&amp;rdquo; Cậu ta n&amp;oacute;i bằng một giọng c&amp;oacute; phần hơi sẵng. A, t&amp;ocirc;i bỗng nhi&amp;ecirc;n nhớ lại.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Tsu-ka-sa kun, phải kh&amp;ocirc;ng?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;C&amp;aacute;i g&amp;igrave;? Kun th&amp;ecirc;m v&amp;agrave;o đấy?, Tỏ vẻ hối lỗi biết điều với tao &amp;agrave;?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Kh&amp;ocirc;ng biết phải tra lời như thế n&amp;agrave;o l&amp;agrave; tốt, t&amp;ocirc;i l&amp;uacute;ng t&amp;uacute;ng v&amp;agrave; bắt đầu n&amp;oacute;i một c&amp;aacute;ch hơi lộn xộn. Cậu con trai t&amp;ecirc;n Tsukasa đ&amp;oacute; thả t&amp;ocirc;i ra nh&amp;igrave;n một c&amp;aacute;ch đầy kh&amp;oacute; hiểu.&lt;/p&gt;

&lt;p&gt;[&amp;hellip;]&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Lạc &amp;aacute;?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Cậu trai c&amp;oacute; khu&amp;ocirc;n mặt hơi ngờ nghệch, to con nhưng tr&amp;ocirc;ng tốt bụng v&amp;agrave; hiền l&amp;agrave;nh, hỏi t&amp;ocirc;i với một vẻ mặt kh&amp;ocirc;ng giấu nổi sự ngạc nhi&amp;ecirc;n.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;n&amp;agrave;y, &amp;yacute; m&amp;agrave;y bảo l&amp;agrave; m&amp;agrave;y đi lạc đến trường nh&amp;eacute;?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;Agrave; ừ.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i bắt đầu lựa lời. L&amp;uacute;c n&amp;agrave;y cả ba ch&amp;uacute;ng t&amp;ocirc;i đang ngồi một ng&amp;oacute;c tr&amp;ecirc;n tầng thượng tr&amp;ecirc;n c&amp;ugrave;ng của t&amp;ograve;a nh&amp;agrave;. Mặc d&amp;ugrave; l&amp;uacute;c n&amp;agrave;y đang l&amp;agrave; giờ nghỉ giải lao, nhưng chẳng ai dại dột l&amp;ecirc;n s&amp;acirc;n thượng giữa c&amp;aacute;i nắng chang chang m&amp;ugrave;a h&amp;egrave; cả. Ch&amp;uacute;ng t&amp;ocirc;i thoải m&amp;aacute;i tr&amp;ograve; chuyện m&amp;agrave; kh&amp;ocirc;ng sợ ai l&amp;agrave;m phiền.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;N&amp;oacute;i sao nhỉ, tớ&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;TỚ?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Takagi kun bỗng nhi&amp;ecirc;n ngạc nhi&amp;ecirc;n lặp lại lời tự xưng của t&amp;ocirc;i. Như thể t&amp;ocirc;i đang cố t&amp;igrave;nh thậm xưng vậy. Th&amp;ocirc;i chết rồi, b&amp;acirc;y giờ t&amp;ocirc;i đang l&amp;agrave; &amp;ldquo;Tachibana Taki&amp;rdquo; cơ m&amp;agrave;!&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;Agrave; ừ, t&amp;ocirc;i&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;ờ&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;M&amp;igrave;nh&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Hả?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Tao&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Ừ&amp;hellip;&lt;/p&gt;

&lt;p&gt;Cả hai, mặc d&amp;ugrave; vẫn c&amp;ograve;n kinh ngạc, nhưng c&amp;oacute; vẻ cũng đ&amp;atilde; chấp nhận với c&amp;aacute;ch xưng h&amp;ocirc; n&amp;agrave;y. Ra vậy, phải xưng l&amp;agrave; &amp;ldquo;tao&amp;rdquo; &amp;agrave;. Đ&amp;atilde; ghi nhớ!&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Tao, tao vui l&amp;eacute;m, Tokyo như một th&amp;agrave;nh phố nhộn nhịp như l&amp;ograve;a đang lễ hội đ&amp;oacute;a&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;Ecirc; m&amp;agrave;y n&amp;oacute;i giọng ở đ&amp;acirc;u đấy?&amp;rdquo; Takagi- kun hỏi giật lại.&lt;/p&gt;

&lt;p&gt;C&amp;aacute;i g&amp;igrave;, th&amp;ocirc;i chết rồi, t&amp;ocirc;i đỏ ch&amp;iacute;n mặt.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Taki, cơm đ&amp;acirc;u?&amp;rdquo; &amp;ndash; Tsukasa hỏi.&lt;/p&gt;

&lt;p&gt;&amp;Ocirc;i th&amp;ocirc;i, t&amp;ocirc;i đ&amp;atilde; qu&amp;ecirc;n mang theo rồi.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i cố gắng lục t&amp;igrave;m trong cặp s&amp;aacute;ch, bụng bắt đầu hơi s&amp;ocirc;i l&amp;ecirc;n bởi đống s&amp;uacute;p miso s&amp;aacute;ng nay đ&amp;atilde; bị ti&amp;ecirc;u h&amp;oacute;a hết b&amp;eacute;ng rồi. Tsukasa v&amp;agrave; Takagi vừa cười vừa nh&amp;igrave;n nhau như thể &amp;ldquo;thằng n&amp;agrave;y h&amp;ocirc;m nay bị sốt &amp;agrave;&amp;rdquo;.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Tsukasa, m&amp;agrave;y c&amp;oacute; g&amp;igrave; kh&amp;ocirc;ng?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;C&amp;oacute; sandwich trứng đ&amp;acirc;y, kẹp với thịt r&amp;aacute;n của m&amp;agrave;y nh&amp;eacute;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Trong t&amp;iacute;ch tắc, m&amp;oacute;n sandwich kẹp trứng v&amp;agrave; thịt r&amp;aacute;n đ&amp;atilde; được ho&amp;agrave;n th&amp;agrave;nh. Hai người d&amp;uacute;i v&amp;agrave;o tay t&amp;ocirc;i miếng b&amp;aacute;nh được l&amp;agrave;m nham nhở. Tự nhi&amp;ecirc;n t&amp;ocirc;i cảm động tới rưng rưng.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Cảm ơn&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Hai người bạn cười kh&amp;ocirc;ng n&amp;oacute;i g&amp;igrave;. H&amp;oacute;a ra con trai cũng th&amp;ocirc;ng minh ra phết đấy chứ? &amp;Ocirc; n&amp;agrave;y kh&amp;ocirc;ng được kh&amp;ocirc;ng được Mitsuha, m&amp;agrave;y kh&amp;ocirc;ng thể đồng thời th&amp;iacute;ch hai người được.&lt;/p&gt;

&lt;p&gt;M&amp;agrave; thực ra l&amp;uacute;c n&amp;agrave;y kh&amp;ocirc;ng phải l&amp;uacute;c nghĩ tới chuyện đ&amp;oacute;, quan trọng phải hưởng thụ Tokyo đ&amp;atilde; chứ.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;M&amp;agrave; n&amp;agrave;y, t&amp;iacute; nữa về c&amp;oacute; đi caf&amp;eacute; ch&amp;uacute;t kh&amp;ocirc;ng?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Takagi vừa nhai nhồm nho&amp;agrave;m thức ăn trong mồm vừa n&amp;oacute;i, nh&amp;igrave;n t&amp;ocirc;i một c&amp;aacute;ch ngờ vực.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ồ thế cũng được&amp;rdquo;, Tsukasa đang uống ừng ực chai nước vừa t&amp;igrave;m c&amp;aacute;ch trả lời. T&amp;ocirc;i tho&amp;aacute;ng lay động cơ thể, c&amp;aacute;i g&amp;igrave; cơ, đi đ&amp;acirc;u cơ?&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Caf&amp;eacute;, taki, m&amp;agrave;y c&amp;oacute; đi kh&amp;ocirc;ng?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;hả?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;L&amp;agrave; qu&amp;aacute;n caf&amp;eacute; ấy&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Hai người nghi&amp;ecirc;ng vai nh&amp;igrave;n t&amp;ocirc;i thật kĩ lưỡng như c&amp;acirc;n nhắc điều g&amp;igrave; đ&amp;oacute;. C&amp;ograve;n t&amp;ocirc;i th&amp;igrave; cực k&amp;igrave; cao hứng, n&amp;oacute;i thật lớn: &amp;ldquo;Caf&amp;eacute; sao, &amp;ocirc;i thật &amp;agrave;???&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Đ&amp;acirc;y ch&amp;iacute;nh l&amp;agrave; caf&amp;eacute; thật, kh&amp;ocirc;ng phải l&amp;agrave; qu&amp;aacute;n caf&amp;eacute; ở bến xe bu&amp;yacute;t đ&amp;acirc;u nh&amp;eacute;!&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;[&amp;hellip;.]&lt;/p&gt;

&lt;p&gt;Đ&amp;aacute;m ch&amp;oacute; nhỏ với đủ m&amp;agrave;u sắc v&amp;agrave; đủ chủng loại, được chủ nh&amp;acirc;n của ch&amp;uacute;ng tỉa t&amp;oacute;t tr&amp;ocirc;ng như những c&amp;ocirc; ca sĩ thần tượng, ngồi chễm chệ tr&amp;ecirc;n những chiếc ghế b&amp;agrave;nh như thể ch&amp;uacute;ng cũng thực sự l&amp;agrave; những vị kh&amp;aacute;ch của qu&amp;aacute;n, đang vẫy đu&amp;ocirc;i nh&amp;igrave;n ch&amp;uacute;ng t&amp;ocirc;i bước v&amp;agrave;o. Qu&amp;aacute;n caf&amp;eacute; với những chiếc b&amp;agrave;n gỗ được b&amp;agrave;y tr&amp;iacute; một c&amp;aacute;ch tinh tế, đổ b&amp;oacute;ng xuống nền nh&amp;agrave; bởi &amp;aacute;nh ho&amp;agrave;ng h&amp;ocirc;n chiều t&amp;agrave;n. B&amp;ecirc;n trong qu&amp;aacute;n qu&amp;aacute; nửa l&amp;agrave; kh&amp;aacute;ch ngoại quốc. Nhiều người kh&amp;aacute;ch, chắc tới một phần ba, đeo k&amp;iacute;nh r&amp;acirc;m, số qu&amp;aacute; nửa đội mũ lưỡi trai s&amp;agrave;nh điệu. Cũng c&amp;oacute; người mặc vest, như l&amp;agrave; nh&amp;acirc;n vi&amp;ecirc;n của một c&amp;ocirc;ng ty n&amp;agrave;o đ&amp;oacute;.&lt;/p&gt;

&lt;p&gt;&amp;Ocirc;i đ&amp;acirc;y l&amp;agrave; chốn n&amp;agrave;o đ&amp;acirc;y? Đ&amp;acirc;y chẳng phải l&amp;agrave; qu&amp;aacute;n caf&amp;eacute; m&amp;agrave; chỉ những người sang chảnh mới v&amp;agrave;o sao?&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Trần nh&amp;agrave; được b&amp;agrave;i tr&amp;iacute; tốt qu&amp;aacute; nhỉ&amp;rdquo;, &amp;ldquo;&amp;Ocirc;i quả nhi&amp;ecirc;n đ&amp;acirc;y l&amp;agrave; đồ thủ c&amp;ocirc;ng c&amp;ograve;n g&amp;igrave;&amp;rdquo;. Nh&amp;igrave;n sự trang ho&amp;agrave;ng lộng lẫy của cửa h&amp;agrave;ng, t&amp;ocirc;i thực sự kh&amp;ocirc;ng thể giấu nổi niềm sung sướng với hai người bạn bằng một vẻ phấn kh&amp;iacute;ch một c&amp;aacute;ch th&amp;aacute;i qu&amp;aacute;. Những vị kh&amp;aacute;ch cũng c&amp;oacute; cảm gi&amp;aacute;c vui l&amp;acirc;y với t&amp;ocirc;i l&amp;uacute;c n&amp;agrave;y, họ kh&amp;aacute;o nhau như thể bọn t&amp;ocirc;i đến đ&amp;acirc;y chỉ v&amp;igrave; qu&amp;aacute; h&amp;acirc;m mộ qu&amp;aacute;n caf&amp;eacute; n&amp;agrave;y vậy.&lt;/p&gt;

&lt;p&gt;Đ&amp;acirc;y đ&amp;uacute;ng l&amp;agrave; một sở th&amp;iacute;ch tao nh&amp;atilde;, chẳng phải đ&amp;oacute; l&amp;agrave; sở th&amp;iacute;ch của một học sinh cao trung c&amp;ograve;n g&amp;igrave;. T&amp;ocirc;i gật g&amp;ugrave; như vậy.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;N&amp;agrave;y, gọi đồ được chưa Taki?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Tsukasa-kun chăm ch&amp;uacute; nh&amp;igrave;n t&amp;ocirc;i. Vội v&amp;agrave;ng ngừng việc cố gắng nh&amp;igrave;n mọi ng&amp;oacute;c ng&amp;aacute;ch của qu&amp;aacute;n, t&amp;ocirc;i vồ lấy cuốn thực đơn được trang tr&amp;iacute; bằng rất nhiều những hoa l&amp;aacute; c&amp;agrave;nh sặc sỡ, bắt đầu xem x&amp;eacute;t.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;Ocirc;i cha mẹ ơi, c&amp;aacute;i b&amp;aacute;nh n&amp;agrave;y, bằng một th&amp;aacute;ng tiền ăn của tao&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;M&amp;agrave;y l&amp;agrave; người của thời đại n&amp;agrave;o thế&amp;rdquo; Takagi cười cười hỏi?&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;Agrave; nhỉ&amp;rdquo;&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i đau khổ c&amp;acirc;n nhắc, m&amp;agrave; th&amp;ocirc;i, đ&amp;acirc;y l&amp;agrave; mơ m&amp;agrave;. Kệ đi, tiền cũng l&amp;agrave; của cậu Tachibana Taki c&amp;ograve;n g&amp;igrave;. Cứ ăn cho thỏa th&amp;iacute;ch th&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;[&amp;hellip;]&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Qủa l&amp;agrave; một giấc mơ hạnh ph&amp;uacute;c.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i sung sướng kết luận như vậy, sau khi ăn hết một c&amp;aacute;i b&amp;aacute;nh kem cỡ bự v&amp;agrave; được l&amp;agrave;m rất cao cấp, phủ k&amp;iacute;n bởi kem, xo&amp;agrave;i v&amp;agrave; quả việt quất. Chưa bao giờ như b&amp;acirc;y giờ, t&amp;ocirc;i cảm thấy tr&amp;agrave;n trề sự m&amp;atilde;n nguyện đến như thế.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ring ring&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Tiếng chu&amp;ocirc;ng điện thoại lại đột ngột vang l&amp;ecirc;n. C&amp;aacute;i g&amp;igrave; đ&amp;acirc;y, một th&amp;ocirc;ng b&amp;aacute;o nhỏ chạy ngang qua m&amp;agrave;n h&amp;igrave;nh.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Th&amp;ocirc;i chết rồi, l&amp;agrave;m thế n&amp;agrave;o b&amp;acirc;y giờ, tao muộn giờ l&amp;agrave;m th&amp;ecirc;m mất rồi. H&amp;igrave;nh như điếm trưởng đang giận lắm.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ơ, ca của m&amp;agrave;y l&amp;agrave; h&amp;ocirc;m nay &amp;agrave;&amp;rdquo; Takagi hỏi, &amp;ldquo;Thế th&amp;igrave; m&amp;agrave;y n&amp;ecirc;n đến nhanh đi&amp;rdquo; Tsukasa tiếp lời.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;Agrave; ừ&amp;rdquo;, t&amp;ocirc;i ấp &amp;uacute;ng, l&amp;uacute;ng t&amp;uacute;ng đứng l&amp;ecirc;n, cố gắng lựa lời sao cho hợp l&amp;yacute; nhất.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Sao thế&amp;rdquo;, hai người bạn ng&amp;acirc;y người hỏi.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Th&amp;igrave; l&amp;agrave;, chỗ tao đang l&amp;agrave;m th&amp;ecirc;m ấy, tao qu&amp;ecirc;n địa chỉ rồi&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Hả???&amp;rdquo;&lt;/p&gt;

&lt;p&gt;C&amp;oacute; phần gần như &amp;aacute; khẩu, hai đứa ch&amp;uacute;ng n&amp;oacute; dường như kh&amp;ocirc;ng c&amp;ograve;n lời n&amp;agrave;o với thằng bạn dường như vừa bị x&amp;oacute;a sạch mọi k&amp;iacute; ức.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;[&amp;hellip;..]&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;N&amp;agrave;y, b&amp;agrave;n kia vẫn chưa đưa đồ ra được &amp;agrave;?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Taki! Lấy order của b&amp;agrave;n số 20 đi&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Taki, c&amp;aacute;i m&amp;oacute;n n&amp;agrave;y t&amp;ocirc;i đ&amp;atilde; bảo l&amp;agrave; hết rồi c&amp;ograve;n g&amp;igrave;?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;C&amp;oacute; b&amp;agrave;n vẫn chưa đưa h&amp;oacute;a đơn thanh to&amp;aacute;n k&amp;igrave;a&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Taki, m&amp;agrave;y l&amp;agrave;m sao thế, đang vướng mọi người k&amp;igrave;a&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Taki, l&amp;agrave;m ăn cho đ&amp;agrave;ng ho&amp;agrave;ng đi!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;TAKI!!!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Chỗ n&amp;agrave;y dường như l&amp;agrave; một nh&amp;agrave; h&amp;agrave;ng c&amp;oacute; vẻ tương đối sang trọng phong c&amp;aacute;ch &amp;Yacute;. M&amp;agrave; dường như c&amp;aacute;ch b&amp;agrave;i tr&amp;iacute; lộng lẫy tưởng như chỉ c&amp;oacute; ở tr&amp;ecirc;n phim ảnh. Trần nh&amp;agrave; được treo một chiếc đ&amp;egrave;n ch&amp;ugrave;m to, c&amp;oacute; thể xoay v&amp;agrave; tỏa ra một thứ &amp;aacute;nh s&amp;aacute;ng lung linh như ở trong một l&amp;acirc;u đ&amp;agrave;i qu&amp;yacute; tộc. Cậu Tachibana Taki n&amp;agrave;y, mặc một bộ đồ bồi b&amp;agrave;n lịch l&amp;atilde;m, cổ đeo nơ c&amp;aacute;nh bướm, đang l&amp;agrave;m ở vị tr&amp;iacute; dường như l&amp;agrave; bận rộn nhất. L&amp;uacute;c n&amp;agrave;y, t&amp;ocirc;i đang cố gắng chịu đựng sự giận giữ của bếp trưởng, của kh&amp;aacute;ch h&amp;agrave;ng khi l&amp;agrave;m mọi thứ rối tung l&amp;ecirc;n: viết nhầm m&amp;oacute;n kh&amp;aacute;ch gọi, đưa nhầm m&amp;oacute;n cho b&amp;agrave;n kh&amp;aacute;c. M&amp;agrave; n&amp;oacute;i cho c&amp;ugrave;ng, th&amp;igrave; đ&amp;acirc;y l&amp;agrave; lần đầu ti&amp;ecirc;n t&amp;ocirc;i l&amp;agrave;m th&amp;ecirc;m việc như thế n&amp;agrave;y cơ m&amp;agrave;! Thậm ch&amp;iacute; đ&amp;acirc;y l&amp;agrave; lần đầu ti&amp;ecirc;n t&amp;ocirc;i biết thế n&amp;agrave;o l&amp;agrave; l&amp;agrave;m b&amp;aacute;n thời gian ấy chứ! M&amp;agrave; c&amp;aacute;i điều n&amp;agrave;y t&amp;ocirc;i đ&amp;acirc;u c&amp;oacute; muốn mơ như vậy đ&amp;acirc;u cơ chứ! Tất cả l&amp;agrave; tại cậu ta, Tachibana Taki!&lt;/p&gt;

&lt;p&gt;&amp;ldquo;N&amp;agrave;y n&amp;agrave;y, cậu g&amp;igrave; kia ơi&amp;rdquo;&lt;/p&gt;

&lt;p&gt;C&amp;oacute; tiếng ai đ&amp;oacute; như đang gọi t&amp;ocirc;i. T&amp;ocirc;i hoang mang quay lại nh&amp;igrave;n (m&amp;agrave; t&amp;ocirc;i kh&amp;ocirc;ng phải l&amp;agrave; cậu nh&amp;eacute;!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Đ&amp;oacute; l&amp;agrave; người đ&amp;agrave;n &amp;ocirc;ng mặc một bộ c&amp;aacute;nh di&amp;ecirc;m d&amp;uacute;a, cổ đeo một chiếc v&amp;ograve;ng v&amp;agrave;ng nh&amp;igrave;n rất nổi, tay đeo nhẫn tr&amp;ocirc;ng thực sự rất ngầu. Khu&amp;ocirc;n mặt của hắn lộ vẻ du c&amp;ocirc;n. &amp;Agrave; m&amp;agrave; thực ra c&amp;aacute;i cảm gi&amp;aacute;c n&amp;agrave;y, ở th&amp;agrave;nh phố ngay cạnh t&amp;ocirc;i nếu đi đến nh&amp;agrave; ga đ&amp;oacute;, cũng thỉnh thoảng bắt gặp.&amp;nbsp; Bằng một nụ cười c&amp;oacute; phần hơi gượng &amp;eacute;p, hắn ta cất tiếng:&lt;/p&gt;

&lt;p&gt;&amp;ldquo;N&amp;egrave; trong c&amp;aacute;i piza n&amp;agrave;y, c&amp;oacute; c&amp;aacute;i tăm n&amp;egrave;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Dạ?&amp;rdquo;&lt;img alt=&quot;&quot; src=&quot;/public/nguoidung/Images/a66abb5684c45962d887564f8346e8d/images/T%E1%BB%95ng%20h%E1%BB%A3p%20H%C3%ACnh%20n%E1%BB%81n%20your%20name%20cho%20%C4%91i%E1%BB%87n%20tho%E1%BA%A1i%20v%C3%A0%20m%C3%A1y%20t%C3%ADnh.png&quot; style=&quot;height:720px; width:405px&quot; /&gt;&lt;/p&gt;
', 1, CAST(0x0000ADE0015876F3 AS DateTime), CAST(0x0000ADE0015876F3 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (2077, 1102, 1034, N'2', N'&lt;p&gt;2&lt;/p&gt;
', 1, CAST(0x0000ADE2015644D6 AS DateTime), CAST(0x0000ADE2015644D6 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (2078, 1102, 1034, N'3', N'&lt;p&gt;3&lt;/p&gt;
', 1, CAST(0x0000ADE2015649A1 AS DateTime), CAST(0x0000ADE2015649A1 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (2079, 1102, 1034, N'4', N'&lt;p&gt;4&lt;/p&gt;
', 1, CAST(0x0000ADE201564DCC AS DateTime), CAST(0x0000ADE201564DCC AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (2080, 1102, 1034, N'5', N'&lt;p&gt;5&lt;/p&gt;
', 1, CAST(0x0000ADE2015663B5 AS DateTime), CAST(0x0000ADE2015663B5 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (2082, 1102, 1034, N'Chương 8', N'&lt;p&gt;8&lt;/p&gt;
', 1, CAST(0x0000ADE2016D10FF AS DateTime), CAST(0x0000ADE2016D10FF AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (2083, 1102, 1034, N'12', N'&lt;p&gt;12345&lt;/p&gt;
', 1, CAST(0x0000ADE2016FF00F AS DateTime), CAST(0x0000ADE2016FF00F AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (2108, 2101, 1034, N'Chương 1: Dị thế tà quân', N'&lt;div&gt;
&lt;p&gt;Hắn thậm ch&amp;iacute; c&amp;ograve;n chưa kịp mở mắt nhưng tay phải theo bản năng vỗ một c&amp;aacute;i xuống đất nhảy l&amp;ecirc;n. Đ&amp;acirc;y l&amp;agrave; một nơi phức tạp, sự sống v&amp;agrave; c&amp;aacute;i chết lu&amp;ocirc;n cận kề nhau, v&amp;igrave; vậy kh&amp;ocirc;ng thể ở l&amp;acirc;u!&lt;/p&gt;

&lt;p&gt;Đ&amp;acirc;y l&amp;agrave; suy nghĩ đầu ti&amp;ecirc;n của hắn khi tỉnh lại, l&amp;agrave; cảm gi&amp;aacute;c gần như đ&amp;atilde; trở th&amp;agrave;nh bản năng của một s&amp;aacute;t thủ vĩ đại!&lt;/p&gt;

&lt;p&gt;Cơ thể thuận thế định bật l&amp;ecirc;n nhưng bỗng nhi&amp;ecirc;n c&amp;aacute;nh tay của hắn lại trở n&amp;ecirc;n mềm nhũn, ho&amp;agrave;n to&amp;agrave;n kh&amp;ocirc;ng c&amp;ograve;n khả năng chống đỡ nổi sức nặng của th&amp;acirc;n thể n&amp;ecirc;n &amp;quot;bịch&amp;quot; một tiếng, hắn lại nặng nề ng&amp;atilde; trở lại.&lt;/p&gt;

&lt;p&gt;Sau một thời gian định thần, Qu&amp;acirc;n T&amp;agrave; v&amp;ocirc; c&amp;ugrave;ng kinh h&amp;atilde;i. Chuyện n&amp;agrave;y rốt cuộc l&amp;agrave; chuyện g&amp;igrave;? Ngay sau đ&amp;oacute; hắn đột nhi&amp;ecirc;n ph&amp;aacute;t hiện ph&amp;iacute;a dưới m&amp;igrave;nh l&amp;agrave; một chiếc giường mềm mại.! Đưa mắt nh&amp;igrave;n xung quanh, th&amp;igrave; ra m&amp;igrave;nh đang nằm trong một gian ph&amp;ograve;ng được trang tr&amp;iacute; lộng lẫy. Chỉ c&amp;oacute; điều gian ph&amp;ograve;ng n&amp;agrave;y chẳng c&amp;oacute; một c&amp;aacute;i g&amp;igrave; ngoại trừ một chiếc b&amp;agrave;n bốn cạnh c&amp;ugrave;ng một c&amp;aacute;i giường lớn m&amp;agrave; m&amp;igrave;nh đang nằm tr&amp;ecirc;n đ&amp;oacute;. Thực ra chiếc giường lớn n&amp;agrave;y &amp;iacute;t nhất phải ngủ được tới bảy t&amp;aacute;m người, thậm ch&amp;iacute; bảy t&amp;aacute;m người nằm tr&amp;ecirc;n đ&amp;oacute; c&amp;ograve;n kh&amp;ocirc;ng c&amp;oacute; cảm gi&amp;aacute;c chật chội.&lt;/p&gt;

&lt;p&gt;&amp;ldquo; Chuyện n&amp;agrave;y l&amp;agrave; sao? Ta kh&amp;ocirc;ng phải vẫn c&amp;ograve;n đang chiến đấu với người ta sao? Tại sao giờ lại ở tr&amp;ecirc;n giường thế n&amp;agrave;y?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Giờ ph&amp;uacute;t n&amp;agrave;y, suy nghĩ của Qu&amp;acirc;n T&amp;agrave; vẫn c&amp;ograve;n đang lưu lại trước khi ngủ say, hoặc phải n&amp;oacute;i l&amp;agrave;...tạm thời c&amp;ograve;n đang suy nghĩ về thời khắc cuối c&amp;ugrave;ng ở kiếp trước.&lt;/p&gt;

&lt;p&gt;.................................................. .....&lt;/p&gt;

&lt;p&gt;Qu&amp;acirc;n T&amp;agrave; l&amp;agrave; một s&amp;aacute;t thủ, hơn nữa l&amp;agrave; một kim b&amp;agrave;i s&amp;aacute;t thủ v&amp;ocirc; c&amp;ugrave;ng vĩ đại. Từ khi hắn xuất đạo tới nay đ&amp;atilde; được năm năm nhưng mỗi lần ra tay mọi việc đều rất thuận lợi v&amp;agrave; c&amp;oacute; x&amp;aacute;c xuất th&amp;agrave;nh c&amp;ocirc;ng đạt tới trăm phần trăm. Một th&amp;agrave;nh t&amp;iacute;ch m&amp;agrave; người xưa chưa từng c&amp;oacute;. Bởi vậy m&amp;agrave; hắn đ&amp;atilde; trở th&amp;agrave;nh s&amp;aacute;t thủ đứng đầu trong S&amp;aacute;t Thủ bảng. M&amp;agrave; c&amp;aacute;i t&amp;ecirc;n &amp;quot;T&amp;agrave; Qu&amp;acirc;n&amp;quot; n&amp;agrave;y cũng v&amp;igrave; thế m&amp;agrave; đứng vị tr&amp;iacute; h&amp;agrave;ng đầu trong giới hắc đạo. M&amp;agrave; hắn c&amp;ograve;n c&amp;oacute; một vinh quang kh&amp;aacute;c nữa, ch&amp;iacute;nh l&amp;agrave; được đứng thứ nhất trong suốt ba năm r&amp;ograve;ng của Huyền Thưởng bảng, một bảng danh s&amp;aacute;ch liệt k&amp;ecirc; những nh&amp;acirc;n vật bị đuổi giết được treo giải thưởng tr&amp;ecirc;n to&amp;agrave;n thế giới.&lt;/p&gt;

&lt;p&gt;Nhưng ở đ&amp;oacute; cũng kh&amp;ocirc;ng phải l&amp;agrave; kh&amp;ocirc;ng c&amp;oacute; người d&amp;aacute;m tiếp nhận m&amp;agrave; l&amp;agrave; kh&amp;ocirc;ng c&amp;oacute; người c&amp;oacute; khả năng tiếp nhận vụ đ&amp;oacute;. Bởi v&amp;igrave; kh&amp;ocirc;ng ai c&amp;oacute; bản lĩnh để giết chết vị s&amp;aacute;t thủ gần như đ&amp;atilde; trở th&amp;agrave;nh truyền thuyết n&amp;agrave;y.&lt;/p&gt;

&lt;p&gt;Đ&amp;atilde; từng c&amp;oacute; rất nhiều s&amp;aacute;t thủ hạng nhất tiếp nhận nhiệm vụ kia, nhưng m&amp;agrave; bọn họ đều đ&amp;atilde; chết, c&amp;ograve;n T&amp;agrave; qu&amp;acirc;n lại vẫn c&amp;ograve;n sống ph&amp;acirc;y ph&amp;acirc;y.&lt;/p&gt;

&lt;p&gt;Ở nước Y c&amp;oacute; một &amp;ocirc;ng tr&amp;ugrave;m đ&amp;atilde; treo giải một trăm triệu đ&amp;ocirc; la Mỹ để mua lấy t&amp;iacute;nh mạng của T&amp;agrave; qu&amp;acirc;n. M&amp;agrave; hai s&amp;aacute;t thủ tiếp nhận vụ mua b&amp;aacute;n n&amp;agrave;y th&amp;igrave; cả hai đều l&amp;agrave; những s&amp;aacute;t thủ h&amp;agrave;ng đầu c&amp;ugrave;ng nổi danh với T&amp;agrave; qu&amp;acirc;n tr&amp;ecirc;n thế giới. Nhưng sau ba ng&amp;agrave;y, cả hai người n&amp;agrave;y đều chuyển nghề đi b&amp;aacute;n muối v&amp;agrave; uống tr&amp;agrave; với c&amp;aacute;c cụ cao tằng cố tổ. V&amp;agrave; cũng v&amp;igrave; đ&amp;oacute; m&amp;agrave; sau đ&amp;oacute; kh&amp;ocirc;ng c&amp;ograve;n người n&amp;agrave;o đồng &amp;yacute; nhận c&amp;aacute;i nhiệm vụ tử vong n&amp;agrave;y, bọn họ mỗi người đều k&amp;iacute;nh nhi viễn chi, cho d&amp;ugrave; giải thưởng c&amp;oacute; tiếp tục tăng hết lần n&amp;agrave;y tới lần kh&amp;aacute;c nhưng từ đầu đến cuối kh&amp;ocirc;ng người n&amp;agrave;o d&amp;aacute;m nhận.&lt;/p&gt;

&lt;p&gt;Tiền tuy c&amp;oacute; nhiều nhưng kh&amp;ocirc;ng c&amp;ograve;n mạng để hưởng th&amp;igrave; c&amp;ograve;n &amp;yacute; nghĩa g&amp;igrave; nữa chứ!&lt;/p&gt;

&lt;p&gt;C&amp;aacute;i t&amp;ecirc;n T&amp;agrave; qu&amp;acirc;n trở th&amp;agrave;nh cấm kỵ tr&amp;ecirc;n Huyền Thưởng bảng của hắc đạo.&lt;/p&gt;

&lt;p&gt;M&amp;agrave; c&amp;aacute;i t&amp;ecirc;n T&amp;agrave; qu&amp;acirc;n cũng uy hiếp đến hắc đạo của c&amp;aacute;c quốc gia. C&amp;oacute; rất nhiều người biết tới kỳ nh&amp;acirc;n T&amp;agrave; qu&amp;acirc;n nhưng kh&amp;ocirc;ng c&amp;oacute; một ai hiểu r&amp;otilde; vị Vua s&amp;aacute;t thủ T&amp;agrave; qu&amp;acirc;n n&amp;agrave;y rốt cuộc l&amp;agrave; c&amp;oacute; d&amp;aacute;ng vẻ như thế n&amp;agrave;o cả, v&amp;agrave; chung quy hắn l&amp;agrave; loại người ra sao đ&amp;acirc;y?&lt;/p&gt;

&lt;p&gt;T&amp;iacute;nh c&amp;aacute;ch của Qu&amp;acirc;n T&amp;agrave;, đ&amp;uacute;ng l&amp;agrave; người cũng như t&amp;ecirc;n. Một chữ: T&amp;agrave;! Hai chữ: Rất T&amp;agrave;! Ba chữ: V&amp;ocirc; c&amp;ugrave;ng T&amp;agrave;!&lt;/p&gt;

&lt;p&gt;Hắn cho tới b&amp;acirc;y giờ đều chuy&amp;ecirc;n quyền độc đo&amp;aacute;n, kh&amp;ocirc;ng hề li&amp;ecirc;n thủ với bất cứ kẻ n&amp;agrave;o, lại c&amp;agrave;ng kh&amp;ocirc;ng c&amp;oacute; một nửa người bạn. Hơn nữa, hắn nhận một vụ l&amp;agrave;m ăn th&amp;igrave; kh&amp;ocirc;ng chỉ muốn xem x&amp;eacute;t người mua m&amp;agrave; c&amp;ograve;n muốn chọn cả mục ti&amp;ecirc;u nữa.&lt;/p&gt;

&lt;p&gt;Hắn nếu nh&amp;igrave;n người thu&amp;ecirc; m&amp;agrave; kh&amp;ocirc;ng vừa mắt, cho d&amp;ugrave; tiền c&amp;oacute; nhiều hơn đi nữa th&amp;igrave; c&amp;oacute; mới hắn đi giết một t&amp;ecirc;n ăn m&amp;agrave;y kh&amp;ocirc;ng c&amp;oacute; năng lực phản kh&amp;aacute;ng, hắn cũng sẽ kh&amp;ocirc;ng ch&amp;uacute;t do dự cự tuyệt. Nhưng hắn nếu thấy một người n&amp;agrave;o đ&amp;oacute; đ&amp;aacute;ng chết th&amp;igrave; hắn lại tự động xuống tay rồi sau đ&amp;oacute; t&amp;igrave;m nh&amp;agrave; đối thủ của kẻ đ&amp;oacute; đ&amp;ograve;i th&amp;ugrave; lao. M&amp;agrave; thường thường những nh&amp;agrave; đ&amp;oacute; cũng chưa từng thu&amp;ecirc; hắn ta, thậm ch&amp;iacute; ngay cả nghe tới t&amp;ecirc;n của hắn c&amp;ograve;n chưa từng nghe qua.&lt;/p&gt;

&lt;p&gt;Tương truyền.... c&amp;oacute; một lần, hắn giết một t&amp;ecirc;n bu&amp;ocirc;n người tội &amp;aacute;c t&amp;agrave;y trời nhưng lại kh&amp;ocirc;ng t&amp;igrave;m thấy khổ chủ. Kh&amp;ocirc;ng c&amp;ograve;n c&amp;aacute;ch n&amp;agrave;o kh&amp;aacute;c hắn đ&amp;agrave;nh đ&amp;ograve;i một tiểu c&amp;ocirc; nương bị lừa b&amp;aacute;n được một v&amp;agrave;i cắc tiền xu, c&amp;ograve;n n&amp;oacute;i một c&amp;aacute;ch h&amp;ugrave;ng hồn rằng, t&amp;ocirc;i cho tới giờ chưa từng l&amp;agrave;m một vụ mua b&amp;aacute;n n&amp;agrave;o m&amp;agrave; kh&amp;ocirc;ng c&amp;oacute; th&amp;ugrave; lao cả, tuyệt đối kh&amp;ocirc;ng c&amp;oacute; c&amp;aacute;i g&amp;igrave; ngoại lệ................&lt;/p&gt;

&lt;p&gt;T&amp;iacute;nh c&amp;aacute;ch n&amp;agrave;y của hắn cũng khiến những người hiểu hắn như sư phụ c&amp;ugrave;ng c&amp;aacute;c sư huynh đệ cũng kh&amp;ocirc;ng biết phải n&amp;oacute;i g&amp;igrave; hơn....&lt;/p&gt;

&lt;p&gt;Tương truyền............ c&amp;oacute; một lần, khi sư phụ của hắn ta đi giải quyết nỗi buồn bị hắn ch&amp;ocirc;m giấy trong WC đi. Kh&amp;ocirc;ng c&amp;oacute; giấy, sự phụ hắn liền gọi hắn mang tới ch&amp;uacute;t giấy vệ sinh. Kết quả hắn nh&amp;acirc;n cơ hội đ&amp;ograve;i năm trăm ngh&amp;igrave;n đ&amp;ocirc; ph&amp;iacute; dịch vụ, khiến sư phụ hắn biết thế n&amp;agrave;o l&amp;agrave; gian xảo&lt;/p&gt;

&lt;p&gt;C&amp;ograve;n tại sao sư phụ hắn lại phải chịu quả đắng.....&lt;/p&gt;

&lt;p&gt;Đ&amp;oacute; l&amp;agrave; bởi v&amp;igrave; ng&amp;agrave;y đ&amp;oacute; hắn gọi tất cả sư huynh muội tới cửa WC, c&amp;ograve;n mới cả mấy vị mỹ nữ tới tham quan nữa...............&lt;/p&gt;

&lt;p&gt;Nhưng m&amp;agrave; hắn cho rằng thiếu s&amp;oacute;t lớn nhất của bản th&amp;acirc;n ch&amp;iacute;nh l&amp;agrave; hắn thật sự rất c&amp;oacute; l&amp;ograve;ng thương y&amp;ecirc;u. L&amp;agrave;m một s&amp;aacute;t thủ, hơn nữa l&amp;agrave; một s&amp;aacute;t thủ h&amp;agrave;ng đầu hai tay d&amp;iacute;nh đầy m&amp;aacute;u tươi n&amp;ecirc;n những lời n&amp;agrave;y từng khiến v&amp;ocirc; số người khịt mũi khinh bỉ.&lt;/p&gt;

&lt;p&gt;Chẳng qua gia hỏa n&amp;agrave;y tự xưng c&amp;oacute; l&amp;ograve;ng thương y&amp;ecirc;u kỳ thật cũng c&amp;oacute; ch&amp;uacute;t căn cứ.&lt;/p&gt;

&lt;p&gt;Trong nước, hắn rất kh&amp;ocirc;ng th&amp;iacute;ch nh&amp;igrave;n cảnh người gi&amp;agrave;u ch&amp;egrave;n &amp;eacute;p người ngh&amp;egrave;o, v&amp;agrave; nhất l&amp;agrave; tr&amp;ocirc;ng thấy cảnh quan lại h&amp;agrave; hiếp d&amp;acirc;n ch&amp;uacute;ng. Ở nước ngo&amp;agrave;i, hắn kh&amp;ocirc;ng nh&amp;igrave;n nổi cảnh c&amp;oacute; người ức hiếp người nước m&amp;igrave;nh. V&amp;igrave; t&amp;iacute;nh c&amp;aacute;ch của hắn l&amp;agrave; một người &amp;quot;Y&amp;ecirc;u nước&amp;quot;, v&amp;agrave; cũng v&amp;igrave; thế m&amp;agrave; hắn kh&amp;ocirc;ng biết đ&amp;atilde; gặp phải bao nhi&amp;ecirc;u tai họa ngập trời.&lt;/p&gt;

&lt;p&gt;Nhưng một người như vậy vẫn c&amp;oacute; v&amp;ocirc; số người đổ x&amp;ocirc; đi thu&amp;ecirc; hắn. Đ&amp;oacute; l&amp;agrave; bởi v&amp;igrave; kỹ thuật bắn s&amp;uacute;ng của hắn chẳng những si&amp;ecirc;u quần, b&amp;aacute;ch ph&amp;aacute;t b&amp;aacute;ch tr&amp;uacute;ng m&amp;agrave; c&amp;ograve;n c&amp;oacute; một th&amp;acirc;n v&amp;otilde; nghệ quỷ thần kh&amp;oacute; lường. Bất luận tu vi quyền chưởng hay đao kiếm đều kh&amp;ocirc;ng tầm thường. Đ&amp;oacute; mới l&amp;agrave; nguy&amp;ecirc;n nh&amp;acirc;n lớn nhất gi&amp;uacute;p tỉ lệ th&amp;agrave;nh c&amp;ocirc;ng trong c&amp;aacute;c nhiệm vụ của hắn trước sau vẫn l&amp;agrave; trăm phần trăm. Th&amp;agrave;nh t&amp;iacute;ch n&amp;agrave;y mặc d&amp;ugrave; chưa chắc sau n&amp;agrave;y sẽ kh&amp;ocirc;ng c&amp;oacute;, nhưng tuyệt đối l&amp;agrave; chưa từng c&amp;oacute; từ trước tới giờ.&lt;/p&gt;

&lt;p&gt;Hắn ho&amp;agrave;n to&amp;agrave;n xứng đ&amp;aacute;ng l&amp;agrave; chung cực s&amp;aacute;t thủ trong giới s&amp;aacute;t thủ!&lt;/p&gt;

&lt;p&gt;Cũng l&amp;agrave; một cường giả đỉnh phong trong giới s&amp;aacute;t thủ, l&amp;agrave; người duy nhất chưa bao giờ bị thất thủ tr&amp;ecirc;n to&amp;agrave;n thế giới từ trước tới giờ!&lt;/p&gt;

&lt;p&gt;Nhưng vị s&amp;aacute;t thủ kim b&amp;agrave;i n&amp;agrave;y từ trong cốt tủy lại l&amp;agrave; một thanh ni&amp;ecirc;n c&amp;oacute; khuynh hướng d&amp;acirc;n tộc chủ nghĩa cực đoan.&lt;/p&gt;

&lt;p&gt;Hắn nghe n&amp;oacute;i gi&amp;aacute;n điệp nước M khai quật được một b&amp;iacute; bảo v&amp;ocirc; gi&amp;aacute; tại n&amp;uacute;i C&amp;ocirc;n L&amp;ocirc;n Trung Quốc. Tin tức n&amp;agrave;y lộ ra khiến một người c&amp;oacute; khuynh hướng d&amp;acirc;n tộc chủ nghĩa cực đoan như Qu&amp;acirc;n T&amp;agrave; nổi giận.&lt;/p&gt;

&lt;p&gt;Bảo vật của Trung Quốc rộng lớn sao c&amp;oacute; thể rơi v&amp;agrave;o tay người nước M được cơ chứ?!&lt;/p&gt;

&lt;p&gt;Qu&amp;acirc;n T&amp;agrave; đơn thương độc m&amp;atilde; giết tới. Hắn một m&amp;igrave;nh cuồng ngạo tới c&amp;ugrave;ng cực chọi với cả gần một trăm đặc c&amp;ocirc;ng của nước M, thi triển hết mọi thủ đoạn từ &amp;aacute;m s&amp;aacute;t, cuối c&amp;ugrave;ng l&amp;agrave; tới đ&amp;aacute;nh ch&amp;iacute;nh diện. Sau khi giết chết hơn bảy mươi t&amp;ecirc;n, hắn cuối c&amp;ugrave;ng cũng cướp được b&amp;iacute; bảo kia v&amp;agrave;o tay. M&amp;agrave; l&amp;uacute;c đ&amp;oacute; đ&amp;aacute;m đặc c&amp;ocirc;ng của nước M đều bị giết tới vỡ gan vỡ mật n&amp;ecirc;n nếu hắn muốn bỏ chạy th&amp;igrave; nhất định c&amp;oacute; thể ung dung m&amp;agrave; rời khỏi đi. M&amp;agrave; trong l&amp;ograve;ng Qu&amp;acirc;n T&amp;agrave; cũng tuyệt đối nắm chắc được điều n&amp;agrave;y.&lt;/p&gt;

&lt;p&gt;Nhưng sau khi tay hắn tiếp x&amp;uacute;c với kiện b&amp;iacute; bảo kia- một pho Lung Linh bảo th&amp;aacute;p lớn bằng một b&amp;agrave;n tay th&amp;igrave; một việc thần kỳ ngo&amp;agrave;i &amp;yacute; muốn tới cực điểm liền xuất hiện. B&amp;agrave;n tay hắn bị thương cầm tiểu th&amp;aacute;p kia th&amp;igrave; đột nhi&amp;ecirc;n to&amp;agrave;n th&amp;acirc;n bỗng dưng cảm thấy t&amp;ecirc; liệt, đến cả cử động cũng kh&amp;ocirc;ng thể cử động được, thậm ch&amp;iacute; cho d&amp;ugrave; l&amp;agrave; nh&amp;aacute;y mắt cũng kh&amp;ocirc;ng thể l&amp;agrave;m được.&lt;/p&gt;

&lt;p&gt;Hắn kh&amp;ocirc;ng hề ch&amp;uacute; &amp;yacute; tới một việc, m&amp;aacute;u tươi từ miệng vết thương của m&amp;igrave;nh đang kh&amp;ocirc;ng ngừng chảy ra rồi nhập v&amp;agrave;o b&amp;ecirc;n trong tiểu th&amp;aacute;p tr&amp;ocirc;ng rất tinh xảo, rất lung linh v&amp;agrave; cũng rất t&amp;agrave; m&amp;ocirc;n kia.&lt;/p&gt;

&lt;p&gt;K&amp;iacute; ức cuối c&amp;ugrave;ng của hắn ch&amp;iacute;nh l&amp;agrave;, kh&amp;ocirc;ng dưới năm mươi quả lựu đạn loại mini đang bay về ph&amp;iacute;a hắn, đồng thời hơn hai mươi n&amp;ograve;ng s&amp;uacute;ng c&amp;aacute;c loại cũng hướng về ph&amp;iacute;a hắn m&amp;agrave; bắt đ&amp;acirc;u khạc lửa. M&amp;agrave; uổng cho một th&amp;acirc;n bản lĩnh của hắn, một th&amp;acirc;n bản lĩnh c&amp;oacute; thể trong một lần giết chết được những kẻ n&amp;agrave;y nhưng thật l&amp;agrave; bi ai, bi ai tới c&amp;ugrave;ng cực, bi ai v&amp;igrave; hắn muốn động của kh&amp;ocirc;ng thể động được.&lt;/p&gt;

&lt;p&gt;Cảm gi&amp;aacute;c n&amp;agrave;y thật khiến người ta nổi đi&amp;ecirc;n!&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Kh&amp;ocirc;ng thể tưởng được Qu&amp;acirc;n T&amp;agrave; ta tung ho&amp;agrave;nh một đời, kh&amp;ocirc;ng c&amp;oacute; địch thủ l&amp;agrave; lại chết oan chết uổng trong tay những t&amp;ecirc;n n&amp;agrave;y. Chỉ c&amp;oacute; điều, &amp;ocirc;ng đ&amp;acirc;y c&amp;oacute; chết cũng kh&amp;ocirc;ng t&amp;iacute;nh l&amp;agrave; bị lỗ. Cả đời n&amp;agrave;y, những t&amp;ecirc;n tham quan &amp;ocirc; lại, cường h&amp;agrave;o &amp;aacute;c b&amp;aacute; rồi đặc c&amp;ocirc;ng của c&amp;aacute;c quốc gia, chết dưới tay ta tổng cộng c&amp;oacute; tới hơn một ng&amp;agrave;n t&amp;ecirc;n. Thế cũng coi như l&amp;agrave; ho&amp;agrave; vốn rồi! Đ&amp;aacute;ng! Rất đ&amp;aacute;ng!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Người kh&amp;aacute;c th&amp;igrave; mỉm cười dưới cửu tuyền th&amp;igrave; &amp;ocirc;ng đ&amp;acirc;y cũng cười h&amp;ocirc; hố m&amp;agrave; xuống địa ngục!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Một đời n&amp;agrave;y ta sống oanh oanh liệt liệt! V&amp;ocirc; c&amp;ugrave;ng ti&amp;ecirc;u s&amp;aacute;i! Kh&amp;ocirc;ng thẹn với lương t&amp;acirc;m!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Mặc d&amp;ugrave; ta giết kh&amp;ocirc;ng &amp;iacute;t người nhưng những người đ&amp;oacute; tuyệt đối kh&amp;ocirc;ng c&amp;oacute; một t&amp;ecirc;n n&amp;agrave;o l&amp;agrave; kh&amp;ocirc;ng đ&amp;aacute;ng giết cả! Nếu đ&amp;atilde; như vậy th&amp;igrave; c&amp;oacute; giết, cũng kh&amp;ocirc;ng hối hận! Cho d&amp;ugrave; c&amp;oacute; v&amp;igrave; thế m&amp;agrave; xuống địa ngục th&amp;igrave; c&amp;oacute; l&amp;agrave;m sao?!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Giết giết giết giết giết giết! Giết hết mọi thứ dơ bẩn thối n&amp;aacute;t! Gột rửa tất cả mọi tội &amp;aacute;c! Ngay cả ta c&amp;oacute; l&amp;agrave;m một s&amp;aacute;t thủ bị người ta khinh miệt th&amp;igrave; c&amp;oacute; l&amp;agrave;m sao?!!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ung dung sống tr&amp;ecirc;n thế gian th&amp;igrave; liệu c&amp;oacute; thể sống một c&amp;aacute;ch ph&amp;oacute;ng kho&amp;aacute;ng như ta kh&amp;ocirc;ng? Quả l&amp;agrave; v&amp;ocirc; c&amp;ugrave;ng sảng kho&amp;aacute;i?!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;- Ha ha ha...........&lt;/p&gt;

&lt;p&gt;Qu&amp;acirc;n T&amp;agrave; nghĩ tới đ&amp;acirc;y m&amp;agrave; kh&amp;ocirc;ng khỏi cười cả ra tiếng.&lt;/p&gt;

&lt;p&gt;- Thiếu gia, người... người l&amp;agrave;m sao vậy?&lt;/p&gt;

&lt;p&gt;Một giọng n&amp;oacute;i rụt r&amp;egrave; vang l&amp;ecirc;n b&amp;ecirc;n cạnh, h&amp;igrave;nh như l&amp;agrave; bị h&amp;agrave;nh động vừa rồi của hắn l&amp;agrave;m cho sợ h&amp;atilde;i m&amp;agrave; đang c&amp;oacute; xu hướng muốn kh&amp;oacute;c. Tiếp theo đ&amp;oacute;, một b&amp;agrave;n tay nhỏ b&amp;eacute; lạnh gi&amp;aacute; sờ l&amp;ecirc;n tr&amp;aacute;n hắn.&lt;/p&gt;

&lt;p&gt;&amp;quot; Thiếu gia? Ta hiện tại kh&amp;ocirc;ng phải đang nằm mơ chứ? Kh&amp;ocirc;ng phải tới địa ngục rồi &amp;agrave;?!&amp;quot;&lt;/p&gt;

&lt;p&gt;Qu&amp;acirc;n T&amp;agrave; giật m&amp;igrave;nh rồi đột ngột mở mắt. Tiếp đ&amp;oacute;, một k&amp;yacute; ức lạ lẫm đột nhi&amp;ecirc;n d&amp;acirc;ng l&amp;ecirc;n từ đ&amp;aacute;y l&amp;ograve;ng hắn! K&amp;yacute; ức lạ lẫm đ&amp;oacute; như thủy triều tiến v&amp;agrave;o trong đầu hắn. M&amp;agrave; Qu&amp;acirc;n T&amp;agrave; giống như bị s&amp;eacute;t đ&amp;aacute;nh, giật m&amp;igrave;nh ngơ ng&amp;aacute;c!&lt;/p&gt;

&lt;p&gt;&amp;ldquo; M&amp;igrave;nh đang... đang ở trong một th&amp;acirc;n thể kh&amp;aacute;c sao? Đầu thai chuyển thế ư? Nhưng tr&amp;iacute; nhớ kiếp trước sao vẫn c&amp;ograve;n r&amp;otilde; r&amp;agrave;ng vậy? Chẳng lẽ m&amp;igrave;nh chưa uống canh Mạnh b&amp;agrave;?! Hay l&amp;agrave; mượn x&amp;aacute;c ho&amp;agrave;n hồn?!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Một l&amp;agrave; xuy&amp;ecirc;n việt?&lt;/p&gt;

&lt;p&gt;Hai l&amp;agrave; phụ thể sống lại?!&lt;/p&gt;

&lt;p&gt;Qu&amp;acirc;n T&amp;agrave; trừng mắt sững sờ tới nửa ng&amp;agrave;y cũng kh&amp;ocirc;ng hiểu chuyện g&amp;igrave; đang xảy ra. Cả nửa ng&amp;agrave;y hắn cũng chẳng buồn nh&amp;uacute;c nh&amp;iacute;ch.&lt;/p&gt;

&lt;p&gt;Chỉ khi b&amp;agrave;n tay nhỏ b&amp;eacute; đang kinh h&amp;atilde;i kia quơ quơ v&amp;agrave;i c&amp;aacute;i trước mặt hắn th&amp;igrave; đ&amp;uacute;ng l&amp;uacute;c đ&amp;oacute; Qu&amp;acirc;n T&amp;agrave; đột nhi&amp;ecirc;n hớn hở k&amp;ecirc;u:&lt;/p&gt;

&lt;p&gt;- Con mẹ n&amp;oacute;! Quả nhi&amp;ecirc;n người tốt tất c&amp;oacute; b&amp;aacute;o đ&amp;aacute;p! Bất kể l&amp;agrave; chuyện g&amp;igrave; đang diễn ra nhưng d&amp;ugrave; thế n&amp;agrave;o đi nữa &amp;ocirc;ng đ&amp;acirc;y vẫn chưa chết. Kh&amp;ocirc;ng ngờ lại c&amp;oacute; chuyện tốt như vậy. Xem ra kiếp trước bổn đại gia nhất định đ&amp;atilde; t&amp;iacute;ch lũy được v&amp;ocirc; số c&amp;ocirc;ng đức, chắc chắn l&amp;agrave; v&amp;ocirc; số c&amp;ocirc;ng đức? ! Ha ha ha.....&lt;/p&gt;

&lt;p&gt;Một tiếng k&amp;ecirc;u sợ h&amp;atilde;i v&amp;acirc;ng l&amp;ecirc;n. Một tiểu c&amp;ocirc; nương chừng mười tuổi đang run run rẩy rẩy đứng ở b&amp;ecirc;n cạnh. Đ&amp;ocirc;i mắt to tr&amp;ograve;n xinh đẹp kinh hoảng nh&amp;igrave;n chằm chằm v&amp;agrave;o vị &amp;quot;thiếu gia&amp;quot; đang gặp &amp;aacute;c mộng trước mặt. Th&amp;acirc;n thể nhỏ nhắn xinh xắn kh&amp;ocirc;ng ngừng run rẩy, sắc mặt t&amp;aacute;i nhợt, tựa như một con chim c&amp;uacute;t đang v&amp;ocirc; c&amp;ugrave;ng sợ h&amp;atilde;i.&lt;/p&gt;

&lt;p&gt;Lại một tiếng k&amp;ecirc;u sợ h&amp;atilde;i nữa vang l&amp;ecirc;n. Một tiếng k&amp;ecirc;u nghe thật l&amp;agrave; th&amp;ecirc; lương. V&amp;agrave; tiếng k&amp;ecirc;u sợ h&amp;atilde;i đ&amp;oacute; ch&amp;iacute;nh l&amp;agrave; từ miệng Qu&amp;acirc;n T&amp;agrave; ph&amp;aacute;t ra. Bởi v&amp;igrave; hắn đột nhi&amp;ecirc;n ph&amp;aacute;t hiện giọng n&amp;oacute;i vừa rồi của m&amp;igrave;nh lại the th&amp;eacute; giống như giọng của một nữ h&amp;agrave;i tử vậy. Chẳng lẻ c&amp;aacute;i kia của m&amp;igrave;nh mất rồi. Kh&amp;ocirc;ng phải chứ! Phản ứng đầu ti&amp;ecirc;n của Qu&amp;acirc;n T&amp;agrave; đ&amp;oacute; l&amp;agrave; kh&amp;ocirc;ng th&amp;egrave;m để &amp;yacute; tới h&amp;igrave;nh tượng, kh&amp;ocirc;ng quả tới c&amp;oacute; một tiểu muội muội đang đứng b&amp;ecirc;n người, một trảo chụp v&amp;agrave;o đũng quần của m&amp;igrave;nh.&lt;/p&gt;

&lt;p&gt;Cuối c&amp;ugrave;ng khi đ&amp;atilde; nắm được c&amp;aacute;i khối thịt quen thuộc kia Qu&amp;acirc;n T&amp;agrave; mới thở d&amp;agrave;i một hơi. &amp;Ocirc;ng trời đối xử với ta thật kh&amp;ocirc;ng tệ! Vẫn c&amp;oacute; c&amp;aacute;i thứ n&amp;agrave;y! Haizzz!&lt;/p&gt;

&lt;p&gt;Vừa rồi l&amp;agrave;m ta sợ muốn chết. &amp;Ocirc;ng đ&amp;acirc;y c&amp;ograve;n muốn xuy&amp;ecirc;n v&amp;agrave;o c&amp;aacute;i đ&amp;oacute; đ&amp;oacute;...... Qu&amp;acirc;n T&amp;agrave; lau mồ h&amp;ocirc;i lạnh.&lt;/p&gt;

&lt;p&gt;Lấy lại b&amp;igrave;nh tĩnh, Qu&amp;acirc;n T&amp;agrave; bắt đầu xem x&amp;eacute;t th&amp;acirc;n thể mới của m&amp;igrave;nh.&lt;/p&gt;

&lt;p&gt;Kinh mạch ứ đọng. Cơ thể nh&amp;atilde;o nhoẹt. C&amp;aacute;c đốt ng&amp;oacute;n tay cứng ngắc.....&lt;/p&gt;

&lt;p&gt;&amp;quot; C&amp;aacute;i th&amp;acirc;n thể n&amp;agrave;y sao hỗn tạp vậy? Cơ thể lại yếu đuối nữa? Kh&amp;ocirc;ng xong rồi!&amp;quot;&lt;/p&gt;

&lt;p&gt;Qu&amp;acirc;n T&amp;agrave; thầm th&amp;igrave;.&lt;/p&gt;

&lt;p&gt;&amp;quot; Nhưng kh&amp;ocirc;ng sao, chỉ cần kinh mạch kh&amp;ocirc;ng bị vỡ th&amp;igrave; chỉ cần ba tới bảy năm, bổn đại gia lại đứng tr&amp;ecirc;n đỉnh của thế giới!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Sau khi quyết định xong, Qu&amp;acirc;n T&amp;agrave; l&amp;uacute;c n&amp;agrave;y mới để &amp;yacute; tới m&amp;igrave;nh giờ đang ở một thế giới c&amp;oacute; vẻ ho&amp;agrave;n to&amp;agrave;n xa lạ!&lt;/p&gt;

&lt;p&gt;Ở đ&amp;acirc;y sao lại kh&amp;ocirc;ng giống địa cầu m&amp;agrave; m&amp;igrave;nh quen thuộc vậy? M&amp;igrave;nh ở đ&amp;acirc;y thực sự kh&amp;ocirc;ng quen, c&amp;aacute;i g&amp;igrave; cũng kh&amp;ocirc;ng biết, c&amp;aacute;i g&amp;igrave; cũng kh&amp;ocirc;ng hiểu. Với cả ph&amp;eacute;p tắc của thế giới n&amp;agrave;y l&amp;agrave; g&amp;igrave;? V&amp;agrave; thế giới n&amp;agrave;y c&amp;oacute; những c&amp;aacute;i g&amp;igrave;?&lt;/p&gt;

&lt;p&gt;Tho&amp;aacute;ng suy nghĩ qua mấy vấn đề đ&amp;oacute;, với tố chất t&amp;acirc;m l&amp;yacute; cả vị s&amp;aacute;t thủ l&amp;atilde;nh huyết vốn được gọi l&amp;agrave; T&amp;agrave; qu&amp;acirc;n n&amp;agrave;y kh&amp;ocirc;ng ngờ cũng c&amp;oacute; ch&amp;uacute;t ch&amp;aacute;n nản.&lt;/p&gt;

&lt;p&gt;Nh&amp;igrave;n đồ d&amp;ugrave;ng cũng chiếc gường c&amp;oacute; phong c&amp;aacute;ch cổ xưa, cả bộ quần &amp;aacute;o đặc th&amp;ugrave; của thời đại n&amp;agrave;y tr&amp;ecirc;n người lập tức niềm vui sướng khi biết được m&amp;igrave;nh vẫn chưa chết, hơn nữa c&amp;ograve;n xuy&amp;ecirc;n việt dần dần trở n&amp;ecirc;n b&amp;igrave;nh tĩnh rồi tiếp đ&amp;oacute; t&amp;acirc;m tư hắn bỗng rối loạn.......&lt;/p&gt;

&lt;p&gt;Th&amp;igrave; ra....... th&amp;igrave; ra thực sự l&amp;agrave; m&amp;igrave;nh c&amp;oacute; thể sống lại..............&lt;/p&gt;

&lt;p&gt;Ban đầu điều n&amp;agrave;y sẽ khiến hắn v&amp;ocirc; c&amp;ugrave;ng phấn chấn nhưng về sau từ đ&amp;aacute;y l&amp;ograve;ng hắn lại d&amp;acirc;ng l&amp;ecirc;n nỗi niềm mất m&amp;aacute;t c&amp;ugrave;ng sự thống khổ tới v&amp;ocirc; c&amp;ugrave;ng. Đ&amp;oacute; l&amp;agrave; một cảm gi&amp;aacute;c vi diệu dập dềnh kh&amp;ocirc;ng ổn định, khiến mũi hắn hơi cảm thấy chua x&amp;oacute;t, khiến mắt hắn cũng c&amp;oacute; ch&amp;uacute;t g&amp;igrave; đ&amp;oacute; cay cay, khiến l&amp;ograve;ng người c&amp;oacute; ch&amp;uacute;t buồn phiền. Qu&amp;acirc;n T&amp;agrave; tự giễu một c&amp;acirc;u, kh&amp;oacute;a miệng khẽ nhếch l&amp;ecirc;n. Cả đời hắn gần như chưa bao giờ rơi lệ m&amp;agrave; vừa rồi su&amp;yacute;t nữa l&amp;agrave; hắn đ&amp;atilde; rơi lệ.&lt;/p&gt;

&lt;p&gt;Cố quốc xa x&amp;ocirc;i, cố hương c&amp;aacute;ch trở! Ta vốn tưởng rằng m&amp;igrave;nh c&amp;oacute; thể rất ti&amp;ecirc;u s&amp;aacute;i, vốn tưởng rằng m&amp;igrave;nh c&amp;oacute; thể dễ d&amp;agrave;ng bu&amp;ocirc;ng bỏ. Nhưng khi mọi việc xảy ra ở trước mắt v&amp;agrave; tất cả đều rất ch&amp;acirc;n thực th&amp;igrave; ta mới đột nhi&amp;ecirc;n ph&amp;aacute;t hiện ra rằng, ta kh&amp;ocirc;ng bu&amp;ocirc;ng được. Ta thực sự kh&amp;ocirc;ng bu&amp;ocirc;ng bỏ được!&lt;/p&gt;

&lt;p&gt;Vốn tưởng rằng tr&amp;ecirc;n đời n&amp;agrave;y sớm đ&amp;atilde; kh&amp;ocirc;ng c&amp;ograve;n g&amp;igrave; li&amp;ecirc;n quan, kh&amp;ocirc;ng c&amp;ograve;n g&amp;igrave; để m&amp;igrave;nh m&amp;igrave;nh phải vướng bận. Nhưng giờ m&amp;igrave;nh mới ph&amp;aacute;t hiện ra, những thứ m&amp;agrave; m&amp;igrave;nh quan t&amp;acirc;m lại nhiều v&amp;ocirc; kể! M&amp;agrave; quan trọng nhất ch&amp;iacute;nh l&amp;agrave; tại đ&amp;acirc;y, một nơi lạ lẫm n&amp;agrave;y m&amp;igrave;nh kh&amp;ocirc;ng thể t&amp;igrave;m thấy những c&amp;aacute;i, những phần thuộc về ch&amp;iacute;nh m&amp;igrave;nh! thuộc về ch&amp;iacute;nh m&amp;igrave;nh.........&lt;/p&gt;

&lt;p&gt;Từ trong cốt tủy, ta vĩnh viễn từ đầu tới cuối chỉ l&amp;agrave; một người ngo&amp;agrave;i............&lt;/p&gt;

&lt;p&gt;Qu&amp;acirc;n T&amp;agrave; lẳng lặng nhắm hai mắt lại, nhẹ nh&amp;agrave;ng nghi&amp;ecirc;ng đầu v&amp;agrave; khi kh&amp;ocirc;ng c&amp;ograve;n ai c&amp;oacute; thể nh&amp;igrave;n thấy được, một giọt nước mắt nhẹ nh&amp;agrave;ng, kh&amp;ocirc;ng một tiếng động chảy xuống...........&lt;/p&gt;

&lt;p&gt;Đ&amp;acirc;y l&amp;agrave; giọt nước mắt đầu ti&amp;ecirc;n của hai kiếp l&amp;agrave;m người!&lt;/p&gt;

&lt;p&gt;Nam nhi kh&amp;ocirc;ng rơi lệ chỉ v&amp;igrave; chưa tới l&amp;uacute;c đau l&amp;ograve;ng!&lt;/p&gt;

&lt;hr /&gt;
&lt;p&gt;Kinh ngạc nh&amp;igrave;n khu&amp;ocirc;n mặt trẻ tuổi c&amp;oacute; ch&amp;uacute;t non nớt, gầy yếu với đ&amp;ocirc;i m&amp;ocirc;i mỏng, cặp l&amp;ocirc;ng mi nghi&amp;ecirc;ng d&amp;agrave;i, đ&amp;ocirc;i mắt hơi ch&amp;uacute;t d&amp;agrave;i nhỏ đầy vẻ sắc b&amp;eacute;n b&amp;ecirc;n trong chiếc gương đồng trước mặt m&amp;agrave; Qu&amp;acirc;n T&amp;agrave; chỉ biết cười khổ một tiếng, th&amp;igrave; th&amp;agrave;o n&amp;oacute;i:&lt;/p&gt;

&lt;p&gt;- Kh&amp;ocirc;ng thể kh&amp;ocirc;ng n&amp;oacute;i bộ dạng của t&amp;ecirc;n gia hỏa n&amp;agrave;y cũng kh&amp;ocirc;ng tệ, rất thanh t&amp;uacute; đ&amp;oacute;! Chỉ l&amp;agrave; c&amp;oacute; ch&amp;uacute;t g&amp;igrave; đ&amp;oacute; yếu đuối, ẻo lả, lại hơi mặt trắng!&lt;/p&gt;

&lt;p&gt;Nhớ lại kiếp trước, m&amp;igrave;nh thật uy phong biết bao, dữ tợn tới mức n&amp;agrave;o? Mặc d&amp;ugrave; bề ngo&amp;agrave;i cũng kh&amp;ocirc;ng c&amp;oacute; g&amp;igrave; đặc biết khiến người ta y&amp;ecirc;u th&amp;iacute;ch, mắt c&amp;oacute; nhỏ, mũi c&amp;oacute; thấp một ch&amp;uacute;t, về tổng thể th&amp;igrave; c&amp;oacute; ch&amp;uacute;t đại ch&amp;uacute;ng nhưng bản th&amp;acirc;n m&amp;igrave;nh ch&amp;iacute;nh l&amp;agrave; một nam nh&amp;acirc;n ti&amp;ecirc;u chuẩn! Tiểu bạch kiểm n&amp;agrave;y tuy rằng l&amp;agrave; nam nh&amp;acirc;n, l&amp;agrave; đại trượng phu nhưng m&amp;igrave;nh lại khinh thường những kẻ như vậy. Song kh&amp;ocirc;ng thể tưởng được rằng khi xuy&amp;ecirc;n việt m&amp;igrave;nh lại xuy&amp;ecirc;n tới một t&amp;ecirc;n tiểu bạch kiểm ti&amp;ecirc;u chuẩn như thế n&amp;agrave;y, nhất l&amp;agrave; tiểu bạch kiểm n&amp;agrave;y lại c&amp;ograve;n rất l&amp;agrave; xinh đẹp nữa...........&lt;/p&gt;

&lt;p&gt;&amp;quot; Anh bạn, l&amp;agrave; anh mang ta tới đ&amp;acirc;y sao? &amp;quot;&lt;/p&gt;

&lt;p&gt;Tay phải nhẹ nh&amp;agrave;ng vuốt ve hoa văn h&amp;igrave;nh th&amp;aacute;p nhỏ tr&amp;ecirc;n cổ tay tr&amp;aacute;i m&amp;agrave; hoa văn bảo th&amp;aacute;p kia rất giống một h&amp;igrave;nh xăm. Tr&amp;ecirc;n khu&amp;ocirc;n mặt Qu&amp;acirc;n T&amp;agrave; lộ vẻ ki&amp;ecirc;u ngạo. Ngay cả khi ta xuy&amp;ecirc;n việt th&amp;igrave; thứ n&amp;agrave;y vẫn ở trong tay người Trung Quốc m&amp;agrave; kh&amp;ocirc;ng bị rơi v&amp;agrave;o tay bọn Dương quỷ tử.&lt;/p&gt;

&lt;p&gt;Hoa văn bảo th&amp;aacute;p n&amp;agrave;y giống y hệt c&amp;aacute;i Linh Lung tiểu th&amp;aacute;p m&amp;agrave; Qu&amp;acirc;n T&amp;agrave; đ&amp;atilde; liều mạng cướp đoạt! Mặc d&amp;ugrave; n&amp;oacute; đ&amp;atilde; biến th&amp;agrave;nh một hoa văn nhỏ b&amp;eacute; tr&amp;ecirc;n tay m&amp;igrave;nh nhưng Qu&amp;acirc;n T&amp;agrave; c&amp;oacute; thể khẳng định rằng đ&amp;acirc;y ch&amp;iacute;nh l&amp;agrave; c&amp;aacute;i tiểu th&amp;aacute;p kia! Ch&amp;iacute;nh hắn cũng kh&amp;ocirc;ng biết v&amp;igrave; sao trong l&amp;ograve;ng lại c&amp;oacute; cảm gi&amp;aacute;c n&amp;agrave;y, rất ch&amp;acirc;n thực, m&amp;agrave; cũng rất huyền diệu.&lt;/p&gt;

&lt;p&gt;Thấy hoa văn tiểu th&amp;aacute;p, niềm an ủi duy nhất c&amp;oacute; thể được m&amp;igrave;nh mang từ kiếp trước đến n&amp;agrave;y m&amp;agrave; trong l&amp;ograve;ng Qu&amp;acirc;n T&amp;agrave; bỗng nổi s&amp;oacute;ng dữ dội, tới ch&amp;iacute;nh hắn cũng kh&amp;ocirc;ng hiểu đ&amp;acirc;y l&amp;agrave; cảm gi&amp;aacute;c g&amp;igrave; nữa. Chỉ l&amp;agrave; do t&amp;acirc;m t&amp;iacute;nh của hắn lu&amp;ocirc;n trầm ổn n&amp;ecirc;n tr&amp;ecirc;n khu&amp;ocirc;n mặt kh&amp;ocirc;ng để lộ ra bất cứ một c&amp;aacute;i g&amp;igrave; cả.&lt;/p&gt;

&lt;p&gt;Vẫn l&amp;atilde;nh đạm, vẫn trầm tĩnh như xưa!&lt;/p&gt;

&lt;p&gt;Đột nhi&amp;ecirc;n, hoa văn tiểu th&amp;aacute;p đang bị hắn nhẹ nh&amp;agrave;ng vuốt ve bỗng ph&amp;aacute;t ra một hồi &amp;aacute;nh s&amp;aacute;ng m&amp;agrave;u v&amp;agrave;ng, sau đ&amp;oacute; Qu&amp;acirc;n T&amp;agrave; đột nhi&amp;ecirc;n cảm thấy nặng đầu, tiếp theo trong đầu hắn h&amp;igrave;nh như c&amp;oacute; th&amp;ecirc;m một c&amp;aacute;i g&amp;igrave; đ&amp;oacute;, m&amp;agrave; hoa văn tr&amp;ecirc;n tay kia cũng đột nhi&amp;ecirc;n biến mất!&lt;/p&gt;

&lt;p&gt;&amp;quot; Chuyện lạ!&amp;quot;&lt;/p&gt;

&lt;p&gt;Lắc lắc đầu, Qu&amp;acirc;n T&amp;agrave; cảm thấy kỳ qu&amp;aacute;i. Tr&amp;ograve; n&amp;agrave;y đ&amp;uacute;ng thật l&amp;agrave; kỳ qu&amp;aacute;i. Trước ti&amp;ecirc;n một tiểu th&amp;aacute;p lớn bằng b&amp;agrave;n tay biến th&amp;agrave;nh một h&amp;igrave;nh xăm tr&amp;ecirc;n người m&amp;igrave;nh, tiếp theo lại biến mất một c&amp;aacute;ch thần kỳ. Chẳng lẻ đồ chơi n&amp;agrave;y lại l&amp;agrave; bảo bối g&amp;igrave; g&amp;igrave; đ&amp;oacute; của thần ti&amp;ecirc;n trong truyền thuyết ư?&lt;/p&gt;

&lt;p&gt;- Thiếu gia, l&amp;atilde;o th&amp;aacute;i gia mời người qua đ&amp;oacute;.&lt;/p&gt;

&lt;p&gt;Khi Qu&amp;acirc;n T&amp;agrave; đang định xem x&amp;eacute;t xem trong đầu m&amp;igrave;nh rốt cuộc c&amp;oacute; th&amp;ecirc;m c&amp;aacute;i g&amp;igrave; th&amp;igrave; đột nhi&amp;ecirc;n một giọng n&amp;oacute;i vang l&amp;ecirc;n.&lt;/p&gt;

&lt;p&gt;- Mời ta qua ư?&lt;/p&gt;

&lt;p&gt;Qu&amp;acirc;n T&amp;agrave; nh&amp;iacute;u m&amp;agrave;y.&lt;/p&gt;

&lt;p&gt;- Để l&amp;agrave;m g&amp;igrave;?&lt;/p&gt;

&lt;p&gt;Bằng v&amp;agrave;o c&amp;aacute;i g&amp;igrave; m&amp;agrave; l&amp;atilde;o gi&amp;agrave; kia bảo ta qua b&amp;ecirc;n đ&amp;oacute; l&amp;agrave; ta phải qua chứ? Ta l&amp;agrave; ch&amp;agrave;u của l&amp;atilde;o &amp;agrave;?! Nhưng những lời n&amp;agrave;y c&amp;ograve;n chưa thốt ra khỏi mồm th&amp;igrave; l&amp;uacute;c n&amp;agrave;y hắn mới chợt nhớ ra, c&amp;oacute; vẻ như l&amp;atilde;o gi&amp;agrave; kia quả đ&amp;uacute;ng l&amp;agrave; gia gia của m&amp;igrave;nh. &amp;Iacute;t nhất l&amp;agrave; gia gia của th&amp;acirc;n thể n&amp;agrave;y.&lt;/p&gt;

&lt;p&gt;- Điều n&amp;agrave;y..... n&amp;ocirc; tỳ kh&amp;ocirc;ng biết.&lt;/p&gt;

&lt;p&gt;Tiểu c&amp;ocirc; nương hoảng sợ nh&amp;igrave;n hắn một c&amp;aacute;i rồi c&amp;uacute;i đầu. Đ&amp;ocirc;i h&amp;agrave;ng l&amp;ocirc;ng mi d&amp;agrave;i d&amp;agrave;i bối rối nh&amp;aacute;y nh&amp;aacute;y li&amp;ecirc;n tục. Hai ch&amp;acirc;n một trước một sau, th&amp;acirc;n thể nhỏ nhắn hơi nghi&amp;ecirc;ng nghi&amp;ecirc;ng, bộ d&amp;aacute;ng chuẩn bị để bất cứ l&amp;uacute;c n&amp;agrave;o cũng c&amp;oacute; thể co ch&amp;acirc;n chạy trốn.&lt;/p&gt;
&lt;/div&gt;
', 1, CAST(0x0000ADED012990EA AS DateTime), CAST(0x0000ADED012990EA AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (2109, 1073, 1026, N'Tập 07 - Sát thủ đệ nhất thế giới chuyển sinh thành quý tộc ở thế giới khác', N'&lt;iframe width=&quot;100%&quot; height=&quot;750&quot; src=&quot;https://www.youtube.com/embed/ruWVlqG1P6Q&quot; title=&quot;YouTube video player&quot; frameborder=&quot;0&quot; allow=&quot;accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture&quot; allowfullscreen&gt;&lt;/iframe&gt;', 1, CAST(0x0000ADED015D69CE AS DateTime), CAST(0x0000ADED015D69CE AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (2110, 1073, 1026, N'Tập 08 - Sát thủ đệ nhất thế giới chuyển sinh thành quý tộc ở thế giới khác', N'&lt;iframe width=&quot;100%&quot; height=&quot;750&quot; src=&quot;https://www.youtube.com/embed/skisCYt4yTw&quot; title=&quot;YouTube video player&quot; frameborder=&quot;0&quot; allow=&quot;accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture&quot; allowfullscreen&gt;&lt;/iframe&gt;', 1, CAST(0x0000ADED015E1B97 AS DateTime), CAST(0x0000ADED015E1B97 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (2111, 1045, 1026, N'Bạn gái thuê - Tập 01', N'&lt;iframe width=&quot;100%&quot; height=&quot;750&quot; src=&quot;https://www.youtube.com/embed/bzlM_eZbNUQ&quot; title=&quot;YouTube video player&quot; frameborder=&quot;0&quot; allow=&quot;accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture&quot; allowfullscreen&gt;&lt;/iframe&gt;', 1, CAST(0x0000ADED01621CFB AS DateTime), CAST(0x0000ADED01621CFB AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (2112, 1045, 1026, N'Bạn gái thuê - Tập 02', N'&lt;iframe width=&quot;100%&quot; height=&quot;750&quot; src=&quot;https://www.youtube.com/embed/xOF1LDt8vYM&quot; title=&quot;YouTube video player&quot; frameborder=&quot;0&quot; allow=&quot;accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture&quot; allowfullscreen&gt;&lt;/iframe&gt;', 1, CAST(0x0000ADED016262CE AS DateTime), CAST(0x0000ADED016262CE AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (2113, 1045, 1026, N'Bạn gái thuê - Tập 03', N'&lt;iframe width=&quot;100%&quot; height=&quot;750&quot; src=&quot;https://www.youtube.com/embed/c3Tc4WewJBY&quot; title=&quot;YouTube video player&quot; frameborder=&quot;0&quot; allow=&quot;accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture&quot; allowfullscreen&gt;&lt;/iframe&gt;', 1, CAST(0x0000ADED0162A0D1 AS DateTime), CAST(0x0000ADED0162A0D1 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (2114, 1045, 1026, N'Bạn gái thuê - Tập 04', N'&lt;iframe width=&quot;100%&quot; height=&quot;750&quot; src=&quot;https://www.youtube.com/embed/yvNEIMbJJ9E&quot; title=&quot;YouTube video player&quot; frameborder=&quot;0&quot; allow=&quot;accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture&quot; allowfullscreen&gt;&lt;/iframe&gt;', 1, CAST(0x0000ADED0162D5B7 AS DateTime), CAST(0x0000ADED0162D5B7 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (2115, 1045, 1026, N'Bạn gái thuê - Tập 05', N'&lt;iframe width=&quot;100%&quot; height=&quot;750&quot; src=&quot;https://www.youtube.com/embed/_wRiMNLcYXQ&quot; title=&quot;YouTube video player&quot; frameborder=&quot;0&quot; allow=&quot;accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture&quot; allowfullscreen&gt;&lt;/iframe&gt;', 1, CAST(0x0000ADED0163010A AS DateTime), CAST(0x0000ADED0163010A AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (2116, 1045, 1026, N'Bạn gái thuê - Tập 06', N'&lt;iframe width=&quot;100%&quot; height=&quot;750&quot; src=&quot;https://www.youtube.com/embed/S0_Mj13VH8s&quot; title=&quot;YouTube video player&quot; frameborder=&quot;0&quot; allow=&quot;accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture&quot; allowfullscreen&gt;&lt;/iframe&gt;', 1, CAST(0x0000ADED016359B9 AS DateTime), CAST(0x0000ADED016359B9 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (2117, 1045, 1026, N'Bạn gái thuê - Tập 07', N'&lt;iframe width=&quot;100%&quot; height=&quot;750&quot; src=&quot;https://www.youtube.com/embed/GbfzH7bxJaI&quot; title=&quot;YouTube video player&quot; frameborder=&quot;0&quot; allow=&quot;accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture&quot; allowfullscreen&gt;&lt;/iframe&gt;', 1, CAST(0x0000ADED01638F15 AS DateTime), CAST(0x0000ADED01638F15 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (2118, 1045, 1026, N'Bạn gái thuê - Tập 08', N'&lt;iframe width=&quot;100%&quot; height=&quot;750&quot; src=&quot;https://www.youtube.com/embed/3rgst3seMW4&quot; title=&quot;YouTube video player&quot; frameborder=&quot;0&quot; allow=&quot;accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture&quot; allowfullscreen&gt;&lt;/iframe&gt;', 1, CAST(0x0000ADED0163D86D AS DateTime), CAST(0x0000ADED0163D86D AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (2119, 1045, 1026, N' Tập 09 - Bạn gái thuê ', N'&lt;iframe width=&quot;100%&quot; height=&quot;750&quot; src=&quot;https://www.youtube.com/embed/oBVZcmzCnKE&quot; title=&quot;YouTube video player&quot; frameborder=&quot;0&quot; allow=&quot;accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture&quot; allowfullscreen&gt;&lt;/iframe&gt;', 1, CAST(0x0000ADED01644780 AS DateTime), CAST(0x0000ADED01644780 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (3108, 1088, 2040, N'Cám ơn các bạn đã theo dõi truyện, chúc các bạn đọc truyện vui vẻ', N'&lt;p style=&quot;text-align:center&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;/public/nguoidung/Images/b5d0fa5c1b262964a5b959a6e6793b5/images/Thank.png&quot; style=&quot;height:700px; width:100%&quot; /&gt;&lt;/p&gt;
', 1, CAST(0x0000ADEF0105F288 AS DateTime), CAST(0x0000ADEF0105F288 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (3109, 4101, 2042, N'Chương 1: Long chu bảy màu. Hạt châu màu lam', N'&lt;p&gt;Vầng trăng như c&amp;aacute;i lưỡi h&amp;aacute;i lơ lửng tr&amp;ecirc;n bầu trời đ&amp;ecirc;m. Mấy con quạ trong bầu kh&amp;ocirc;ng kh&amp;iacute; lạnh của m&amp;agrave;n đ&amp;ecirc;m, thi thoảng lại k&amp;ecirc;u l&amp;ecirc;n một tiếng rợn người.&lt;br /&gt;
&lt;br /&gt;
Trong b&amp;atilde;i tha ma, một b&amp;oacute;ng người gầy yếu di chuyển giữa những ng&amp;ocirc;i mộ x&amp;acirc;y dựng đơn sơ. Đ&amp;oacute; l&amp;agrave; một thiếu ni&amp;ecirc;n đang c&amp;otilde;ng tr&amp;ecirc;n lưng một c&amp;ocirc; b&amp;eacute;. Khu&amp;ocirc;n mặt kh&amp;ocirc; v&amp;agrave;ng của c&amp;ocirc; b&amp;eacute; đang &amp;uacute;p tr&amp;ecirc;n lưng hắn. Tr&amp;ecirc;n khu&amp;ocirc;n mặt v&amp;agrave;ng vọt v&amp;igrave; đ&amp;oacute;i chỉ c&amp;ograve;n đ&amp;ocirc;i mắt l&amp;agrave; c&amp;oacute; ch&amp;uacute;t linh lợi. Khu&amp;ocirc;n mặt thiếu ni&amp;ecirc;n c&amp;oacute; ch&amp;uacute;t lo lắng, hai tay cố gắng kh&amp;ocirc;ng để chạm v&amp;agrave;o c&amp;aacute;i đ&amp;ugrave;i bị ch&amp;oacute; hoang cắn của c&amp;ocirc; g&amp;aacute;i. Hắn v&amp;agrave; c&amp;ocirc; g&amp;aacute;i đ&amp;atilde; đi mấy chục dặm đường, ban ng&amp;agrave;y th&amp;igrave; h&amp;agrave;nh khất b&amp;ecirc;n đường, ban đ&amp;ecirc;m th&amp;igrave; phải dựa v&amp;agrave;o đồ tế ở những ng&amp;ocirc;i mộ. Phong tục của c&amp;aacute;c v&amp;ugrave;ng đất nước Thục khi hạ t&amp;aacute;ng th&amp;igrave; phải để b&amp;ecirc;n cạnh ng&amp;ocirc;i một một &amp;iacute;t b&amp;aacute;nh mỳ để cho linh hồn l&amp;agrave;m thức ăn tr&amp;ecirc;n đường xuống dưới ho&amp;agrave;ng tuyền. Thứ hai đ&amp;oacute; l&amp;agrave; để cho du hồn d&amp;atilde; quỷ ở xung quanh kh&amp;ocirc;ng bắt nạt linh hồn người vừa mới chết.&lt;br /&gt;
&lt;br /&gt;
- Thời đại hưng thịnh, b&amp;aacute;ch t&amp;iacute;nh chết đi biến th&amp;agrave;nh đất. M&amp;agrave; l&amp;uacute;c loạn lạc, b&amp;aacute;ch t&amp;iacute;nh chết đi cũng th&amp;agrave;nh đất m&amp;agrave; th&amp;ocirc;i. - Do đang đứng trong khu mộ hoang, c&amp;ocirc; g&amp;aacute;i chỉ c&amp;oacute; thể dựa v&amp;agrave;o &amp;acirc;m thanh của m&amp;igrave;nh m&amp;agrave; tăng th&amp;ecirc;m sự can đảm. Mặc d&amp;ugrave; sắc mặt n&amp;agrave;ng t&amp;aacute;i nhợt nhưng tiếng n&amp;oacute;i lại hết sức nhẹ nh&amp;agrave;ng. Đ&amp;acirc;y l&amp;agrave; những lời m&amp;agrave; n&amp;agrave;ng nghe được từ miệng người kh&amp;aacute;c. Do sự th&amp;ocirc;ng minh sắc xảo của bản th&amp;acirc;n, n&amp;ecirc;n n&amp;agrave;ng c&amp;oacute; thể hiểu được. Tuổi của n&amp;agrave;ng mặc d&amp;ugrave; c&amp;ograve;n nhỏ nhưng th&amp;acirc;n lại trong thời loạn, kh&amp;ocirc;ng biết tới hai chữ Th&amp;aacute;i B&amp;igrave;nh, cũng kh&amp;ocirc;ng hiểu được từ đường ho&amp;agrave;ng, chỉ c&amp;oacute; thể chắp v&amp;aacute; những c&amp;acirc;u nghe người ta n&amp;oacute;i. C&amp;oacute; điều, qua &amp;acirc;m thanh của n&amp;agrave;ng cũng c&amp;oacute; thể nhận thấy một sự chua x&amp;oacute;t.&lt;br /&gt;
&lt;br /&gt;
C&amp;otilde;ng c&amp;ocirc; g&amp;aacute;i đi một l&amp;uacute;c l&amp;acirc;u, mồ h&amp;ocirc;i chảy v&amp;agrave;o mắt cay x&amp;egrave; khiến cho hắn phải mở mắt ra. Nh&amp;igrave;n cảnh tượng lạnh lẽo trong nghĩa địa khiến cho hắn sởn t&amp;oacute;c g&amp;aacute;y. Tuy nhi&amp;ecirc;n hắn cũng kh&amp;ocirc;ng d&amp;aacute;m mở miệng, cố gắng che giấu sự sợ h&amp;atilde;i v&amp;agrave; mệt mỏi của m&amp;igrave;nh. Nhưng c&amp;ocirc; g&amp;aacute;i ở chung với hắn l&amp;acirc;u như vậy, bản th&amp;acirc;n lại l&amp;agrave; người th&amp;ocirc;ng minh th&amp;igrave; l&amp;agrave;m sao kh&amp;ocirc;ng hiểu được t&amp;acirc;m trạng của hắn? N&amp;agrave;ng nhẹ nh&amp;agrave;ng lau mồ h&amp;ocirc;i tr&amp;ecirc;n mặt hắn rồi ngước mặt nh&amp;igrave;n b&amp;atilde;i tha ma m&amp;agrave; thẩm nhủ:&lt;br /&gt;
&lt;br /&gt;
- Ch&amp;uacute;ng ta sẽ chết sao?&lt;br /&gt;
&lt;br /&gt;
- Kh&amp;ocirc;ng đ&amp;acirc;u. - Thiếu ni&amp;ecirc;n nở nụ cười an ủi c&amp;ocirc; g&amp;aacute;i.&lt;br /&gt;
&lt;br /&gt;
- N&amp;oacute;i thế n&amp;agrave;o th&amp;igrave; con người cũng kh&amp;oacute; l&amp;ograve;ng tho&amp;aacute;t chết. Ng&amp;ocirc; gia gia cũng chết rồi. - C&amp;ocirc; g&amp;aacute;i buồn b&amp;atilde; n&amp;oacute;i. N&amp;agrave;ng l&amp;agrave; một đứa b&amp;eacute; rất th&amp;ocirc;ng minh, mặc d&amp;ugrave; kh&amp;ocirc;ng được tiếp x&amp;uacute;c với cầm kỳ thi họa như những đứa trẻ con nh&amp;agrave; giầu nhưng chỉ cần nghe qua một b&amp;agrave;i thơ l&amp;agrave; c&amp;oacute; thể học thuộc l&amp;ograve;ng. Ng&amp;ocirc; gia gia m&amp;agrave; c&amp;ocirc; g&amp;aacute;i n&amp;oacute;i l&amp;agrave; một thầy b&amp;oacute;i đ&amp;atilde; ở c&amp;ugrave;ng với cả hai trong một khoảng thời gian. Thi thoảng l&amp;atilde;o lại n&amp;oacute;i một c&amp;acirc;u qu&amp;aacute;i dị, hoặc l&amp;agrave; dậy c&amp;ocirc; g&amp;aacute;i một số c&amp;acirc;u từ theo kiểu r&amp;acirc;u &amp;ocirc;ng nọ cắm cằm b&amp;agrave; kia. Cuối c&amp;ugrave;ng l&amp;atilde;o bị chết trong một đ&amp;ecirc;m mưa tuyết lớn. Điều n&amp;agrave;y khiến cho thiếu nữ đối với c&amp;aacute;i chết c&amp;oacute; một ấn tượng rất s&amp;acirc;u.&lt;br /&gt;
&lt;br /&gt;
- Thần ti&amp;ecirc;n sẽ kh&amp;ocirc;ng chết. - Thiếu ni&amp;ecirc;n h&amp;eacute; đ&amp;ocirc;i m&amp;ocirc;i nứt nẻ l&amp;ecirc;n tiếng. Hắn đưa lưỡi liếm sạch vết m&amp;aacute;u tr&amp;ecirc;n m&amp;ocirc;i. Hai h&amp;agrave;m răng trắng như tuyết của hắn ho&amp;agrave;n to&amp;agrave;n đối lập với khu&amp;ocirc;n mặt đen đ&amp;uacute;a của m&amp;igrave;nh. Hai tay hắn &amp;ocirc;m chặt lấy thiếu nữ, nh&amp;igrave;n về ph&amp;iacute;a ngọn n&amp;uacute;i đen trước mặt.&lt;br /&gt;
&lt;br /&gt;
- Ng&amp;ocirc; gia gia n&amp;oacute;i ngọn n&amp;uacute;i kia c&amp;oacute; thần ti&amp;ecirc;n. Chờ khi n&amp;agrave;o ngươi hết bệnh rồi, ta sẽ dẫn ngươi tới đ&amp;oacute;. N&amp;oacute;i kh&amp;ocirc;ng chừng ch&amp;uacute;ng ta c&amp;oacute; thể gặp được thần ti&amp;ecirc;n m&amp;agrave; kh&amp;ocirc;ng chết.&lt;br /&gt;
&lt;br /&gt;
Gặp ti&amp;ecirc;n cầu bất tử c&amp;oacute; thể n&amp;oacute;i l&amp;agrave; chuyện v&amp;ocirc; c&amp;ugrave;ng hiếm c&amp;oacute;. N&amp;oacute;i th&amp;igrave; đơn giản nhưng thực ra th&amp;igrave; c&amp;aacute;i kh&amp;oacute; c&amp;oacute; thể n&amp;oacute;i l&amp;agrave; gấp trăm ng&amp;agrave;n lần. D&amp;ugrave; sao th&amp;igrave; l&amp;atilde;o nh&amp;acirc;n kia cũng chỉ l&amp;agrave; thuận miệng m&amp;agrave; n&amp;oacute;i để thỏa m&amp;atilde;n hai đứa b&amp;eacute;. Đối với người khổ cực m&amp;agrave; n&amp;oacute;i th&amp;igrave; việc cầu đạo tu ti&amp;ecirc;n gần như kh&amp;ocirc;ng thể chạm tới, huống chi l&amp;agrave; việc t&amp;igrave;m gặp thần ti&amp;ecirc;n v&amp;ocirc; định.&lt;br /&gt;
&lt;br /&gt;
- T&amp;igrave;m được rồi. - Đột nhi&amp;ecirc;n &amp;aacute;nh mắt thiếu ni&amp;ecirc;n s&amp;aacute;ng ngời. Đang cố gắng t&amp;igrave;m kiếm tế phẩm giữa đ&amp;ecirc;m, thiếu ni&amp;ecirc;n chợt nh&amp;igrave;n thấy tr&amp;ecirc;n một c&amp;aacute;i mả c&amp;oacute; đặt một c&amp;aacute;i b&amp;aacute;t đựng đồ điểm t&amp;acirc;m. C&amp;aacute;i b&amp;aacute;t đ&amp;oacute; đ&amp;atilde; bị bể, đồ điểm t&amp;acirc;m cũng lạnh ngắt nhưng trong mắt hắn th&amp;igrave; so với mọi thứ kh&amp;aacute;c c&amp;ograve;n qu&amp;yacute; hơn nhiều. Bởi v&amp;igrave; hắn kh&amp;ocirc;ng biết nếu c&amp;ograve;n tiếp tục nhịn đ&amp;oacute;i c&amp;ocirc; g&amp;aacute;i c&amp;oacute; c&amp;ograve;n tiếp tục đi được nữa hay kh&amp;ocirc;ng.&lt;br /&gt;
&lt;br /&gt;
Hắn cẩn thận đặt c&amp;ocirc; b&amp;eacute; xuống một chỗ rồi t&amp;igrave;m l&amp;aacute; kh&amp;ocirc; trải l&amp;ecirc;n tr&amp;ecirc;n một tảng đ&amp;aacute; sau đ&amp;oacute; để cho c&amp;ocirc; b&amp;eacute; ngồi l&amp;ecirc;n, sau đ&amp;oacute; từ từ đi tới. Bởi v&amp;igrave; người ta n&amp;oacute;i cướp đoạt đồ ăn của người chết l&amp;agrave; chuyện kh&amp;ocirc;ng hay, c&amp;oacute; thể giảm thọ. Mặc d&amp;ugrave; thiếu ni&amp;ecirc;n nhỏ từ b&amp;eacute; nhưng c&amp;oacute; thể n&amp;oacute;i l&amp;agrave; đ&amp;atilde; tạo được một c&amp;aacute; t&amp;iacute;nh cứng cỏi, tuy nhi&amp;ecirc;n chắc chắn vẫn sợ h&amp;atilde;i đối với quỷ thần. V&amp;igrave; vậy m&amp;agrave; sau đ&amp;oacute; hắn dập đầu trước một phần ch&amp;iacute;n c&amp;aacute;i, nhưng như cảm thấy c&amp;ograve;n chưa đủ, hắn lại dập đầu th&amp;ecirc;m ch&amp;iacute;n c&amp;aacute;i nữa rồi mới lấy b&amp;aacute;nh mỳ trong c&amp;aacute;i ch&amp;eacute;n. Quay đầu lại nh&amp;igrave;n c&amp;ocirc; g&amp;aacute;i, hắn cắn trộm một miếng nhỏ tr&amp;ecirc;n c&amp;aacute;i b&amp;aacute;nh bao rồi lẩm bẩm:&lt;br /&gt;
&lt;br /&gt;
- Chỗ b&amp;aacute;nh mỳ n&amp;agrave;y l&amp;agrave; do ta lấy. Y&amp;ecirc;u ma quỷ qu&amp;aacute;i muốn t&amp;igrave;m th&amp;igrave; t&amp;igrave;m một m&amp;igrave;nh ta. Người ăn n&amp;oacute; cũng ch&amp;iacute;nh l&amp;agrave; ta, c&amp;oacute; giảm thọ th&amp;igrave; một m&amp;igrave;nh ta chịu.&lt;br /&gt;
&lt;br /&gt;
Sau đ&amp;oacute;, hắn chạy về b&amp;ecirc;n c&amp;ocirc; g&amp;aacute;i rồi ngồi xuống, giao hết b&amp;aacute;nh m&amp;igrave; cho c&amp;ocirc; b&amp;eacute;.&lt;br /&gt;
&lt;br /&gt;
- C&amp;oacute; bốn c&amp;aacute;i. - Thiếu nữ l&amp;ecirc;n tiếng.&lt;br /&gt;
&lt;br /&gt;
C&amp;ocirc; b&amp;eacute; đưa ba c&amp;aacute;i trả lại cho thiến ni&amp;ecirc;n c&amp;ograve;n m&amp;igrave;nh cầm lấy một c&amp;aacute;i, cười n&amp;oacute;i:&lt;br /&gt;
&lt;br /&gt;
- Ta ăn &amp;iacute;t, chỉ cần một c&amp;aacute;i l&amp;agrave; no rồi. Ngươi ăn hai c&amp;aacute;i. Chỗ c&amp;ograve;n lại ch&amp;uacute;ng ta giữ để ăn đường.&lt;br /&gt;
&lt;br /&gt;
Nh&amp;igrave;n c&amp;ocirc; g&amp;aacute;i nh&amp;eacute;t c&amp;aacute;i b&amp;aacute;nh m&amp;igrave; nguội lạnh v&amp;agrave;o trong tay m&amp;igrave;nh, thiếu ni&amp;ecirc;n như cầm một m&amp;oacute;n đồ vật qu&amp;yacute; gi&amp;aacute; nhất tr&amp;ecirc;n thế gian.&lt;br /&gt;
&lt;br /&gt;
- Ăn nhanh đi. - C&amp;ocirc; g&amp;aacute;i h&amp;eacute; c&amp;aacute;i miệng nhỏ nhắn cắn một miếng b&amp;aacute;nh m&amp;igrave;, rồi nh&amp;igrave;n thiếu ni&amp;ecirc;n đang ngẩn người m&amp;agrave; cười kh&amp;uacute;c kh&amp;iacute;ch.&lt;br /&gt;
&lt;br /&gt;
Thiếu ni&amp;ecirc;n cũng đ&amp;atilde; rất đ&amp;oacute;i, nh&amp;igrave;n khu&amp;ocirc;n mặt rạng rỡ của thiếu nữ, hắn cố t&amp;igrave;nh cắn một miếng b&amp;aacute;nh bao thật to sau đ&amp;oacute; nhai thật chậm. Mặc d&amp;ugrave; c&amp;ograve;n chưa nuốt nhưng cơn đ&amp;oacute;i cũng đ&amp;atilde; giảm đi rất nhiều. V&amp;agrave;o l&amp;uacute;c hắn ngẩng đầu nh&amp;igrave;n khu&amp;ocirc;n mặt đang cười của c&amp;ocirc; g&amp;aacute;i th&amp;igrave; đ&amp;ocirc;i mắt chợt mở to.&lt;br /&gt;
&lt;br /&gt;
Hắn đột nhi&amp;ecirc;n nh&amp;igrave;n thấy c&amp;oacute; bảy luồng &amp;aacute;nh s&amp;aacute;ng từ ph&amp;iacute;a ch&amp;acirc;n trời vụt tới, chẳng kh&amp;aacute;c g&amp;igrave; ng&amp;ocirc;i sao băng. Tuy nhi&amp;ecirc;n chỉ trong chốc l&amp;aacute;t, n&amp;oacute; đ&amp;atilde; tới gần vị tr&amp;iacute; của hai đứa trẻ. Hơn nữa, c&amp;agrave;ng tới gần, bảy tia s&amp;aacute;ng lại c&amp;agrave;ng s&amp;aacute;ng ngời. Ngay cả c&amp;ocirc; b&amp;eacute; đang ngồi xoay lưng lại cũng ph&amp;aacute;t hiện.&lt;br /&gt;
&lt;br /&gt;
- C&amp;aacute;i g&amp;igrave; vậy? - C&amp;ocirc; g&amp;aacute;i sững sờ vươn tay che lấy miệng của m&amp;igrave;nh. Cả hai đứa trẻ đều nh&amp;igrave;n thấy bảy tia s&amp;aacute;ng đ&amp;oacute; kh&amp;ocirc;ng ngờ lại l&amp;agrave; một c&amp;aacute;i long chu bảy m&amp;agrave;u.&lt;br /&gt;
&lt;br /&gt;
To&amp;agrave;n bộ c&amp;aacute;i long chu nh&amp;igrave;n chẳng kh&amp;aacute;c g&amp;igrave; được đi&amp;ecirc;u khắc từ ngọc, tản ra &amp;aacute;nh s&amp;aacute;ng m&amp;agrave;u t&amp;iacute;m dịu d&amp;agrave;ng. Chiều cao của n&amp;oacute; phải tới mấy trượng, ở mũi l&amp;agrave; một c&amp;aacute;i đầu rồng đang ngậm lấy một vi&amp;ecirc;n bảo ch&amp;acirc;u m&amp;agrave;u đỏ to bằng nắm tay. M&amp;agrave; tr&amp;ecirc;n bề mặt của long chu cũng được khảm nhưng vi&amp;ecirc;n bảo thạch nhiều m&amp;agrave;u. &amp;Aacute;nh s&amp;aacute;ng bảy m&amp;agrave;u tản ra ch&amp;iacute;nh l&amp;agrave; do số bảo thạch đ&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
C&amp;aacute;i long chu hoa lệ cứ vậy ph&amp;aacute; kh&amp;ocirc;ng m&amp;agrave; đi.&lt;br /&gt;
&lt;br /&gt;
Cả hai đứa b&amp;eacute; chưa từng gặp cảnh tượng như vậy đều h&amp;iacute;t một hơi thật s&amp;acirc;u m&amp;agrave; ng&amp;acirc;y người. Nhưng điều khiến cho cả hai đứa trẻ đều cảm thấy rung động đ&amp;oacute; l&amp;agrave; tr&amp;ecirc;n c&amp;aacute;i long chu bảy m&amp;agrave;u c&amp;oacute; một nữ tử, b&amp;ecirc;n tay tr&amp;aacute;i l&amp;agrave; một người mặc trang phục m&amp;agrave;u t&amp;iacute;m, tr&amp;ecirc;n đầu c&amp;oacute; cắm một c&amp;acirc;y tr&amp;acirc;m xanh biếc, da thịt trắng như tuyết. B&amp;ecirc;n phải l&amp;agrave; một người mặc trang phục m&amp;agrave;u v&amp;agrave;ng nhạt, mi t&amp;acirc;m c&amp;oacute; d&amp;aacute;n một điểm m&amp;agrave;u v&amp;agrave;ng nh&amp;igrave;n v&amp;ocirc; c&amp;ugrave;ng diễm lệ.&lt;br /&gt;
&lt;br /&gt;
Sự xuất hiện của hai đứa trẻ trước tầm mắt khiến cho bọn họ ng&amp;acirc;y người:&lt;br /&gt;
&lt;br /&gt;
- H&amp;oacute;a ra l&amp;agrave; hai đứa h&amp;agrave;i đồng nơi th&amp;ocirc;n d&amp;atilde;. - Mỹ nh&amp;acirc;n đứng b&amp;ecirc;n tr&amp;aacute;i dường như kh&amp;ocirc;ng để &amp;yacute; tới sự xuất hiện của họ.&lt;br /&gt;
&lt;br /&gt;
- Sư tỷ! Đi th&amp;ocirc;i. C&amp;oacute; lẽ hắn kh&amp;ocirc;ng ẩn nấp ở đ&amp;acirc;y đ&amp;acirc;u.&lt;br /&gt;
&lt;br /&gt;
Nữ tử mặc quần &amp;aacute;o m&amp;agrave;u v&amp;agrave;ng nhạt gật đầu:&lt;br /&gt;
&lt;br /&gt;
- Ta cũng nghĩ hắn kh&amp;ocirc;ng chạy tới gần Thục Sơn nhưng sư phụ lại muốn ch&amp;uacute;ng ta tới đ&amp;acirc;y xem x&amp;eacute;t.&lt;br /&gt;
&lt;br /&gt;
- Sử tỷ! Người n&amp;oacute;i thứ đồ đ&amp;oacute; thực sự quan trọng vậy sao? L&amp;agrave;m hại ch&amp;uacute;ng ta phải g&amp;acirc;y chiến, c&amp;ograve;n phải xuất động nhiều người tới như vậy. - Nữ tử mặc cung trang b&amp;ecirc;n tay tr&amp;aacute;i l&amp;ecirc;n tiếng hỏi.&lt;br /&gt;
&lt;br /&gt;
- Đ&amp;atilde; khi n&amp;agrave;o ngươi thấy sư phụ trịnh trọng như vậy chưa? - Nữ tử b&amp;ecirc;n phải l&amp;ecirc;n tiếng:&lt;br /&gt;
&lt;br /&gt;
- Đi th&amp;ocirc;i! Đỡ phải gặp m&amp;ocirc;n nh&amp;acirc;n của Thục Sơn m&amp;agrave; giằng co.&lt;br /&gt;
&lt;br /&gt;
- A! - Một tiếng th&amp;eacute;t kinh h&amp;atilde;i vang l&amp;ecirc;n. H&amp;oacute;a ra thiếu nữ ph&amp;iacute;a sau tưởng m&amp;igrave;nh đang nằm mơ. N&amp;agrave;ng kh&amp;ocirc;ng tự chủ được đưa tay dụi mắt nhưng kh&amp;ocirc;ng ngờ l&amp;agrave;m ảnh hưởng tới vết thương ở ch&amp;acirc;n của m&amp;igrave;nh v&amp;igrave; vậy m&amp;agrave; la l&amp;ecirc;n.&lt;br /&gt;
&lt;br /&gt;
- A? - Hai nữ tử cung trang tr&amp;ecirc;n long chu đang định rời đi th&amp;igrave; cũng thốt l&amp;ecirc;n một tiếng. Mặc d&amp;ugrave; c&amp;ocirc; b&amp;eacute; đ&amp;oacute; xanh xao v&amp;agrave;ng vọt nhưng cốt c&amp;aacute;ch lại hết sức tinh t&amp;uacute;, chẳng kh&amp;aacute;c g&amp;igrave; Cửu Thi&amp;ecirc;n huyền nữ c&amp;oacute; tư chất rất cao. Sau khi liếc mắt xem, cả hai nữ tử mặc cung trang tr&amp;ecirc;n long chu c&amp;ugrave;ng hạ xuống:&lt;br /&gt;
&lt;br /&gt;
- Tiểu muội muội! Ngươi c&amp;oacute; bằng l&amp;ograve;ng đi với ch&amp;uacute;ng ta kh&amp;ocirc;ng?&lt;br /&gt;
&lt;br /&gt;
- Đi theo c&amp;aacute;c người? - C&amp;ocirc; b&amp;eacute; trời sinh t&amp;iacute;nh t&amp;igrave;nh vốn t&amp;aacute;c qu&amp;aacute;i liền thốt l&amp;ecirc;n một tiếng vui mừng. N&amp;agrave;ng nh&amp;igrave;n hai nữ tử vận cung trang m&amp;agrave; hỏi:&lt;br /&gt;
&lt;br /&gt;
- Hai vị tỷ tỷ thật xinh đẹp. C&amp;aacute;c người l&amp;agrave; ti&amp;ecirc;n nữ sao?&lt;br /&gt;
&lt;br /&gt;
Hai nữ tử cung trang hơi cười cười:&lt;br /&gt;
&lt;br /&gt;
- Ch&amp;uacute;ng ta muốn đưa muội muội tới một nơi rất tốt. Tương lai của muội sẽ trở n&amp;ecirc;n tốt đẹp như ch&amp;uacute;ng ta, cũng được mặc quần &amp;aacute;o đẹp thế n&amp;agrave;y.&lt;br /&gt;
&lt;br /&gt;
- Thật kh&amp;ocirc;ng? - Thiếu nữ gần như nhảy dựng l&amp;ecirc;n. Nhưng đột nhi&amp;ecirc;n n&amp;agrave;ng nhớ tới điều g&amp;igrave; đ&amp;oacute; liền quay sang thiếu ni&amp;ecirc;n b&amp;ecirc;n cạnh:&lt;br /&gt;
&lt;br /&gt;
- Vậy hắn c&amp;oacute; thể đi c&amp;ugrave;ng với ch&amp;uacute;ng ta kh&amp;ocirc;ng?&lt;br /&gt;
&lt;br /&gt;
- Hắn? - Hai nữ tử vận cung trang liếc mắt nh&amp;igrave;n thiếu ni&amp;ecirc;n rồi c&amp;ugrave;ng lắc đầu:&lt;br /&gt;
&lt;br /&gt;
- Tư chất của hắn qu&amp;aacute; k&amp;eacute;m, kh&amp;ocirc;ng thể đưa đi được.&lt;br /&gt;
&lt;br /&gt;
- Vậy ta cũng kh&amp;ocirc;ng đi. - C&amp;ocirc; g&amp;aacute;i ngẩn người liền quay đầu nh&amp;igrave;n sang thiếu ni&amp;ecirc;n b&amp;ecirc;n cạnh m&amp;agrave; rươm rướm nước mắt.&lt;br /&gt;
&lt;br /&gt;
- Ngu ngốc! Ngươi mau ch&amp;oacute;ng đồng &amp;yacute; với hai vị tỷ tỷ đi. - Thiếu ni&amp;ecirc;n nghe thấy hai nữ tử n&amp;oacute;i kh&amp;ocirc;ng thể mang m&amp;igrave;nh theo th&amp;igrave; cho&amp;aacute;ng v&amp;aacute;ng. Nhưng khi nghe thiếu nữ n&amp;oacute;i kh&amp;ocirc;ng đi th&amp;igrave; hắn c&amp;ograve;n n&amp;ocirc;n n&amp;oacute;ng hơn so với n&amp;agrave;ng liền l&amp;ecirc;n tiếng qu&amp;aacute;t.&lt;br /&gt;
&lt;br /&gt;
Thiếu nữ vừa mới n&amp;oacute;i kh&amp;ocirc;ng muốn đi th&amp;igrave; nữ tử cung trang b&amp;ecirc;n phải đ&amp;atilde; kh&amp;ocirc;ng ki&amp;ecirc;n nhẫn được m&amp;agrave; phất tay &amp;aacute;o.&lt;br /&gt;
&lt;br /&gt;
- Đi th&amp;ocirc;i.&lt;br /&gt;
&lt;br /&gt;
Thiếu nữ như đằng v&amp;acirc;n gi&amp;aacute; vũ bay l&amp;ecirc;n cao, tới khi giật m&amp;igrave;nh tỉnh ra th&amp;igrave; n&amp;agrave;ng đ&amp;atilde; ph&amp;aacute;t hiện m&amp;igrave;nh đang đứng tr&amp;ecirc;n long chu. Nh&amp;igrave;n xuống thiếu ni&amp;ecirc;n b&amp;ecirc;n dưới th&amp;igrave; chỉ thấy hắn nhỏ b&amp;eacute; như một con kiến, kh&amp;ocirc;ng c&amp;ograve;n thấy r&amp;otilde;:&lt;br /&gt;
&lt;br /&gt;
- Thả ta xuống. - C&amp;ocirc; b&amp;eacute; qu&amp;yacute;nh l&amp;ecirc;n liền bật kh&amp;oacute;c. Nữ tử vận cung trang b&amp;ecirc;n tay tr&amp;aacute;i cũng kh&amp;ocirc;ng th&amp;egrave;m quan t&amp;acirc;m tới lời n&amp;oacute;i của n&amp;agrave;ng, nhưng nữ tử mặc &amp;aacute;o m&amp;agrave;u v&amp;agrave;ng th&amp;igrave; kh&amp;ocirc;ng đ&amp;agrave;nh l&amp;ograve;ng liền l&amp;ecirc;n tiếng an ủi:&lt;br /&gt;
&lt;br /&gt;
- Tiểu muội muội! Đừng c&amp;oacute; buồn. Chờ khi n&amp;agrave;o muội lớn hơn th&amp;igrave; c&amp;oacute; thể tới gặp hắn.&lt;br /&gt;
&lt;br /&gt;
Trong tầm mắt của thiếu ni&amp;ecirc;n, chiếc long chu bảy m&amp;agrave;u bay c&amp;agrave;ng l&amp;uacute;c c&amp;agrave;ng xa rồi biến mất kh&amp;ocirc;ng c&amp;ograve;n thấy tăm t&amp;iacute;ch.&lt;br /&gt;
&lt;br /&gt;
&amp;quot;Tư chất của hắn qu&amp;aacute; k&amp;eacute;m kh&amp;ocirc;ng thể đưa đi được. Tư chất của hắn qu&amp;aacute; k&amp;eacute;m kh&amp;ocirc;ng thể đưa đi được...&amp;quot; &amp;Acirc;m thanh của nữ tử mặc cung trong cứ li&amp;ecirc;n tục vang l&amp;ecirc;n trong đầu thiếu ni&amp;ecirc;n. Mặc d&amp;ugrave; b&amp;igrave;nh thường t&amp;iacute;nh c&amp;aacute;ch của hắn c&amp;oacute; thể n&amp;oacute;i l&amp;agrave; cứng cỏi nhưng cũng chỉ l&amp;agrave; một đứa trẻ mới mười hai, mười ba tuổi. Chiếc long chu v&amp;agrave; nữ tử ăn mặc cung trang xuất hiện qu&amp;aacute; ch&amp;acirc;n thật khiến cho hắn tr&amp;agrave;n đầy hy vọng nhưng thậm ch&amp;iacute; c&amp;ograve;n chưa n&amp;oacute;i được một c&amp;acirc;u. Chưa n&amp;oacute;i thiếu nữ v&amp;agrave; hắn nương tựa v&amp;agrave;o nhau bao nhi&amp;ecirc;u l&amp;acirc;u, b&amp;acirc;y giờ c&amp;oacute; thể kh&amp;ocirc;ng bao giờ gặp lại được nữa. Lại nh&amp;igrave;n mấy chiếc b&amp;aacute;nh mỳ trong tay, thiếu ni&amp;ecirc;n đau l&amp;ograve;ng tới nỗi &amp;ograve;a l&amp;ecirc;n kh&amp;oacute;c.&lt;br /&gt;
&lt;br /&gt;
- Hừ! Kh&amp;ocirc;ng thể tưởng tượng được danh m&amp;ocirc;n đại ph&amp;aacute;i của ch&amp;iacute;nh đạo trong thi&amp;ecirc;n hạ lại c&amp;oacute; h&amp;agrave;nh động chẳng kh&amp;aacute;c g&amp;igrave; kẻ cướp thế n&amp;agrave;y. - Đ&amp;uacute;ng l&amp;uacute;c đ&amp;oacute; đột nhi&amp;ecirc;n c&amp;oacute; một &amp;acirc;m thanh vang l&amp;ecirc;n b&amp;ecirc;n tai thiếu ni&amp;ecirc;n.&lt;br /&gt;
&lt;br /&gt;
- Nhưng ngươi cứ y&amp;ecirc;n t&amp;acirc;m. Con nh&amp;oacute;c đ&amp;oacute; được mấy n&amp;agrave;ng đ&amp;oacute; để &amp;yacute; c&amp;oacute; thể n&amp;oacute;i l&amp;agrave; được ph&amp;uacute;c, người kh&amp;aacute;c c&amp;oacute; cầu cũng kh&amp;ocirc;ng được.&lt;br /&gt;
&lt;br /&gt;
C&amp;aacute;i &amp;acirc;m thanh đ&amp;oacute; vang l&amp;ecirc;n từ một ng&amp;ocirc;i mộ b&amp;ecirc;n cạnh khiến cho thiếu ni&amp;ecirc;n đang kh&amp;oacute;c giật m&amp;igrave;nh, ớn lạnh.&lt;br /&gt;
&lt;br /&gt;
C&amp;aacute;i mộ đ&amp;oacute; đ&amp;atilde; gần như sập để lộ một nửa c&amp;aacute;i quan t&amp;agrave;i. Một tiếng k&amp;eacute;t vang l&amp;ecirc;n, trong c&amp;aacute;i quan t&amp;agrave;i cũ n&amp;aacute;t kh&amp;ocirc;ng ngờ c&amp;oacute; một b&amp;agrave;n tay m&amp;agrave;u x&amp;aacute;m th&amp;ograve; ra.&lt;br /&gt;
&lt;br /&gt;
Ngay sau đ&amp;oacute;, nắp quan t&amp;agrave;i bị nhấc l&amp;ecirc;n rồi c&amp;oacute; một người ngồi dậy. Người đ&amp;oacute; c&amp;oacute; c&amp;aacute;i mũi ưng, mắt nhỏ v&amp;agrave; h&amp;iacute;p, sắc mặt trắng bệch, ngay cả đồng tử dường như cũng kh&amp;ocirc;ng c&amp;oacute; m&amp;agrave;u đen, tất cả chỉ l&amp;agrave; một m&amp;agrave;u x&amp;aacute;m trắng.&lt;br /&gt;
&lt;br /&gt;
- Hả? - Thấy thiếu ni&amp;ecirc;n ngưng kh&amp;oacute;c nhưng cũng kh&amp;ocirc;ng bỏ chạy như m&amp;igrave;nh tưởng tượng, qu&amp;aacute;i nh&amp;acirc;n mặc &amp;aacute;o b&amp;agrave;o m&amp;agrave;u đỏ sẫm đảo mắt rồi n&amp;oacute;i:&lt;br /&gt;
&lt;br /&gt;
- Tại sao ngươi kh&amp;ocirc;ng sợ ta?&lt;br /&gt;
&lt;br /&gt;
- Kh&amp;ocirc;ng sợ! - Thiếu ni&amp;ecirc;n lắc đầu.&lt;br /&gt;
&lt;br /&gt;
- Tại sao kh&amp;ocirc;ng sợ? Chẳng lẽ ngươi kh&amp;ocirc;ng sợ quỷ? - Người trong quan t&amp;agrave;i ngạc nhi&amp;ecirc;n nh&amp;igrave;n thiếu ni&amp;ecirc;n.&lt;br /&gt;
&lt;br /&gt;
- Người c&amp;oacute; b&amp;oacute;ng c&amp;ograve;n quỷ th&amp;igrave; kh&amp;ocirc;ng.&lt;br /&gt;
&lt;br /&gt;
- &amp;Agrave;? - Người trong quan t&amp;agrave;i c&amp;uacute;i xuống nh&amp;igrave;n tho&amp;aacute;ng qua bản th&amp;acirc;n rồi lại liếc mắt nh&amp;igrave;n thiếu ni&amp;ecirc;n m&amp;agrave; hừ một tiếng:&lt;br /&gt;
&lt;br /&gt;
- Kh&amp;ocirc;ng thể ngờ một người c&amp;oacute; tư chất ti&amp;ecirc;n thi&amp;ecirc;n k&amp;eacute;m như ngươi lại to gan đến vậy.&lt;br /&gt;
&lt;br /&gt;
Nghe người trong quan t&amp;agrave;i n&amp;oacute;i tư chất m&amp;igrave;nh k&amp;eacute;m, thiếu ni&amp;ecirc;n lại run người, kh&amp;ocirc;ng nhịn được nh&amp;igrave;n theo hướng long chu vừa mới biến mất.&lt;br /&gt;
&lt;br /&gt;
- Nh&amp;oacute;c con. - Thấy thiếu ni&amp;ecirc;n đau khổ như vậy, người trong quan t&amp;agrave;i liền cười:&lt;br /&gt;
&lt;br /&gt;
- Nh&amp;igrave;n ngươi c&amp;oacute; phải l&amp;agrave; l&amp;acirc;u rồi kh&amp;ocirc;ng ăn no đ&amp;uacute;ng kh&amp;ocirc;ng?&lt;br /&gt;
&lt;br /&gt;
Thiếu ni&amp;ecirc;n gật đầu. Kh&amp;ocirc;ng chỉ l&amp;agrave; đ&amp;oacute;i bụng l&amp;acirc;u ng&amp;agrave;y m&amp;agrave; ngay cả sức để đi cũng kh&amp;ocirc;ng c&amp;ograve;n. Hơn nữa, thiếu nữ b&amp;ecirc;n cạnh biến mất khiến cho hắn th&amp;ecirc;m đau l&amp;ograve;ng th&amp;igrave; cho d&amp;ugrave; ph&amp;aacute;t hiện người trong quan t&amp;agrave;i kh&amp;ocirc;ng phải l&amp;agrave; quỷ nhưng chỉ với gương mặt trắng bệch hắn đ&amp;atilde; bỏ chạy từ l&amp;acirc;u rồi.&lt;br /&gt;
&lt;br /&gt;
- Vậy ngươi c&amp;oacute; nghĩ tới việc l&amp;agrave;m sao để sau n&amp;agrave;y kh&amp;ocirc;ng chịu đ&amp;oacute;i, chịu khổ kh&amp;ocirc;ng? Kh&amp;ocirc;ng cần phải tới nghĩa địa để t&amp;igrave;m những loại thức ăn như thế n&amp;agrave;y, hoặc l&amp;agrave; c&amp;oacute; thể được như mấy thiếu nữ đ&amp;oacute; rồi gặp lại nh&amp;oacute;c con kia? - Con ngươi trong mắt người trong quan t&amp;agrave;i đảo mấy c&amp;aacute;i. Trong l&amp;uacute;c n&amp;oacute;i chuyện, từ ng&amp;oacute;n tay y chợt c&amp;oacute; một tia s&amp;aacute;ng m&amp;agrave;u hồng giống như sợi tơ nhện bắn tr&amp;uacute;ng mấy c&amp;aacute;i b&amp;aacute;nh m&amp;igrave; tỏng tay thiếu ni&amp;ecirc;n. Thiếu ni&amp;ecirc;n chỉ cảm thấy l&amp;ograve;ng b&amp;agrave;n tay như bị phỏng, c&amp;ograve;n đang ngơ ngẩn th&amp;igrave; mấy c&amp;aacute;i b&amp;aacute;nh mỳ đ&amp;atilde; ch&amp;aacute;y đen m&amp;agrave; rơi xuống đất.&lt;br /&gt;
&lt;br /&gt;
Đối với một người đ&amp;oacute;i bao nhi&amp;ecirc;u ng&amp;agrave;y như hắn m&amp;agrave; n&amp;oacute;i, nếu c&amp;oacute; thể kh&amp;ocirc;ng c&amp;ograve;n cảnh tượng n&amp;agrave;y thật đ&amp;uacute;ng l&amp;agrave; hấp dẫn. Huống chi tr&amp;ecirc;n đời n&amp;agrave;y lại c&amp;ograve;n c&amp;oacute; một thứ lực lượng khiến cho người ta kinh sợ kia. Thứ lực lượng đ&amp;oacute; c&amp;oacute; thể khiến cho long chu lướt gi&amp;oacute; m&amp;agrave; đi, c&amp;ugrave;ng với l&amp;uacute;c nữ tử vận cung trang ph&amp;ocirc; b&amp;agrave;y vẫn c&amp;ograve;n như in trong đầu hắn. Tới b&amp;acirc;y giờ, thiếu ni&amp;ecirc;n lại nh&amp;igrave;n thấy người trong quan tại ph&amp;ocirc; b&amp;agrave;y thứ lực lượng đ&amp;oacute;. Người trong quan tại lại n&amp;oacute;i m&amp;igrave;nh c&amp;oacute; thể gi&amp;uacute;p đỡ hắn c&amp;oacute; được những điều giống như mấy nữ tử kia v&amp;agrave; c&amp;ograve;n c&amp;oacute; thể gặp lại thiếu nữ. Thiếu ni&amp;ecirc;n kia vừa sợ h&amp;atilde;i vừa ngạc nhi&amp;ecirc;n vui mừng, nh&amp;igrave;n qu&amp;aacute;i nh&amp;acirc;n mặc hồng b&amp;agrave;o m&amp;agrave; run rẩy kh&amp;ocirc;ng n&amp;oacute;i ra lời.&lt;br /&gt;
&lt;br /&gt;
Người trong quan t&amp;agrave;i nh&amp;igrave;n thấy phản ứng của thiếu ni&amp;ecirc;n m&amp;agrave; c&amp;oacute; ch&amp;uacute;t đắc &amp;yacute;. Y hơi nhếch miệng:&lt;br /&gt;
&lt;br /&gt;
- Phật n&amp;oacute;i kiếp trước chưa c&amp;oacute; thiện duy&amp;ecirc;n, kiếp n&amp;agrave;y mới gặp nghiệp b&amp;aacute;o. C&amp;oacute; điều ngươi c&amp;oacute; tin ta c&amp;oacute; thể gi&amp;uacute;p ngươi tho&amp;aacute;t khỏi bể khổ n&amp;agrave;y kh&amp;ocirc;ng?&lt;br /&gt;
&lt;br /&gt;
Thiếu ni&amp;ecirc;n nh&amp;igrave;n người trong quan t&amp;agrave;i. Từ khi long chu bảy m&amp;agrave;u xuất hiện đối với hắn m&amp;agrave; n&amp;oacute;i đ&amp;atilde; l&amp;agrave; chuyện qu&amp;aacute; ly kỳ. Nguy&amp;ecirc;n vốn bản t&amp;iacute;nh th&amp;ocirc;ng minh nhưng cảnh tượng đ&amp;oacute; cũng l&amp;agrave;m cho hắn ng&amp;acirc;y người mất một l&amp;uacute;c, sau đ&amp;oacute; kh&amp;ocirc;ng nhịn được m&amp;agrave; hỏi một c&amp;acirc;u:&lt;br /&gt;
&lt;br /&gt;
- Ngươi...ngươi l&amp;agrave; ai? Tại sao ngươi lại ở trong quan t&amp;agrave;i?&lt;br /&gt;
&lt;br /&gt;
- Thế gian, con người bị qu&amp;aacute; nhiều thứ che mắt. Ta l&amp;agrave; ai, tại sao ở trong quan t&amp;agrave;i th&amp;igrave; c&amp;oacute; quan hệ g&amp;igrave;? - Người trong quan t&amp;agrave;i liếc mắt nh&amp;igrave;n thiếu ni&amp;ecirc;n nhưng vẫn ngồi ngay ngắn trong quan t&amp;agrave;i. Y khẽ vươn tay phải ra. Thiếu ni&amp;ecirc;n kh&amp;ocirc;ng tự chủ được nh&amp;igrave;n theo tay của y, chỉ thấy trước mặt lập tức ph&amp;aacute;t s&amp;aacute;ng. Rồi một hạt ch&amp;acirc;u to bằng ng&amp;oacute;n c&amp;aacute;i bắt đầu khởi động, ở trong tay người trong quan t&amp;agrave;i m&amp;agrave; tỏa ra từng l&amp;agrave;n &amp;aacute;nh s&amp;aacute;ng. Nếu nh&amp;igrave;n kỹ, tr&amp;ecirc;n bề mặt của hạt ch&amp;acirc;u như c&amp;oacute; những gợn s&amp;oacute;ng đang xuất hiện.&lt;br /&gt;
&lt;br /&gt;
Nh&amp;igrave;n hạt ch&amp;acirc;u tỏa ra &amp;aacute;nh s&amp;aacute;ng bao phủ thiếu ni&amp;ecirc;n, người trong quan t&amp;agrave;i l&amp;ecirc;n tiếng:&lt;br /&gt;
&lt;br /&gt;
- Chỉ cần ăn hạt ch&amp;acirc;u n&amp;agrave;y th&amp;igrave; cả đời ngươi kh&amp;ocirc;ng phải chịu cơ h&amp;agrave;n. Vạn vật trong thi&amp;ecirc;n hạ cũng kh&amp;ocirc;ng tho&amp;aacute;t ra khỏi hai chữ nh&amp;acirc;n duy&amp;ecirc;n. Ta ở đ&amp;acirc;y, ngươi tới nơi n&amp;agrave;y cũng l&amp;agrave; một chữ duy&amp;ecirc;n. Chỉ cần ngươi đồng &amp;yacute; với ta một chuyện th&amp;igrave; ta sẽ cho ngươi hạt ch&amp;acirc;u n&amp;agrave;y.&lt;br /&gt;
&lt;br /&gt;
Thiếu ni&amp;ecirc;n do dự nh&amp;igrave;n người trong quan t&amp;agrave;i:&lt;br /&gt;
&lt;br /&gt;
- L&amp;agrave; chuyện g&amp;igrave;?&lt;br /&gt;
&lt;br /&gt;
- Kh&amp;ocirc;ng được n&amp;oacute;i với bất cứ ai l&amp;agrave; ngươi đ&amp;atilde; gặp ta. Cũng kh&amp;ocirc;ng được n&amp;oacute;i với bất cứ người n&amp;agrave;o rằng ngươi đ&amp;atilde; nuốt hạt ch&amp;acirc;u n&amp;agrave;y.&lt;br /&gt;
&lt;br /&gt;
Giọng điệu của người trong quan t&amp;agrave;i đột nhi&amp;ecirc;n trở n&amp;ecirc;n lạnh lẽo khiến cho thiếu ni&amp;ecirc;n ớn lạnh, kh&amp;ocirc;ng tự chủ được m&amp;agrave; lui một bước. Nhưng người trong quan t&amp;agrave;i kho&amp;aacute;t tay một c&amp;aacute;i khiến cho hạt ch&amp;acirc;u bay đi. Thiếu ni&amp;ecirc;n theo bản năng đ&amp;oacute;n lấy. Người trong quan t&amp;agrave;i lại lạnh l&amp;ugrave;ng nh&amp;igrave;n hắn:&lt;br /&gt;
&lt;br /&gt;
- Ngươi c&amp;oacute; l&amp;agrave;m được kh&amp;ocirc;ng?&lt;br /&gt;
&lt;br /&gt;
Hạt ch&amp;acirc;u trong tay tỏa ra &amp;aacute;nh s&amp;aacute;ng chiếu l&amp;ecirc;n khu&amp;ocirc;n mặt thiếu ni&amp;ecirc;n. Nghĩ tới long chu v&amp;agrave; thiếu nữ bị đưa đi, thiếu ni&amp;ecirc;n kh&amp;ocirc;ng hề do dự, ngẩng đầu li&amp;ecirc;n nh&amp;igrave;n người trong quan t&amp;agrave;i m&amp;agrave; gật đầu.&lt;br /&gt;
&lt;br /&gt;
- Kh&amp;ocirc;ng cần phải n&amp;oacute;i nhiều l&amp;agrave;m g&amp;igrave;. C&amp;aacute;i bảo bối n&amp;agrave;y, ngươi h&amp;atilde;y ăn trước đi. - Nh&amp;igrave;n thiếu ni&amp;ecirc;n đưa hạt ch&amp;acirc;u v&amp;agrave;o trong miệng, người trong quan t&amp;agrave;i kh&amp;ocirc;ng giấu được sự vui mừng.&lt;br /&gt;
&lt;br /&gt;
Trong c&amp;aacute;i mộ tối đen, &amp;aacute;nh s&amp;aacute;ng từ hạt ch&amp;acirc;u chiếu s&amp;aacute;ng khu&amp;ocirc;n mặt thiếu ni&amp;ecirc;n v&amp;agrave; phạm vi một thước xung quanh. C&amp;ograve;n qu&amp;aacute;i nh&amp;acirc;n mặc &amp;aacute;o hồng với con mắt m&amp;agrave;u x&amp;aacute;m ở c&amp;aacute;ch đ&amp;oacute; một đoạn c&amp;agrave;ng khiến cho thiếu ni&amp;ecirc;n th&amp;ecirc;m quyết t&amp;acirc;m muốn ăn hạt ch&amp;acirc;u đ&amp;oacute;. Bởi v&amp;igrave; từ trước tới giờ, hắn c&amp;ograve;n chưa thấy hạt ch&amp;acirc;u n&amp;agrave;o thần kỳ như vậy. Hắn chỉ thấy nếu người trong quan t&amp;agrave;i muốn hại m&amp;igrave;nh th&amp;igrave; chỉ cần nhấc tay m&amp;agrave; kh&amp;ocirc;ng cần phải tốn sức, đồng thời lại phải mất một hạt ch&amp;acirc;u như vậy.&lt;br /&gt;
&lt;br /&gt;
- Buồn cười! Thật l&amp;agrave; buồn cười. Đường đường l&amp;agrave; Ph&amp;aacute;p Vương của Lạn Kha tự kh&amp;ocirc;ng ngờ lại lạc tới n&amp;ocirc;ng nỗi như thế n&amp;agrave;y... - Đột nhi&amp;ecirc;n trong đ&amp;aacute;m đồi b&amp;ecirc;n cạnh vọng tới một &amp;acirc;m thanh nghe ng&amp;acirc;n nga như từ xa vọng lại.&lt;br /&gt;
&lt;br /&gt;
Một b&amp;oacute;ng đen từ trong đ&amp;aacute;m l&amp;acirc;n quang xuất hiện, đ&amp;aacute;p xuống tr&amp;ecirc;n một tấm bia. C&amp;aacute;i &amp;acirc;m thanh vừa rồi r&amp;otilde; r&amp;agrave;ng l&amp;agrave; do b&amp;oacute;ng đen đ&amp;oacute; ph&amp;aacute;t ra. Mặc d&amp;ugrave; thiếu ni&amp;ecirc;n lớn gan như vậy nhưng khi nh&amp;igrave;n thấy cũng cảm gi&amp;aacute;c ớn lạnh m&amp;agrave; k&amp;ecirc;u l&amp;ecirc;n một tiếng.&lt;br /&gt;
&lt;br /&gt;
Người ph&amp;aacute;t ra &amp;acirc;m thanh cổ qu&amp;aacute;i đ&amp;oacute; kh&amp;ocirc;ng ngờ lại l&amp;agrave; một con quạ đen.&lt;br /&gt;
&lt;br /&gt;
B&amp;atilde;i tha ma nơi n&amp;uacute;i hoang, những b&amp;oacute;ng ma trơi, con quạ biết n&amp;oacute;i. Tất cả những điều n&amp;agrave;y đối với thiếu ni&amp;ecirc;n đ&amp;uacute;ng l&amp;agrave; một chuyện kh&amp;oacute; tin. Đồng thời với tiếng k&amp;ecirc;u kinh h&amp;atilde;i, trong l&amp;ograve;ng b&amp;agrave;n tay thiếu ni&amp;ecirc;n đ&amp;atilde; chảy đầy mồ h&amp;ocirc;i ho&amp;agrave;n to&amp;agrave;n ngơ ng&amp;aacute;c, chẳng biết tới con quạ n&amp;oacute;i c&amp;aacute;i g&amp;igrave;. Nhưng người mặc hồng b&amp;agrave;o trong quan t&amp;agrave;i vẫn thản nhi&amp;ecirc;n, chẳng th&amp;egrave;m nh&amp;igrave;n con quạ m&amp;agrave; ngẩng đầu l&amp;ecirc;n nh&amp;igrave;n trời rồi n&amp;oacute;i:&lt;br /&gt;
&lt;br /&gt;
- Hay cho ph&amp;aacute;p m&amp;ocirc;n dựa v&amp;agrave;o gi&amp;aacute;c quan thứ s&amp;aacute;u. Ta kh&amp;ocirc;ng ngờ ngươi c&amp;oacute; thể t&amp;igrave;m tới đ&amp;acirc;y nhanh như vậy.&lt;br /&gt;
&lt;br /&gt;
- Ngươi tr&amp;uacute;ng ma ph&amp;aacute;p thực hồn của sư huynh ta. V&amp;ugrave;ng đất cực &amp;acirc;m đối với ngươi hết sức bất lợi. Thật ra ta cũng kh&amp;ocirc;ng nghĩ l&amp;agrave; ngươi lại trốn ở đ&amp;acirc;y. - Con quạ vẫn cất c&amp;aacute;i &amp;acirc;m thanh cổ qu&amp;aacute;i của m&amp;igrave;nh để n&amp;oacute;i. Tr&amp;ecirc;n bầu trời phương T&amp;acirc;y, chẳng biết từ l&amp;uacute;c n&amp;agrave;o đ&amp;atilde; xuất hiện một l&amp;agrave;n kh&amp;iacute; đen. Trong trời đ&amp;ecirc;m nh&amp;igrave;n n&amp;oacute; giống như một con hắc long đang quay cuồng. Người trong quan t&amp;agrave;i hờ hững nh&amp;igrave;n luồng kh&amp;iacute; đ&amp;oacute;. Trong gi&amp;acirc;y l&amp;aacute;t, luồng kh&amp;iacute; cuộn xuống khiến cho cuồng phong nổi l&amp;ecirc;n xung quanh. Khi cuồng phong biến mất, thiếu ni&amp;ecirc;n chỉ thấy giữa s&amp;acirc;n xuất hiện một nam tử gầy yếu với khu&amp;ocirc;n mặt đắc &amp;yacute; v&amp;agrave; tr&amp;agrave;o ph&amp;uacute;ng. To&amp;agrave;n bộ th&amp;acirc;n thể y được phủ k&amp;iacute;n bởi một chiếc đạo b&amp;agrave;o m&amp;agrave;u đen, tay phải cầm một c&amp;acirc;y đoản trượng m&amp;agrave;u t&amp;iacute;m được khắc những hoa văn m&amp;agrave;u v&amp;agrave;ng kim rườm r&amp;agrave;, tối nghĩa với phong c&amp;aacute;ch cổ xưa l&amp;agrave;m cho người ta sợ.&lt;br /&gt;
&lt;br /&gt;
- Trước ti&amp;ecirc;n t&amp;igrave;m đường sống trong c&amp;otilde;i chết, d&amp;ugrave;ng b&amp;iacute; ph&amp;aacute;p che giấu x&amp;aacute; ch&amp;acirc;u, sau đ&amp;oacute; l&amp;agrave; để cho đứa b&amp;eacute; n&amp;agrave;y ăn v&amp;agrave;o. Đến l&amp;uacute;c đ&amp;oacute;, cho d&amp;ugrave; n&amp;oacute; c&amp;oacute; ng&amp;atilde; lăn trước mặt ch&amp;uacute;ng ta, ch&amp;uacute;ng ta cũng kh&amp;ocirc;ng thể tượng được rằng M&amp;acirc;u x&amp;aacute; ch&amp;acirc;u lại ở ngay trong bụng n&amp;oacute;. L&amp;atilde;o quỷ Kh&amp;ocirc;ng Đồng. C&amp;aacute;i kế hoạch n&amp;agrave;y của ngươi thật tốt đấy. - Sau khi người mặc &amp;aacute;o b&amp;agrave;o đen xuất hiện, con quạ kia sợ h&amp;atilde;i liền bay mất. So với &amp;acirc;m thanh của con quạ th&amp;igrave; &amp;acirc;m thanh của người mặc &amp;aacute;o b&amp;agrave;o đen &amp;ecirc;m tai hơn cả trăm lần nhưng thiếu ni&amp;ecirc;n chỉ cảm thấy c&amp;acirc;u chuyện trở n&amp;ecirc;n &amp;acirc;m trầm kỳ dị. Chỉ thấy người mặc &amp;aacute;o b&amp;agrave;o đen chợt nh&amp;igrave;n m&amp;igrave;nh m&amp;agrave; qu&amp;aacute;t:&lt;br /&gt;
&lt;br /&gt;
- T&amp;ecirc;n nh&amp;oacute;c con kh&amp;ocirc;ng biết sống chết, c&amp;ograve;n kh&amp;ocirc;ng n&amp;eacute;m c&amp;aacute;i thứ trong tay ngươi cho ta? Nếu ngươi ăn v&amp;agrave;o, hạt ch&amp;acirc;u n&amp;agrave;y sẽ mọc rễ trong bụng ngươi. Đến l&amp;uacute;c đ&amp;oacute; n&amp;oacute; sẽ h&amp;uacute;t sạch m&amp;aacute;u trong người ngươi để cho l&amp;atilde;o quỷ n&amp;agrave;y tĩnh dưỡng xong rồi mới x&amp;eacute; th&amp;acirc;n thể ngươi ra m&amp;agrave; bỏ trốn.&lt;/p&gt;
', 1, CAST(0x0000ADEF0110DF47 AS DateTime), CAST(0x0000ADEF0110DF47 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (3110, 4101, 2042, N'Chương 2: Tiếng quạ trong đêm. Hồng bào hóa phiên', N'&lt;p&gt;Thiếu ni&amp;ecirc;n kh&amp;ocirc;ng biết người mặc &amp;aacute;o đen n&amp;oacute;i thật hay giả nhưng vẫn quay đầu lại nh&amp;igrave;n người trong quan t&amp;agrave;i. Khu&amp;ocirc;n mặt trắng bệch của người trong quan t&amp;agrave;i vẫn thản nhi&amp;ecirc;n như trước:&lt;br /&gt;
&lt;br /&gt;
- Di La! Ngươi n&amp;oacute;i bậy. M&amp;acirc;u X&amp;aacute; ch&amp;acirc;u c&amp;oacute; t&amp;iacute;nh h&amp;agrave;n, nhiều lắm chỉ l&amp;agrave;m cho bụng bị đ&amp;oacute;ng băng chứ l&amp;agrave;m sao c&amp;oacute; thể h&amp;uacute;t hết m&amp;aacute;u trong người được. M&amp;agrave; nếu ta muốn lấy n&amp;oacute; th&amp;igrave; kh&amp;ocirc;ng cần phải d&amp;ugrave;ng tới c&amp;aacute;ch mổ xẻ kia.&lt;br /&gt;
&lt;br /&gt;
&amp;ldquo;Nếu bụng m&amp;agrave; đ&amp;oacute;ng băng th&amp;igrave; l&amp;agrave;m sao c&amp;oacute; thể sống?&amp;rdquo; Người trong quan t&amp;agrave;i mặc d&amp;ugrave; n&amp;oacute;i m&amp;igrave;nh kh&amp;ocirc;ng cần biện ph&amp;aacute;p t&amp;agrave;n nhẫn nhưng lời n&amp;oacute;i của y l&amp;uacute;c n&amp;agrave;y c&amp;oacute; đ&amp;atilde; thể hiện một sự độc &amp;aacute;c. Lập tức thiếu ni&amp;ecirc;n cứng người. Người mặc &amp;aacute;o b&amp;agrave;o đen cũng kh&amp;ocirc;ng muốn đấu v&amp;otilde; mồm với người trong quan t&amp;agrave;i n&amp;ecirc;n chỉ cười lạnh rồi vung tay tr&amp;aacute;i l&amp;ecirc;n. Một đ&amp;aacute;m m&amp;acirc;y m&amp;agrave;u đen liền tr&amp;agrave;n về ph&amp;iacute;a thiếu ni&amp;ecirc;n.&lt;br /&gt;
&lt;br /&gt;
&amp;quot;O&amp;agrave;nh!&amp;quot; Một tiếng nổ vang l&amp;ecirc;n. Trong nh&amp;aacute;y mắt, người trong quan t&amp;agrave;i ph&amp;aacute;t ra một tia s&amp;aacute;ng m&amp;agrave;u hồng l&amp;agrave;m cho đ&amp;aacute;m m&amp;acirc;y tan n&amp;aacute;t. L&amp;agrave;n s&amp;oacute;ng kh&amp;ocirc;ng kh&amp;iacute; đẩy thiếu ni&amp;ecirc;n về sau mấy bước tới một c&amp;aacute;i mộ ở giưa người trong quan t&amp;agrave;i v&amp;agrave; người mặc &amp;aacute;o đen. Người mặc &amp;aacute;o đen cười ha hả:&lt;br /&gt;
&lt;br /&gt;
- N&amp;oacute;i nhiều như vậy cuối c&amp;ugrave;ng chẳng phải muốn động thủ hay sao?&lt;br /&gt;
&lt;br /&gt;
Sau khi giao đấu với Di La một c&amp;aacute;i, sắc mặt người trong quan t&amp;agrave;i lại c&amp;agrave;ng trắng hơn. Tuy nhi&amp;ecirc;n khi nghe Di La n&amp;oacute;i vậy, người trong quan t&amp;agrave;i chỉ cười, tay tr&amp;aacute;i vung l&amp;ecirc;n, hồng b&amp;agrave;o tr&amp;ecirc;n người liền bay ra rồi t&amp;aacute;ch l&amp;agrave;m s&amp;aacute;u m&amp;agrave; hạ xuống hai b&amp;ecirc;n quan t&amp;agrave;i, bao phủ bản th&amp;acirc;n v&amp;agrave; thiếu ni&amp;ecirc;n v&amp;agrave;o b&amp;ecirc;n trong. Tới l&amp;uacute;c n&amp;agrave;y, thiếu ni&amp;ecirc;n mới ph&amp;aacute;t hiện bộ hồng b&amp;agrave;o bao phủ người trong quan t&amp;agrave;i kh&amp;ocirc;ng ngờ lại l&amp;agrave; một l&amp;aacute; cờ đỏ như m&amp;aacute;u. Hồng phi&amp;ecirc;n s&amp;aacute;u mặt vừa mới xuất hiện khiến cho cả b&amp;atilde;i tha ma rực l&amp;ecirc;n &amp;aacute;nh s&amp;aacute;ng m&amp;agrave;u hồng. Thiếu ni&amp;ecirc;n chỉ cảm thấy hơi n&amp;oacute;ng kinh người. C&amp;ograve;n c&amp;acirc;y trượng trong tay người &amp;aacute;o đen th&amp;igrave; bắn ra hơn mười d&amp;ograve;ng điện m&amp;agrave;u v&amp;agrave;ng va chạm với &amp;aacute;nh s&amp;aacute;ng m&amp;agrave;u hồng. Ngay lập tức ch&amp;uacute;ng n&amp;aacute;t th&amp;agrave;nh những điểm s&amp;aacute;ng m&amp;agrave;u v&amp;agrave;ng. Trong nh&amp;aacute;y mắt, &amp;aacute;nh s&amp;aacute;ng m&amp;agrave;u hồng tăng l&amp;ecirc;n, l&amp;aacute; hồng phi&amp;ecirc;n đỏ như m&amp;aacute;u d&amp;agrave;i ra rồi từ từ bay l&amp;ecirc;n, h&amp;oacute;a th&amp;agrave;nh một l&amp;aacute; phi&amp;ecirc;n lớn đến hai, ba trượng. &amp;Aacute;nh s&amp;aacute;ng m&amp;agrave;u hồng đột nhi&amp;ecirc;n tạo ra một c&amp;aacute;i mặt quỷ c&amp;oacute; hai sừng, bốn mắt v&amp;agrave; đầy răng nanh lơ lửng nơi đỉnh đầu người trong quan t&amp;agrave;i tr&amp;ocirc;ng như thật.&lt;br /&gt;
&lt;br /&gt;
- Giỏi cho l&amp;atilde;o quỷ! Kh&amp;ocirc;ng ngờ c&amp;aacute;i hồng b&amp;agrave;o tr&amp;ecirc;n người ngươi lại l&amp;agrave; ph&amp;aacute;p bảo như vậy. - Di La cất tiếng cười li&amp;ecirc;n tục, thanh đoản trượng trong tay cũng chỉ l&amp;ecirc;n trời.&lt;br /&gt;
&lt;br /&gt;
- Khoan đ&amp;atilde;. - Nhưng đ&amp;uacute;ng v&amp;agrave;o l&amp;uacute;c n&amp;agrave;y, người trong quan t&amp;agrave;i đột nhi&amp;ecirc;n k&amp;ecirc;u l&amp;ecirc;n:&lt;br /&gt;
&lt;br /&gt;
- trước ti&amp;ecirc;n ngươi h&amp;atilde;y biết đ&amp;acirc;y l&amp;agrave; chỗ n&amp;agrave;o rồi h&amp;atilde;y động thủ với ta.&lt;br /&gt;
&lt;br /&gt;
Di La giật m&amp;igrave;nh hỏi ngược lại:&lt;br /&gt;
&lt;br /&gt;
- Chỗ n&amp;agrave;o?&lt;br /&gt;
&lt;br /&gt;
- Ngươi kh&amp;ocirc;ng nhận ra cả Thục Sơn đấy chứ? - Người trong quan t&amp;agrave;i chỉ về ph&amp;aacute;i ngọn n&amp;uacute;i ở ph&amp;iacute;a xa m&amp;agrave; cười lạnh:&lt;br /&gt;
&lt;br /&gt;
- Nơi n&amp;agrave;y c&amp;aacute;ch Thục Sơn chỉ chừng trăm dặm, nếu ngươi giết ta th&amp;igrave; kh&amp;ocirc;ng sợ người của Thục Sơn ph&amp;aacute;t hiện ra hay sao? Hơn nữa, vừa rồi chắc ngươi cũng thấy được Diễm Quang chu của C&amp;ocirc;n Lu&amp;acirc;n chứ?&lt;br /&gt;
&lt;br /&gt;
- Kh&amp;ocirc;ng Đồng l&amp;atilde;o quỷ. H&amp;oacute;a ra l&amp;agrave; ngươi c&amp;oacute; &amp;yacute; như vậy. - Di La đảo mắt rồi nở nụ cười:&lt;br /&gt;
&lt;br /&gt;
- Chẳng tr&amp;aacute;ch m&amp;agrave; ngươi kh&amp;ocirc;ng chạy về hướng sư m&amp;ocirc;n của m&amp;igrave;nh m&amp;agrave; lại trốn đến đ&amp;acirc;y, hại sư huynh của ta kh&amp;ocirc;ng đuổi kịp ngươi. C&amp;oacute; điều đ&amp;atilde; l&amp;acirc;u vậy m&amp;agrave; ngươi vẫn ngồi trong quan t&amp;agrave;i c&amp;oacute; lẽ chẳng kh&amp;aacute;c nỏ mạnh hết đ&amp;agrave;. Nửa dưới của ngươi c&amp;oacute; phải đang mục n&amp;aacute;t rất nhanh rồi kh&amp;ocirc;ng? Cho d&amp;ugrave; người Thục Sơn v&amp;agrave; C&amp;ocirc;n Lu&amp;acirc;n ph&amp;aacute;t hiện th&amp;igrave; sao? Chờ khi họ chạy tới th&amp;igrave; ta cũng giết ngươi v&amp;agrave; đi khỏi đ&amp;acirc;y. Thế n&amp;agrave;o? Chỉ cần ngươi c&amp;oacute; thể đứng dậy khỏi quan t&amp;agrave;i th&amp;igrave; ta kh&amp;ocirc;ng ra tay. Nếu ngươi kh&amp;ocirc;ng đứng dậy th&amp;igrave; đừng nhiều lời nữa. - Dứt lời, c&amp;acirc;y đoản trượng trong tay lại vung l&amp;ecirc;n khiến cho trong kh&amp;ocirc;ng gian xuất hiện những tiếng r&amp;iacute;t. Chỉ thấy một cơn lốc đen quay cuồng rồi sau đ&amp;oacute; h&amp;oacute;a th&amp;agrave;nh những đốm lửa đen bao phủ trong phạm vi vạn trượng m&amp;agrave; bắn xuống.&lt;br /&gt;
&lt;br /&gt;
Người trong quan t&amp;agrave;i liền biến sắc. Vốn y l&amp;agrave; ph&amp;aacute;p Vương Lạn Kha Tự - Kh&amp;ocirc;ng Đồng. Nh&amp;acirc;n l&amp;uacute;c may mắn, y c&amp;oacute; được vi&amp;ecirc;n M&amp;acirc;u X&amp;aacute; ch&amp;acirc;u, nhưng lại đ&amp;uacute;ng l&amp;uacute;c sư huynh của Di La l&amp;agrave; H&amp;aacute;ch Đồ thấy được. Di La v&amp;agrave; H&amp;aacute;ch Đồ l&amp;agrave; t&amp;aacute;n tu ở ph&amp;iacute;a Bắc, đệ tử của &amp;Acirc;m Ti&amp;ecirc;u đạo nh&amp;acirc;n vốn kh&amp;ocirc;ng phải l&amp;agrave; người trong ch&amp;iacute;nh đạo. V&amp;igrave; vậy m&amp;agrave; họ chẳng th&amp;egrave;m để &amp;yacute; tới Lạn Khai Tự nhỏ b&amp;eacute;. Huống chỉ khi H&amp;aacute;ch Đồ biết dược M&amp;acirc;u X&amp;aacute; ch&amp;acirc;u li&amp;ecirc;n quan tới một thứ b&amp;iacute; ẩn, đối với người tu luyện bọn họ c&amp;ograve;n qu&amp;yacute; hơn cả ph&amp;aacute;p bảo. V&amp;igrave; vậy m&amp;agrave; H&amp;aacute;ch Đồ ra tay cưỡng đoạt. Trận chiến đ&amp;oacute;, Kh&amp;ocirc;ng Đồng kh&amp;ocirc;ng địch lại được H&amp;aacute;ch Đồ n&amp;ecirc;n trọng thương rồi bỏ chạy. Nhưng t&amp;acirc;m tư của Kh&amp;ocirc;ng Đồng v&amp;ocirc; c&amp;ugrave;ng cẩm thận. Y lường trước thương thế của m&amp;igrave;nh kh&amp;ocirc;ng về được tới Lạn Kha Tự th&amp;igrave; đ&amp;atilde; bị H&amp;aacute;ch Đồ giết chết. V&amp;igrave; vậy m&amp;agrave; y đi ngược lại, chạy trốn tới b&amp;atilde;i tha ma c&amp;aacute;ch Thục Sơn gần trăm dặm. Thực Hồn ma ph&amp;aacute;p của H&amp;aacute;ch Đồ l&amp;agrave; một ph&amp;aacute;p quyết v&amp;ocirc; c&amp;ugrave;ng &amp;acirc;m độc. Người n&amp;agrave;o bị &amp;acirc;m hồn nhập thể, chỉ c&amp;oacute; thể t&amp;igrave;m nơi Cực Dương m&amp;agrave; từ từ đẩy độc ra ngo&amp;agrave;i. C&amp;ograve;n nơi quỷ kh&amp;iacute;, &amp;acirc;m kh&amp;iacute; rất nặng th&amp;igrave; c&amp;agrave;ng l&amp;agrave;m cho thương thế th&amp;ecirc;m trầm trọng. Cứ như vậy, quả nhi&amp;ecirc;n Kh&amp;ocirc;ng Đồng trốn tho&amp;aacute;t được H&amp;aacute;ch Đồ chặn giết. Y trốn ở đ&amp;acirc;y chờ l&amp;atilde;o hữu của m&amp;igrave;nh tiếp ứng. Nhưng y kh&amp;ocirc;ng ngờ được C&amp;ocirc;n Lu&amp;acirc;n cũng nghe thấy tin tức M&amp;acirc;u X&amp;aacute; ch&amp;acirc;u xuất hiện m&amp;agrave; t&amp;igrave;m kiếm khắp nơi. Vừa rồi, mặc d&amp;ugrave; Kh&amp;ocirc;ng Đồng sử dụng b&amp;iacute; ph&amp;aacute;p ẩn chứa kh&amp;iacute; tức của bản th&amp;acirc;n n&amp;ecirc;n chưa bị ph&amp;aacute; hiện, nhưng cũng to&amp;aacute;t mồ h&amp;ocirc;i hột. Sau đ&amp;oacute;, nghe thấy tiếng thiếu ni&amp;ecirc;n kia kh&amp;oacute;c, y nảy ra &amp;yacute; nghĩ lựa cho thiếu ni&amp;ecirc;n nuốt M&amp;acirc;u X&amp;aacute; ch&amp;acirc;u v&amp;agrave;o. Đến l&amp;uacute;c đ&amp;oacute; cho d&amp;ugrave; người ta c&amp;oacute; t&amp;igrave;m tới th&amp;igrave; cũng kh&amp;ocirc;ng l&amp;agrave;m hại t&amp;iacute;nh mạng của y, c&amp;oacute; thể chờ l&amp;atilde;o hữu tới. Nhưng Kh&amp;ocirc;ng Đồng lại kh&amp;ocirc;ng ngờ được rằng khi thiếu ni&amp;ecirc;n chuẩn bị nuốt M&amp;acirc;u X&amp;aacute; ch&amp;acirc;u th&amp;igrave; bị Di La ph&amp;aacute;t hiện. Hơn nữa mặc d&amp;ugrave; tu vi của Di La kh&amp;ocirc;ng cao bằng H&amp;aacute;ch Đồ nhưng lại kh&amp;ocirc;n kh&amp;eacute;o v&amp;agrave; t&amp;agrave;n nhẫn hơn, kh&amp;ocirc;ng thể d&amp;ugrave;ng lời lừa được.&lt;br /&gt;
&lt;br /&gt;
- Đi. - L&amp;aacute; phi&amp;ecirc;n m&amp;agrave;u hồng c&amp;oacute; s&amp;aacute;u mặt tỏa ra &amp;aacute;nh s&amp;aacute;ng rực rỡ. Nhưng Kh&amp;ocirc;ng Đồng chẳng kh&amp;aacute;c n&amp;agrave;o nỏ giương hết đ&amp;agrave;. Mặc d&amp;ugrave; những tia lửa m&amp;agrave;u đen chạm phải &amp;aacute;nh s&amp;aacute;ng m&amp;agrave;u hồng th&amp;igrave; biết mất nhưng Kh&amp;ocirc;ng Đồng cũng kh&amp;aacute;c n&amp;agrave;o bị điện giật, hồng phi&amp;ecirc;n s&amp;aacute;u mặt cũng dao động. M&amp;agrave; c&amp;aacute;i mặt quỷ vừa mới tụ th&amp;agrave;nh cũng như sắp bị đ&amp;aacute;nh tan.&lt;br /&gt;
&lt;br /&gt;
- Kh&amp;ocirc;ng Đồng l&amp;atilde;o quỷ. Nếu b&amp;acirc;y giờ ngươi đưa M&amp;acirc;u X&amp;aacute; ch&amp;acirc;u cho ta th&amp;igrave; ta c&amp;ograve;n c&amp;oacute; thể tha cho ngươi một mạng. - Di La tu luyện ph&amp;aacute;p thuật hết sức t&amp;agrave;n độc n&amp;ecirc;n th&amp;aacute;i độ cũng kh&amp;ocirc;ng cổ hủ như đ&amp;aacute;m người danh m&amp;ocirc;n ch&amp;iacute;nh ph&amp;aacute;i. Sau khi cất tiếng cười, y lại vung tay, ngọn lửa đen c&amp;ograve;n chưa biến mất th&amp;igrave; một quả mầu m&amp;agrave;u bạc đ&amp;atilde; được y n&amp;eacute;m đi về ph&amp;iacute;a hồng phi&amp;ecirc;n s&amp;aacute;u m&amp;agrave;u.&lt;br /&gt;
&lt;br /&gt;
Quả cầu m&amp;agrave;u bạc đ&amp;oacute; l&amp;agrave; một thứ ph&amp;aacute;p bảo do &amp;Acirc;m Ti&amp;ecirc;u đạo nh&amp;acirc;n luyện chế c&amp;oacute; t&amp;ecirc;n l&amp;agrave; L&amp;ocirc;i sắc ng&amp;acirc;n ch&amp;acirc;u. N&amp;oacute; được &amp;Acirc;m Ti&amp;ecirc;u đạo nh&amp;acirc;n d&amp;ugrave;ng rất nhiều bạc trắng, ch&amp;igrave;, thủy ng&amp;acirc;n, thiếc, bạch kim, đ&amp;ocirc;ng hải tinh kim m&amp;agrave; luyện th&amp;agrave;nh. Một khi n&amp;eacute;m n&amp;oacute; ra, n&amp;oacute; sẽ thả ra l&amp;ocirc;i điện t&amp;iacute;ch luy, phần lớn c&amp;oacute; hiệu quả ph&amp;aacute; ma. &amp;Acirc;m ti&amp;ecirc;u đạo nh&amp;acirc;n luyện được tổng cộng bốn vi&amp;ecirc;n. Trong tay sư huynh H&amp;aacute;ch Đồ của Di La cũng c&amp;oacute; một vi&amp;ecirc;n. Ng&amp;agrave;y đ&amp;oacute; khi Kh&amp;ocirc;ng Đồng v&amp;agrave; H&amp;aacute;ch Đồ quyết đầu đ&amp;atilde; chịu khổ sở rất nhiều v&amp;igrave; hạt ch&amp;acirc;u n&amp;agrave;y. B&amp;acirc;y giờ, thấy Di La lại n&amp;eacute;m hạt ch&amp;acirc;u đ&amp;oacute; ra th&amp;igrave; to&amp;agrave;n bộ t&amp;acirc;m trạng của Kh&amp;ocirc;ng Đồng ho&amp;agrave;n to&amp;agrave;n sụp đổ. Hai tay y cố gắng bắt một c&amp;aacute;i ph&amp;aacute;p quyết, đồng thời cắn ch&amp;oacute;t lưỡi, phun m&amp;aacute;u l&amp;ecirc;n mặt l&amp;aacute; hồng phi&amp;ecirc;n.&lt;br /&gt;
&lt;br /&gt;
Trong ph&amp;uacute;t chốc, hồng phi&amp;ecirc;n ph&amp;aacute; ra những tiếng động. Con quỷ vật tr&amp;ecirc;n đỉnh đầu Kh&amp;ocirc;ng Đồng kh&amp;ocirc;ng ngờ h&amp;oacute;a th&amp;agrave;nh thực thể m&amp;agrave; lao ra về ph&amp;iacute;a Di La.&lt;br /&gt;
&lt;br /&gt;
- Ngoan cố chống cự. - Di La cất tiếng cười lạnh rồi đột nhi&amp;ecirc;n bay l&amp;ecirc;n tr&amp;ecirc;n kh&amp;ocirc;ng trung. Con quỷ vật vừa mới lao ra, ng&amp;acirc;n ch&amp;acirc;u liền xoay tr&amp;ograve;n ph&amp;aacute;t ra những tiếng nổ. Từng tia chớp m&amp;agrave;u bạc xu&amp;acirc;t shienj, rồi h&amp;oacute;a th&amp;agrave;nh to bằng một c&amp;aacute;nh tay. Trong phạm vi một dặm, &amp;aacute;nh s&amp;aacute;ng của những tia chớp xuất hiện khắp nơi, lần lượt đ&amp;aacute;nh l&amp;ecirc;n quỷ vật v&amp;agrave; hồng phi&amp;ecirc;n.&lt;br /&gt;
&lt;br /&gt;
- Mạng ta th&amp;ocirc;i rồi. - Kh&amp;ocirc;ng Đồng cố gắng huy động hồng phi&amp;ecirc;n m&amp;agrave; trụ lại nhưng nguy&amp;ecirc;n thần trong cơ thể đột nhi&amp;ecirc;n rung chuyển rồi trong đầu g&amp;atilde; xuất hiện một biển m&amp;aacute;u. Trong ph&amp;uacute;t chốc mấy tia hơi lạnh như những con m&amp;atilde;ng x&amp;agrave; t&amp;aacute;n loạn trong người khiến cho th&amp;acirc;n thể của g&amp;atilde; cứng đờ. &amp;Aacute;nh s&amp;aacute;ng của hồng phi&amp;ecirc;n đột nhi&amp;ecirc;n biến mất c&amp;ugrave;ng với con quỷ vật bệ vệ kia trong nh&amp;aacute;y mắt bị những tia điện cắn n&amp;aacute;t.&lt;br /&gt;
&lt;br /&gt;
H&amp;oacute;a ra hồng phi&amp;ecirc;n s&amp;aacute;u mặt đ&amp;oacute; c&amp;oacute; t&amp;ecirc;n l&amp;agrave; X&amp;iacute;ch La tr&amp;agrave;ng. Đ&amp;oacute; l&amp;agrave; một thứ ph&amp;aacute;p bảo của Mật t&amp;ocirc;ng. Người c&amp;oacute; tu vi cao th&amp;acirc;m c&amp;oacute; thể ngưng tụ được th&amp;agrave;nh dạ xoa, giống như trong truyền thuyết th&amp;aacute;nh nh&amp;acirc;n c&amp;oacute; thể ngưng tụ th&amp;agrave;nh h&amp;oacute;a th&amp;acirc;n. Đ&amp;oacute; l&amp;agrave; do X&amp;iacute;ch La tr&amp;agrave;ng kết hợp oai lực của bản th&amp;acirc;n v&amp;agrave; ma kh&amp;iacute; lấy từ dưới đất. Người thi ph&amp;aacute;p sẽ bị ảo gi&amp;aacute;c của ma kh&amp;iacute; phản lại. Tu vi của Kh&amp;ocirc;ng Đồng c&amp;ograve;n chưa đủ n&amp;ecirc;n ng&amp;agrave;y đ&amp;oacute; khi đối địch với H&amp;aacute;ch Đồ kh&amp;ocirc;ng d&amp;aacute;m d&amp;ugrave;ng phương ph&amp;aacute;p n&amp;agrave;y. Hiện tại y liều chết đ&amp;aacute;nh cược nhưng kh&amp;ocirc;ng hề c&amp;oacute; ch&amp;uacute;t may mắn. Nguy&amp;ecirc;n thần bị ảo gi&amp;aacute;c biển m&amp;aacute;u cắn lại khiến cho &amp;acirc;m hồn quỷ kh&amp;iacute; trong cơ thể kh&amp;ocirc;ng bị &amp;aacute;p chế liền tản ra.&lt;/p&gt;
', 1, CAST(0x0000ADEF01121725 AS DateTime), CAST(0x0000ADEF01121725 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (3111, 4101, 2042, N'Chương 3: Xích La tràng, Xích Diễm kim nghê', N'&lt;p&gt;Đấu ph&amp;aacute;p sinh tử n&amp;agrave;y vốn rất nguy hiểm, kh&amp;ocirc;ng được c&amp;oacute; lấy một ch&amp;uacute;t sơ s&amp;oacute;t. Khi trong đầu Kh&amp;ocirc;ng Đồng vừa mới xuất hiện suy nghĩ đ&amp;oacute; th&amp;igrave; Di La ở trong kh&amp;ocirc;ng trung liền cất tiếng cười. Kh&amp;iacute; đen trong tay tu&amp;ocirc;n ra, ngưng tụ th&amp;agrave;nh một b&amp;agrave;n tay to m&amp;agrave; chộp xuống.&lt;br /&gt;
&lt;br /&gt;
Người thiếu ni&amp;ecirc;n cầm M&amp;acirc;u X&amp;aacute; ch&amp;acirc;u trong tay đ&amp;atilde; bị đấu ph&amp;aacute;p của hai người l&amp;agrave;m cho kinh ngạc. Hơn nữa xưa nay Kh&amp;ocirc;ng Đồng vốn quỷ kế đa đoan, cho n&amp;ecirc;n khi xuống tay kh&amp;ocirc;ng hề lưu t&amp;igrave;nh. M&amp;agrave; &amp;Acirc;m s&amp;aacute;t thủ của Di La vốn l&amp;agrave; để đối ph&amp;oacute; với ph&amp;aacute;p thuật sử dụng phi kiếm, tr&amp;agrave;n ngập lệ kh&amp;iacute; độc &amp;aacute;c dơ bẩn... Kh&amp;ocirc;ng Đồng đ&amp;atilde; bị thương n&amp;ecirc;n kh&amp;ocirc;ng c&amp;ograve;n sức m&amp;agrave; ho&amp;agrave;n thủ v&amp;igrave; vậy m&amp;agrave; dưới một trảo đ&amp;oacute; liền mất mạng. Th&amp;acirc;n thể g&amp;atilde; chẳng kh&amp;aacute;c n&amp;agrave;o chiếc b&amp;aacute;nh bị đập n&amp;aacute;t.&lt;br /&gt;
&lt;br /&gt;
Di La d&amp;ugrave;ng một trảo đ&amp;aacute;nh chết Kh&amp;ocirc;ng Đồng đột nhi&amp;ecirc;n &amp;aacute;nh mắt thay đổi. Chỉ thấy ở ph&amp;iacute;a Bắc chợt c&amp;oacute; mấy đạo kiếm quang lao tới với tốc độ kinh người. Dường như n&amp;oacute; chỉ chợt l&amp;oacute;e l&amp;ecirc;n một c&amp;aacute;i, giữa s&amp;acirc;n đ&amp;atilde; c&amp;oacute; ba người xuất hiện. Trong ba người đ&amp;oacute; c&amp;oacute; hai nam v&amp;agrave; một nữ. Cả ba đều mặc &amp;aacute;o b&amp;agrave;o m&amp;agrave;u trắng. Hai người nam th&amp;igrave; một người c&amp;oacute; m&amp;agrave;y rậm mắt hổ, th&amp;acirc;n h&amp;igrave;nh cao lớn. C&amp;ograve;n một nam tử kh&amp;aacute;c c&amp;oacute; r&amp;acirc;u d&amp;agrave;i, đỉnh đầu b&amp;uacute;i t&amp;oacute;c. Nử tử c&amp;ograve;n lại th&amp;igrave; nh&amp;igrave;n hơn ba mươi nhưng d&amp;aacute;ng người xinh đẹp, nh&amp;igrave;n qua c&amp;oacute; cảm gi&amp;aacute;c giống như chỉ cần một cơn gi&amp;oacute; thổi qua cũng đủ khiến n&amp;agrave;ng lung lay. Ba đạo kiếm quang xoay chung quanh th&amp;acirc;n thể họ tỏa ra &amp;aacute;nh s&amp;aacute;ng lấp l&amp;aacute;nh.&lt;br /&gt;
&lt;br /&gt;
- &amp;Acirc;m S&amp;aacute;t thủ! Ng&amp;acirc;n sắc l&amp;ocirc;i ch&amp;acirc;u. L&amp;agrave; m&amp;ocirc;n hạ của Bắc Mang &amp;Acirc;m Ti&amp;ecirc;u đạo nh&amp;acirc;n? - Cả ba người vừa mới xuất hiện th&amp;igrave; nh&amp;igrave;n thấy Di La chộp chết Kh&amp;ocirc;ng Đồng, thu hồi Ng&amp;acirc;n sắc l&amp;ocirc;i ch&amp;acirc;u liền nhận ra ngay th&amp;acirc;n phận của y m&amp;agrave; ngẩn người.&lt;br /&gt;
&lt;br /&gt;
- Kh&amp;ocirc;ng ngờ lại l&amp;agrave; người Thanh Th&amp;agrave;nh. - Con Di La cũng thầm giật m&amp;igrave;nh. Kh&amp;ocirc;ng ngờ lại c&amp;oacute; người tới đ&amp;acirc;y nhanh như vậy. Nh&amp;igrave;n quần &amp;aacute;o của họ, Di La nh&amp;acirc;n ra ba người đ&amp;oacute; kh&amp;ocirc;ng phải l&amp;agrave; người Thục Sơn m&amp;agrave; l&amp;agrave; đệ tử của Thanh Dương t&amp;aacute;n nh&amp;acirc;n ph&amp;aacute;i Thanh Th&amp;agrave;nh: Ngao Minh, T&amp;ugrave;ng Hạc Tử v&amp;agrave; Thủy V&amp;ocirc; Nguyệt. C&amp;oacute; ba người đều l&amp;agrave; cao thủ th&amp;agrave;nh danh. Nhưng suy nghĩ li&amp;ecirc;n tục xuất hiện trong đầu Di La. Y x&amp;aacute;c định m&amp;igrave;nh chưa chắc đ&amp;atilde; l&amp;agrave; đối thủ của ba người n&amp;agrave;y v&amp;igrave; vậy m&amp;agrave; kh&amp;ocirc;ng để cho cả ba mở miệng th&amp;igrave; kh&amp;iacute; đen tanh h&amp;ocirc;i lại xuất hiện m&amp;agrave; cuốn về ph&amp;iacute;a thiếu ni&amp;ecirc;n trong hồng phi&amp;ecirc;n.&lt;br /&gt;
&lt;br /&gt;
- M&amp;acirc;u X&amp;aacute; ch&amp;acirc;u? Khoan đ&amp;atilde;. - Ngao Minh, T&amp;ugrave;ng Hạc Tử v&amp;agrave; Thủy V&amp;ocirc; Nguyệt chỉ đ&amp;uacute;ng dịp đi ngang qua, thấy nơi đ&amp;acirc;y c&amp;oacute; &amp;aacute;nh s&amp;aacute;ng kỳ lạ l&amp;oacute;e l&amp;ecirc;n, biết c&amp;oacute; người đấu ph&amp;aacute;p liền bay tới. Hiện tại họ ph&amp;aacute;t hiện ra Di La l&amp;agrave; người của Bắc Mang &amp;Acirc;m ti&amp;ecirc;u t&amp;aacute;n nh&amp;acirc;n, c&amp;ograve;n chưa kịp nghĩ nhiều th&amp;igrave; Di La đ&amp;atilde; đột nhi&amp;ecirc;n ra tay với thiếu ni&amp;ecirc;n. T&amp;ugrave;ng Hạc Tử nhanh mắt nh&amp;igrave;n thấy hạt ch&amp;acirc;u trong tay thiếu ni&amp;ecirc;n liền thốt l&amp;ecirc;n một tiếng, đồng thời một đạo kiếm quang m&amp;agrave;u trắng xuất hiện chắn lấy &amp;Acirc;m S&amp;aacute;t thủ của Di La.&lt;br /&gt;
&lt;br /&gt;
- C&amp;oacute; chuyện g&amp;igrave; vậy? - Ngao Minh v&amp;agrave; Thủy V&amp;ocirc; Nguyệt kh&amp;ocirc;ng biết c&amp;oacute; chuyện g&amp;igrave; nhưng cả ba người vốn hiểu &amp;yacute; nhau n&amp;ecirc;n khi T&amp;ugrave;ng Hạc Tử vừa mới ph&amp;aacute;t kiếm quang, hai đạo kiếm quang của Ngao Minh v&amp;agrave; Thủy V&amp;ocirc; Nguyệt cũng xuất hiện. Kiếm của Thủy V&amp;ocirc; Nguyệt c&amp;oacute; m&amp;agrave;u lục nhưng dưới sự điều khiển của n&amp;agrave;ng, kiếm quang bay ra lại l&amp;oacute;e l&amp;ecirc;n m&amp;agrave;u hồng. &amp;Aacute;nh s&amp;aacute;ng của n&amp;oacute; h&amp;ograve;a lẫn với kiếm quang m&amp;agrave;u đen của Ngao Minh, xoay quanh hai người.&lt;br /&gt;
&lt;br /&gt;
- Đi! - Một tia s&amp;aacute;ng m&amp;agrave;u bạc bay thẳng về ph&amp;iacute;a Thủy V&amp;ocirc; Nguyệt yếu nhất trong ba người. Một tiếng động vang l&amp;ecirc;n, thanh phi kiếm m&amp;agrave;u đen của Ngao Minh đ&amp;atilde; chặn lại tia s&amp;aacute;ng bạc của Di La. Va chạm với phi kiếm m&amp;agrave;u đen, hai l&amp;agrave;n &amp;aacute;nh s&amp;aacute;ng liền tản ra xung quanh. C&amp;ograve;n phi kiếm m&amp;agrave;u đỏ của Thủy V&amp;ocirc; Nguyệt th&amp;igrave; xoắn về ph&amp;iacute;a Di La.&lt;br /&gt;
&lt;br /&gt;
- Phi kiếm của Thanh Th&amp;agrave;nh quả nhi&amp;ecirc;n kh&amp;ocirc;ng tầm thường. - Sắc mặt của Di La hết sức lạnh l&amp;ugrave;ng. Trước đ&amp;oacute; Di L&amp;atilde; cũng c&amp;oacute; giao thủ với phi kiếm của kiếm ti&amp;ecirc;n kh&amp;aacute;c nhưng Thanh Th&amp;agrave;nh l&amp;agrave; một ph&amp;aacute;i lớn nổi danh cả ng&amp;agrave;n năm th&amp;igrave; phi kiếm của t&amp;aacute;n tu b&amp;igrave;nh thường kh&amp;ocirc;ng thể n&amp;agrave;o s&amp;aacute;nh được. C&amp;ograve;n phi kiếm của T&amp;ugrave;ng Hạc tử kh&amp;ocirc;ng biết được luyện từ thứ gỗ g&amp;igrave; m&amp;agrave; khi đối mặt với &amp;Acirc;m S&amp;aacute;t thủ của Di La lại kh&amp;ocirc;ng hề e ngại. Tia s&amp;aacute;ng bạc kia cũng ch&amp;iacute;nh l&amp;agrave; Ng&amp;acirc;n sắc l&amp;ocirc;i ch&amp;acirc;u m&amp;agrave; Di La vừa mới thu về. Mặc d&amp;ugrave; l&amp;ocirc;i điện trong n&amp;oacute; đ&amp;atilde; d&amp;ugrave;ng hết nhưng đ&amp;oacute; cũng l&amp;agrave; một loại ph&amp;aacute;p bảo, một khi tấn c&amp;ocirc;ng cũng phải tới ng&amp;agrave;n c&amp;acirc;n lực. Nhưng kh&amp;ocirc;ng ngờ n&amp;oacute; lại bị phi kiếm của Ngao Minh ngăn cản thế sức nhẹ nh&amp;agrave;ng. Hơn nữa ba người c&amp;ocirc;ng thủ c&amp;oacute; quy luật v&amp;igrave; vậy m&amp;agrave; sau một đ&amp;ograve;n đ&amp;oacute;, Di La biết m&amp;igrave;nh kh&amp;ocirc;ng phải l&amp;agrave; đối thủ. Nhưng M&amp;acirc;u X&amp;aacute; ch&amp;acirc;u lại đang ở trước mặt, cho d&amp;ugrave; Di La c&amp;oacute; muốn bỏ th&amp;igrave; cũng rất kh&amp;oacute; khăn. &amp;Acirc;m S&amp;aacute;t thủ nhanh ch&amp;oacute;ng bay về, chộp lấy kiếm quang của Thủy V&amp;ocirc; Nguyệt. Di La suy nghĩ thật nhanh để ứng ph&amp;oacute; như thế n&amp;agrave;o?&lt;br /&gt;
&lt;br /&gt;
- Lại c&amp;oacute; phi kiếm? L&amp;agrave; ai? - Nhưng đ&amp;uacute;ng v&amp;agrave;o l&amp;uacute;c n&amp;agrave;y, tr&amp;ecirc;n bầu trời c&amp;oacute; một đạo &amp;aacute;nh s&amp;aacute;ng m&amp;agrave;u v&amp;agrave;ng kim như ngọn lửa bay tới. C&amp;ograve;n chưa tới gần m&amp;agrave; &amp;aacute;p lực đ&amp;atilde; &amp;eacute;p xuống. Cảm nhận c&amp;oacute; người đang tới, nhất thời phi kiếm của đ&amp;aacute;m người Ngoa Minh đều quay lại, tập trung đề ph&amp;ograve;ng.&lt;br /&gt;
&lt;br /&gt;
Kiếm quang lao xuống đất lập tức hiện ra một b&amp;oacute;ng người. Đ&amp;oacute; l&amp;agrave; một l&amp;atilde;o gi&amp;agrave; ục ịch, đ&amp;ocirc;i mắt nhỏ hơi h&amp;iacute;p, ho&amp;agrave;n to&amp;agrave;n kh&amp;ocirc;ng c&amp;oacute; phong độ của một cao thủ. Tuy nhi&amp;ecirc;n, vừa mới nh&amp;igrave;n quanh, &amp;aacute;nh mắt của l&amp;atilde;o chợt l&amp;oacute;e l&amp;ecirc;n một tia s&amp;aacute;ng:&lt;br /&gt;
&lt;br /&gt;
- Chung quy vẫn đến chậm một bước. - L&amp;atilde;o gi&amp;agrave; thở d&amp;agrave;i một tiếng.&lt;br /&gt;
&lt;br /&gt;
Nh&amp;igrave;n phi kiếm của l&amp;atilde;o như bập b&amp;ugrave;ng ngọn lửa nhỏ, T&amp;ugrave;ng Hạc Tử đột nhi&amp;ecirc;n nghĩ tới một người m&amp;agrave; lắp bắp:&lt;br /&gt;
&lt;br /&gt;
- X&amp;iacute;ch Diễm Kim Ngh&amp;ecirc; kiếm. Tiền bối l&amp;agrave; Liệt Dương ch&amp;acirc;n nh&amp;acirc;n?&lt;br /&gt;
&lt;br /&gt;
L&amp;atilde;o gi&amp;agrave; ục ịch kh&amp;ocirc;ng trả lời chỉ nh&amp;igrave;n Di La:&lt;br /&gt;
&lt;br /&gt;
- Ngươi tự m&amp;igrave;nh ra tay hay phải để ta động thủ?&lt;br /&gt;
&lt;br /&gt;
V&amp;agrave;o l&amp;uacute;c n&amp;agrave;y Di L&amp;atilde; cũng biết được l&amp;atilde;o gi&amp;agrave; ục ịch n&amp;agrave;y l&amp;agrave; Liệt Dương ch&amp;acirc;n nh&amp;acirc;n. Chỉ cần nh&amp;igrave;n tu vi phi kiếm của l&amp;atilde;o, Di La biết m&amp;igrave;nh kh&amp;ocirc;ng phải đối thủ. Nhưng t&amp;iacute;nh t&amp;igrave;nh của Di La vốn &amp;acirc;m t&amp;agrave;n n&amp;ecirc;n chẳng sợ chỉ hừ một tiếng m&amp;agrave; kh&amp;ocirc;ng n&amp;oacute;i c&amp;acirc;u n&amp;agrave;o.&lt;br /&gt;
&lt;br /&gt;
- M&amp;acirc;u X&amp;aacute; ch&amp;acirc;u? - Kiếm quang của Liệt Dương ch&amp;acirc;n nh&amp;acirc;n l&amp;oacute;e l&amp;ecirc;n, đang định ra tay th&amp;igrave; đột nhi&amp;ecirc;n l&amp;atilde;o tho&amp;aacute;ng thấy thiếu ni&amp;ecirc;n trong khe hở chợt tản ra &amp;aacute;nh s&amp;aacute;ng m&amp;agrave;u lam th&amp;igrave; giật m&amp;igrave;nh.&lt;br /&gt;
&lt;br /&gt;
- Thế th&amp;igrave; sao? B&amp;acirc;y giờ mới nhận ra M&amp;acirc;u X&amp;aacute; ch&amp;acirc;u sao? - Di La thấy vậy th&amp;igrave; cười lạnh:&lt;br /&gt;
&lt;br /&gt;
- Kh&amp;ocirc;ng Đồng gọi ngươi tới cứu hắn nhưng kh&amp;ocirc;ng n&amp;oacute;i cho ngươi biết v&amp;igrave; M&amp;acirc;u X&amp;aacute; ch&amp;acirc;u m&amp;agrave; gặp phải kiếp nạn n&amp;agrave;y sao?&lt;br /&gt;
&lt;br /&gt;
- Tiểu tử! Cho d&amp;ugrave; sư t&amp;ocirc;n của ngươi đ&amp;iacute;ch th&amp;acirc;n đến th&amp;igrave; cũng kh&amp;ocirc;ng d&amp;aacute;m n&amp;oacute;i với ta như vậy. Chết đến nơi m&amp;agrave; vẫn c&amp;ograve;n ng&amp;ocirc;ng cuồng. - Liệt Dương ch&amp;acirc;n nh&amp;acirc;n nổi giận, kiếm quang b&amp;ugrave;ng l&amp;ecirc;n bắn về ph&amp;iacute;a Di La.&lt;br /&gt;
&lt;br /&gt;
Di La lại xuất &amp;Acirc;m S&amp;aacute;t thủ, kh&amp;iacute; đen v&amp;agrave; kiếm quang va chạm v&amp;agrave;o nhau chẳng kh&amp;aacute;c n&amp;agrave;o r&amp;oacute;t dầu s&amp;ocirc;i l&amp;ecirc;n tr&amp;ecirc;n miếng sắt n&amp;oacute;ng đỏ m&amp;agrave; h&amp;oacute;a th&amp;agrave;nh một l&amp;agrave;n kh&amp;oacute;i nhẹ. Nhưng Di La cũng kh&amp;ocirc;ng hốt hoảng, chỉ n&amp;oacute;i một c&amp;acirc;u:&lt;br /&gt;
&lt;br /&gt;
- Ngươi n&amp;oacute;i xem đ&amp;aacute;m người Thục Sơn c&amp;oacute; phải mấy con lợn chết hay kh&amp;ocirc;ng?&lt;br /&gt;
&lt;br /&gt;
Liệt Dương nghe thấy vậy th&amp;igrave; kiếm quang lay động:&lt;br /&gt;
&lt;br /&gt;
- Ph&amp;aacute;p thuật của &amp;Acirc;m Ti&amp;ecirc;u ch&amp;acirc;n nh&amp;acirc;n vốn &amp;acirc;m độc. T&amp;ecirc;n tiểu tử n&amp;agrave;y l&amp;agrave; đệ tử của hắn, nếu quyết liều mạng th&amp;igrave; nhất thời cũng kh&amp;oacute; bắt được. Nơi n&amp;agrave;y lại gần với Thục Sơn, hơn nữa ba t&amp;ecirc;n Thanh Th&amp;agrave;nh kia cũng kh&amp;ocirc;ng phải l&amp;agrave; hạng t&amp;agrave;m thường, kh&amp;ocirc;ng thể để cho ch&amp;uacute;ng chiếm lợi được. - Nghĩ vậy, Liệt Dương ch&amp;acirc;n nh&amp;acirc;n liền do dự.&lt;br /&gt;
&lt;br /&gt;
Một nụ cười khinh thường xuất hiện tr&amp;ecirc;n kh&amp;oacute;e m&amp;ocirc;i của Di La.&lt;br /&gt;
&lt;br /&gt;
&amp;quot;Kh&amp;ocirc;ng cần biết tu vi của ngươi cao đến đ&amp;acirc;u, nhưng muốn c&amp;oacute; được M&amp;acirc;u X&amp;aacute; ch&amp;acirc;u cũng kh&amp;ocirc;ng phải dễ!&amp;quot;&lt;br /&gt;
&lt;br /&gt;
Suy nghĩ của Di La ho&amp;agrave;n to&amp;agrave;n đ&amp;uacute;ng. M&amp;acirc;u X&amp;aacute; ch&amp;acirc;u đối với Liệt Dương quả thực c&amp;oacute; sức hấp dẫn rất lớn. N&amp;ecirc;n khi vừa mới nhận ra M&amp;acirc;u X&amp;aacute; ch&amp;acirc;n, Liệt Dương ch&amp;acirc;n nh&amp;acirc;n chấn động, như rơi v&amp;agrave;o trong địa ngục tham lam của người tu h&amp;agrave;nh Phật m&amp;ocirc;n, su&amp;yacute;t ch&amp;uacute;t nữa th&amp;igrave; ngay cả phi kiếm của m&amp;igrave;nh cũng kh&amp;ocirc;ng c&amp;ograve;n khống chế được. Nhưng Di La kh&amp;ocirc;ng ngờ được t&amp;iacute;nh c&amp;aacute;ch của Liệt Dương ch&amp;acirc;n nh&amp;acirc;n lại cứng rắn:&lt;br /&gt;
&lt;br /&gt;
- Cho d&amp;ugrave; ta kh&amp;ocirc;ng c&amp;oacute; được M&amp;acirc;u X&amp;aacute; ch&amp;acirc;u th&amp;igrave; sao? - Liếc mắt thấy nụ cười ch&amp;acirc;m biếm của Di La, ngọn lửa trong người Liệt Dương ch&amp;acirc;n nh&amp;acirc;n b&amp;ugrave;ng l&amp;ecirc;n. L&amp;atilde;o chẳng hề nghĩ ngợi, kiếm quang tản ra chiếu s&amp;aacute;ng phạm vi mấy trượng như ban ng&amp;agrave;y.&lt;br /&gt;
&lt;br /&gt;
- Hay cho t&amp;ecirc;n ục ịch. - Di La thấy vậy th&amp;igrave; qu&amp;aacute; sợ h&amp;atilde;i, vội v&amp;agrave;ng vung đoản trượng m&amp;agrave; ph&amp;oacute;ng ra kh&amp;iacute; đen.&lt;br /&gt;
&lt;br /&gt;
Liệt Dương ch&amp;acirc;n nh&amp;acirc;n cười ha hả, chỉ tay một c&amp;aacute;i. X&amp;iacute;ch Diễm Kim Ngh&amp;ecirc; kiếm được luyện chế tinh kim trong X&amp;iacute;ch Dương ch&amp;acirc;n hỏa. N&amp;oacute; c&amp;oacute; uy lực cực lớn, lại kh&amp;ocirc;ng sợ sự dơ bẩn của &amp;acirc;m hồn v&amp;igrave; vậy m&amp;agrave; đẩy &amp;acirc;m hồn ra xung quanh.&lt;br /&gt;
&lt;br /&gt;
Một tia s&amp;aacute;ng bạc lao thẳng về ph&amp;iacute;a Liệt Dương ch&amp;acirc;n nh&amp;acirc;n. Di La thấy t&amp;igrave;nh h&amp;igrave;nh kh&amp;ocirc;ng ổn lại n&amp;eacute;m ra ng&amp;acirc;n sắc l&amp;ocirc;i ch&amp;acirc;u.&lt;br /&gt;
&lt;br /&gt;
- Hừ!&lt;br /&gt;
&lt;br /&gt;
Liệt Dương ch&amp;acirc;n nh&amp;acirc;n chẳng th&amp;egrave;m n&amp;eacute; tr&amp;aacute;nh, h&amp;aacute; mồm phun ra một luồng kh&amp;iacute; m&amp;agrave;u trắng, cuốn ng&amp;acirc;n sắc l&amp;ocirc;i ch&amp;acirc;u v&amp;agrave;o trong miệng. B&amp;ecirc;n kia, Di La run rẩy, sắc mặt t&amp;aacute;i nhợt su&amp;yacute;t ch&amp;uacute;t nữa th&amp;igrave; bị Liệt Dương ch&amp;acirc;n nh&amp;acirc;n ch&amp;eacute;m tr&amp;uacute;ng.&lt;br /&gt;
&lt;br /&gt;
- Ph&amp;aacute;p thuật phi kiếm của Liệt Dương ch&amp;acirc;n nh&amp;acirc;n đ&amp;uacute;ng l&amp;agrave; qu&amp;aacute; b&amp;aacute; đạo, kh&amp;ocirc;ng ngờ lại c&amp;ograve;n thu cả ph&amp;aacute;p bảo của đối thủ. - Trong t&amp;iacute;ch tắc, cả ba người Thanh Th&amp;agrave;nh đều c&amp;oacute; suy nghĩ như vậy. Nhưng đ&amp;uacute;ng l&amp;uacute;c n&amp;agrave;y đột nhi&amp;ecirc;n lại c&amp;oacute; tiếng h&amp;eacute;t to:&lt;br /&gt;
&lt;br /&gt;
- C&amp;aacute;c ngươi muốn thừa cơ cướp đoạt M&amp;acirc;u X&amp;aacute; ch&amp;acirc;u c&amp;oacute; phải kh&amp;ocirc;ng?&lt;br /&gt;
&lt;br /&gt;
Ngao Minh, T&amp;ugrave;ng Hạc Tử, Thủy V&amp;ocirc; Nguyệt sửng sốt. Liệt Dương ch&amp;acirc;n nh&amp;acirc;n hơi do dự một ch&amp;uacute;t th&amp;igrave; Di La liền n&amp;eacute;m ra một l&amp;agrave;n kh&amp;oacute;i lạnh.&lt;/p&gt;
', 1, CAST(0x0000ADEF01125092 AS DateTime), CAST(0x0000ADEF01125092 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (3112, 4101, 2042, N'Chương 4: Không nhiễm bụi trần. Chủ nhân Mâu Xá', N'&lt;p&gt;- Giỏi cho quỷ kế của ngươi. - Ba người Thanh Th&amp;agrave;nh nhướng m&amp;agrave;y, lập tức nhận ra đ&amp;oacute; l&amp;agrave; Huyền Minh &amp;acirc;m l&amp;acirc;n sa v&amp;ocirc; c&amp;ugrave;ng độc.&lt;br /&gt;
&lt;br /&gt;
Di La cố t&amp;igrave;nh h&amp;ocirc; l&amp;ecirc;n l&amp;agrave; để l&amp;agrave;m cho Liệt Dương ch&amp;acirc;n nh&amp;acirc;n mất tập trung m&amp;agrave; thả ra Huyền Minh &amp;acirc;m l&amp;acirc;n sa.&lt;br /&gt;
&lt;br /&gt;
- Kh&amp;ocirc;ng ổn. - Trong nh&amp;aacute;y mắt Liệt Dương ch&amp;acirc;n nh&amp;acirc;n tỉnh t&amp;aacute;o. Nhưng l&amp;agrave;n kh&amp;oacute;i nhẹ bốc l&amp;ecirc;n đ&amp;atilde; ngăn chặn X&amp;iacute;ch Diễm Kim Ngh&amp;ecirc; kiếm của l&amp;atilde;o. Khi l&amp;atilde;o thu phi kiếm lại th&amp;igrave; tr&amp;ecirc;n th&amp;acirc;n kiếm đ&amp;atilde; c&amp;oacute; &amp;aacute;nh s&amp;aacute;ng m&amp;agrave;u đỏ.&lt;br /&gt;
&lt;br /&gt;
Phi kiếm nh&amp;igrave;n qua th&amp;igrave; tầm thường nhưng thực tế tu luyện kh&amp;ocirc;ng hề đơn giản. B&amp;igrave;nh thường ph&amp;aacute;p ph&amp;aacute;p m&amp;ocirc;n phi kiếm l&amp;agrave; phải c&amp;oacute; được phi kiếm lợi hại l&amp;agrave;m cốt l&amp;otilde;i rồi d&amp;ugrave;ng nguy&amp;ecirc;n kh&amp;iacute; của bản th&amp;acirc;n m&amp;agrave; săn s&amp;oacute;c, từ từ ph&amp;acirc;n h&amp;oacute;a nguy&amp;ecirc;n thần tr&amp;ecirc;n th&amp;acirc;n kiếm. Cho tới khi t&amp;acirc;m thần tương th&amp;ocirc;ng, d&amp;ugrave;ng chẳng kh&amp;aacute;c g&amp;igrave; c&amp;aacute;nh tay của m&amp;igrave;nh th&amp;igrave; mới coi như th&amp;agrave;nh c&amp;ocirc;ng. Thanh X&amp;iacute;ch Dương Kim Ngh&amp;ecirc; kiếm của Liệt Dương ch&amp;acirc;n nh&amp;acirc;n mặc d&amp;ugrave; l&amp;agrave; vật phi ph&amp;agrave;m nhưng Huyền Minh &amp;acirc;m l&amp;acirc;n sa của Di La cũng đ&amp;atilde; d&amp;iacute;nh l&amp;ecirc;n th&amp;acirc;n kiếm, đốt ch&amp;aacute;y nguy&amp;ecirc;n kh&amp;iacute;. L&amp;uacute;c n&amp;agrave;y, &amp;aacute;nh s&amp;aacute;ng của X&amp;iacute;ch Dương Kim Ngh&amp;ecirc; kiếm cũng đ&amp;atilde; giảm đi, chứng tỏ nguy&amp;ecirc;n kh&amp;iacute; bị thương rất nhiều.&lt;br /&gt;
&lt;br /&gt;
Liệt Dương ch&amp;acirc;n nh&amp;acirc;n d&amp;ugrave;ng nguy&amp;ecirc;n thần của bản th&amp;acirc;n chặt đứt sự li&amp;ecirc;n hệ giữa Di La v&amp;agrave; Ng&amp;acirc;n sắc l&amp;ocirc;i ch&amp;acirc;u, thu lấy ph&amp;aacute;p bảo đ&amp;oacute;, l&amp;agrave;m cho nguy&amp;ecirc;n thần của Di La bị thương. Đến giờ, Di La d&amp;ugrave;ng Huyền Minh &amp;acirc;m l&amp;acirc;n sa cũng l&amp;agrave;m tổn thương nguy&amp;ecirc;n thần của Liệt Dương ch&amp;acirc;n nh&amp;acirc;n v&amp;agrave; X&amp;iacute;ch Dương Kim Ngh&amp;ecirc; kiếm, c&amp;oacute; thể n&amp;oacute;i l&amp;agrave; ăn miếng trả miếng. Nhưng Di La đối với Liệt Dương ch&amp;acirc;n nh&amp;acirc;n chỉ l&amp;agrave; một t&amp;ecirc;n hậu bối vậy m&amp;agrave; mấy lần đối mặt kh&amp;ocirc;ng xử l&amp;yacute; được m&amp;agrave; c&amp;ograve;n để phi kiếm bị hao tổn khiến cho Liệt Dương ch&amp;acirc;n nh&amp;acirc;n tức giận tới mức x&amp;igrave; kh&amp;oacute;i:&lt;br /&gt;
&lt;br /&gt;
- H&amp;ocirc;m nay kh&amp;ocirc;ng giết ngươi thề kh&amp;ocirc;ng l&amp;agrave;m người.&lt;br /&gt;
&lt;br /&gt;
Một l&amp;agrave;n kiếm quang chợt l&amp;oacute;e l&amp;ecirc;n. Di La vung đoản trượng chắn lại th&amp;igrave; chỉ thấy đ&amp;oacute; l&amp;agrave; hư chi&amp;ecirc;u. Mấy tiếng nổ ngay lập tức xuất hiện. Liệt Dương ch&amp;acirc;n nh&amp;acirc;n ph&amp;aacute;t ra năm đạo thi&amp;ecirc;n l&amp;ocirc;i c&amp;oacute; &amp;aacute;nh s&amp;aacute;ng m&amp;agrave;u v&amp;agrave;ng kim bao phủ Di La v&amp;agrave; giữa. Di La h&amp;uacute; l&amp;ecirc;n một tiếng qu&amp;aacute;i dị, th&amp;acirc;n thể như bị l&amp;agrave;n gi&amp;oacute; cuốn l&amp;ecirc;n kh&amp;ocirc;ng trung.&lt;br /&gt;
&lt;br /&gt;
- C&amp;aacute;i t&amp;ecirc;n n&amp;agrave;y dữ nhiều l&amp;agrave;nh &amp;iacute;t. - Ba người Thanh Th&amp;agrave;nh nh&amp;igrave;n thấy kiếm quang của Liệt Dương ch&amp;acirc;n nh&amp;acirc;n đuổi theo ph&amp;iacute;a sau khiến cho Di la vừa mới ngưng tụ được đ&amp;aacute;m m&amp;acirc;y đen lập tức tản ra. Mắt thấy Di La tưởng như kh&amp;ocirc;ng thể tho&amp;aacute;t khỏi th&amp;igrave; tr&amp;ecirc;n bầu trời lại c&amp;oacute; một vầng s&amp;aacute;ng m&amp;agrave;u đen hạ xuống. Đ&amp;oacute; ch&amp;iacute;nh l&amp;agrave; một thanh phi kiếm d&amp;agrave;i ba thước m&amp;agrave;u đen.&lt;br /&gt;
&lt;br /&gt;
Nh&amp;igrave;n thấy thanh phi kiếm v&amp;agrave; người đứng tr&amp;ecirc;n đ&amp;oacute; tản ra luồng kh&amp;iacute; giống hệt với Di La, Liệt Dương ch&amp;acirc;n nh&amp;acirc;n biết người tới l&amp;agrave; địch chứ kh&amp;ocirc;ng phải l&amp;agrave; bạn. V&amp;igrave; vậy m&amp;agrave; kh&amp;ocirc;ng để cho &amp;aacute;nh s&amp;aacute;ng m&amp;agrave;u đen cuốn lấy phi kiếm của m&amp;igrave;nh, Liệt dương ch&amp;acirc;n nh&amp;acirc;n đ&amp;atilde; lấy Hỏa V&amp;acirc;n thoi, nhưng chưa kịp ph&amp;aacute;t ra th&amp;igrave; thấy từ tr&amp;ecirc;n đỉnh cầu c&amp;oacute; một đ&amp;aacute;m m&amp;acirc;y m&amp;agrave;u v&amp;agrave;ng, lục h&amp;igrave;nh tr&amp;ograve;n chụp xuống.&lt;br /&gt;
&lt;br /&gt;
Đ&amp;aacute;m m&amp;acirc;y đ&amp;oacute; chưa tới gần nhưng m&amp;ugrave;i tanh h&amp;ocirc;i đ&amp;atilde; xộc v&amp;agrave;o mũi. Liệt dương ch&amp;acirc;n nh&amp;acirc;n nhận ra ngay n&amp;oacute; tập trung kh&amp;iacute; x&amp;aacute;c thối hỗn tạp của trăm loại độc tr&amp;ugrave;ng để luyện th&amp;agrave;nh. V&amp;igrave; vậy m&amp;agrave; l&amp;atilde;o vội v&amp;agrave;ng bắt ph&amp;aacute;p quyết, tạo ra một vầng &amp;aacute;nh s&amp;aacute;ng m&amp;agrave;u hồng bao phủ lấy.&lt;br /&gt;
&lt;br /&gt;
- Sư huynh!&lt;br /&gt;
&lt;br /&gt;
Khi &amp;acirc;m thanh ngạc nhi&amp;ecirc;n vui mừng của Di La vang l&amp;ecirc;n, b&amp;ecirc;n cạnh g&amp;atilde; xuất hiện một nam tử c&amp;oacute; khu&amp;ocirc;n mặt &amp;acirc;m trầm.&lt;/p&gt;

&lt;p&gt;&lt;br /&gt;
&lt;br /&gt;
- Đ&amp;acirc;y l&amp;agrave; đại đệ tử H&amp;aacute;ch Đồ của &amp;Acirc;m Ti&amp;ecirc;u ch&amp;acirc;n ch&amp;acirc;n.&lt;br /&gt;
&lt;br /&gt;
H&amp;aacute;ch Đồ v&amp;agrave; Di La vốn xuất th&amp;acirc;n c&amp;ugrave;ng một mạch nhưng ph&amp;aacute;p thuật tu h&amp;agrave;nh lại c&amp;oacute; sự kh&amp;aacute;c nhau. G&amp;atilde; tu luyện phi kiếm, hơn nữa tu vi dường như cao hơn Di La rất nhiều, chẳng tr&amp;aacute;ch m&amp;agrave; Kh&amp;ocirc;ng Đồng kh&amp;ocirc;ng phải l&amp;agrave; địch thủ. Hơn nữa, nh&amp;igrave;n sắc mặt của y c&amp;oacute; thể n&amp;oacute;i sự t&amp;agrave;n nhẫn v&amp;agrave; &amp;acirc;m độc của người n&amp;agrave;y so với Di La chỉ c&amp;oacute; hơn chứ kh&amp;ocirc;ng k&amp;eacute;m.&lt;br /&gt;
&lt;br /&gt;
Hai thanh phi kiếm xoắn lại với nhau, Liệt Dương ch&amp;acirc;n nh&amp;acirc;n cảm thấy chưa chắc đ&amp;atilde; chống lại được sự li&amp;ecirc;n thủ của hai người. L&amp;atilde;o hơi chần chừ một ch&amp;uacute;t th&amp;igrave; từ nơi ngọn n&amp;uacute;i đen chợt c&amp;oacute; một luồng kiếm quang vọt l&amp;ecirc;n trời.&lt;br /&gt;
&lt;br /&gt;
Chỗ đ&amp;oacute; ch&amp;iacute;nh l&amp;agrave; Thục Sơn.&lt;br /&gt;
&lt;br /&gt;
Kiếm quang Thục Sơn vừa mới xuất hiện khiến cho Liệt Dương ch&amp;acirc;n nh&amp;acirc;n v&amp;agrave; H&amp;aacute;ch Đồ đều cảm thấy kinh ho&amp;agrave;ng, đ&amp;egrave; n&amp;eacute;n phi kiếm của m&amp;igrave;nh lại.&lt;br /&gt;
&lt;br /&gt;
Phi kiếm thi&amp;ecirc;n hạ xuất Thục Sơn.&lt;br /&gt;
&lt;br /&gt;
Phi kiếm của Thục Sơn c&amp;oacute; oai lực được thi&amp;ecirc;n hạ c&amp;ocirc;ng nhận l&amp;agrave; số một. Từ mười bảy năm trước, H&amp;aacute;ch Đồ đ&amp;atilde; từng thấy một cao thủ v&amp;ocirc; danh của Thục Sơn đấu với người kh&amp;aacute;c, kiếm quang của y như sấm s&amp;eacute;t tr&amp;ecirc;n ch&amp;iacute;n tầng trời, v&amp;ocirc; c&amp;ugrave;ng biến ảo, trong nh&amp;aacute;y mắt đ&amp;atilde; ch&amp;eacute;m giết đối thủ.&lt;br /&gt;
&lt;br /&gt;
Bạch y thắng tuyết, kiếm kh&amp;iacute; tới trời cao.&lt;br /&gt;
&lt;br /&gt;
Nh&amp;igrave;n thấy lại kiếm quang của Thục sơn, H&amp;aacute;ch Đồ liền nhớ tới cảnh tượng mười bảy năm trước v&amp;agrave; c&amp;aacute;i b&amp;oacute;ng cao thủ Thục Sơn kh&amp;ocirc;ng biết t&amp;ecirc;n đ&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
Kiếm quang tỏa ra bốn xung quanh đồng thời lao đi với tốc độ cực nhanh. Quả thực khoảng c&amp;aacute;ch trăm dặm m&amp;agrave; chỉ trong một c&amp;aacute;i nh&amp;aacute;y mắt khiến cho người ta phải ngưng thần n&amp;iacute;n thở.&lt;br /&gt;
&lt;br /&gt;
Tuy nhi&amp;ecirc;n, sau h&amp;agrave;nh động của T&amp;ugrave;ng Hạc Tử, Ngạo Minh v&amp;agrave; Thủy V&amp;ocirc; Nguyệt đều kh&amp;ocirc;ng nhịn được m&amp;agrave; truyền &amp;acirc;m với y:&lt;br /&gt;
&lt;br /&gt;
- Sư huynh! M&amp;acirc;u X&amp;aacute; ch&amp;acirc;u l&amp;agrave; thứ ph&amp;aacute;p bảo g&amp;igrave;?&lt;br /&gt;
&lt;br /&gt;
- M&amp;acirc;u X&amp;aacute; ch&amp;acirc;u kh&amp;ocirc;ng phải l&amp;agrave; ph&amp;aacute;p bảo. - T&amp;ugrave;ng Hạc Tử nghe Thủy V&amp;ocirc; Nguyệt v&amp;agrave; Ngạo Minh hỏi nhưng &amp;aacute;nh mắt vẫn nh&amp;igrave;n về ph&amp;iacute;a hạt ch&amp;acirc;u trong tay người thiếu ni&amp;ecirc;n đang tản ra &amp;aacute;nh s&amp;aacute;ng m&amp;agrave;u lam. Điều khiến cho T&amp;ugrave;ng Hạc Tử cảm thấy kinh ngạc đ&amp;oacute; l&amp;agrave; mặc d&amp;ugrave; thiếu ni&amp;ecirc;n đ&amp;oacute; quần &amp;aacute;o tơi tả, sắc mặt trắng bệch, th&amp;acirc;n h&amp;igrave;nh hơi run run nhưng vẫn đứng nguy&amp;ecirc;n như cũ. Nếu đổi lại l&amp;agrave; một thiếu ni&amp;ecirc;n nơi sơn d&amp;atilde; kh&amp;aacute;c th&amp;igrave; nh&amp;igrave;n thấy trận đấu ph&amp;aacute;p như vậy chắc chắn đ&amp;atilde; hồn bay ph&amp;aacute;ch lạc m&amp;agrave; chết ngất.&lt;br /&gt;
&lt;br /&gt;
&amp;quot;Thiếu ni&amp;ecirc;n n&amp;agrave;y thật can đảm. Kh&amp;ocirc;ng biết tại sao M&amp;acirc;u X&amp;aacute; ch&amp;acirc;u lại rơi v&amp;agrave;o tay hắn?&amp;quot; T&amp;ugrave;ng Hạc Tử nghĩ như vậy. M&amp;agrave; c&amp;acirc;u n&amp;oacute;i của y lại c&amp;agrave;ng khiến cho Thủy V&amp;ocirc; Nguyệt v&amp;agrave; Ngao Minh th&amp;ecirc;m t&amp;ograve; m&amp;ograve;:&lt;br /&gt;
&lt;br /&gt;
- Nếu kh&amp;ocirc;ng phải l&amp;agrave; ph&amp;aacute;p bảo th&amp;igrave; v&amp;igrave; sao huynh vừa mới thấy lại giật m&amp;igrave;nh m&amp;agrave; đ&amp;aacute;m người kia lại coi trọng n&amp;oacute; đến vậy?&lt;br /&gt;
&lt;br /&gt;
T&amp;ugrave;ng Hạc Tử gật đầu n&amp;oacute;i:&lt;br /&gt;
&lt;br /&gt;
- Đ&amp;uacute;ng! M&amp;acirc;u X&amp;aacute; ch&amp;acirc;u l&amp;agrave; một hạt ch&amp;acirc;u do một loại c&amp;acirc;y thủy sinh sinh ra. Nếu đeo n&amp;oacute; tr&amp;ecirc;n người th&amp;igrave; chỉ c&amp;oacute; t&amp;aacute;c dụng l&amp;agrave;m giảm m&amp;ugrave;i. Nhưng đ&amp;acirc;y cũng nguy&amp;ecirc;n l&amp;agrave; t&amp;iacute;n vật của Nguy&amp;ecirc;n Thi&amp;ecirc;n Y. Nghe n&amp;oacute;i năm đ&amp;oacute; c&amp;oacute; y chịu đại &amp;acirc;n của người kh&amp;aacute;c n&amp;ecirc;n giao M&amp;acirc;u X&amp;aacute; ch&amp;acirc;u cho người đ&amp;oacute;, c&amp;ograve;n n&amp;oacute;i rằng trong tương lai chỉ cần c&amp;oacute; người cầm M&amp;acirc;u X&amp;aacute; ch&amp;acirc;u tới, giao cho y th&amp;igrave; y c&amp;oacute; thể l&amp;agrave;m cho một chuyện, kh&amp;ocirc;ng cần biết chuyện đ&amp;oacute; kh&amp;oacute; khăn, nguy hiểm tới mức độ n&amp;agrave;o.&lt;br /&gt;
&lt;br /&gt;
&amp;quot;t&amp;iacute;n vật của Nguy&amp;ecirc;n Thi&amp;ecirc;n Y?&amp;quot;&lt;br /&gt;
&lt;br /&gt;
T&amp;ugrave;ng Hạc Tử c&amp;ograve;n chưa n&amp;oacute;i xong, Thủy V&amp;ocirc; Nguyệt v&amp;agrave; Ngao Minh đ&amp;atilde; hoảng sợ, thiếu ch&amp;uacute;t nữa th&amp;igrave; k&amp;ecirc;u l&amp;ecirc;n.&lt;br /&gt;
&lt;br /&gt;
Nam La Ph&amp;ugrave;, Bắc Sắc Lặc. La Ph&amp;ugrave; v&amp;agrave; Sắc Lặc chiếm giữ một nơi th&amp;igrave; ở Nam cương c&amp;ograve;n một nơi th&amp;igrave; ở Bắc vực. Đ&amp;acirc;y l&amp;agrave; hai m&amp;ocirc;n ph&amp;aacute;i thần b&amp;iacute; nhất tr&amp;ecirc;n trần thế. Mấy trăm năm qua, chỉ c&amp;oacute; rất &amp;iacute;t đệ tử của họ đi lại b&amp;ecirc;n ngo&amp;agrave;i, nhưng những người xuất hiện đều c&amp;oacute; tu vi cực cao, kinh thế h&amp;atilde;i tục.&lt;br /&gt;
&lt;br /&gt;
Nguy&amp;ecirc;n Thi&amp;ecirc;n Y ch&amp;iacute;nh l&amp;agrave; t&amp;ocirc;ng chủ của La Ph&amp;ugrave; t&amp;ocirc;ng.&lt;br /&gt;
&lt;br /&gt;
Năm mươi năm trước, ph&amp;aacute;i &amp;Acirc;m Sơn chẳng biết v&amp;igrave; sao m&amp;agrave; kết th&amp;ugrave; với Nguy&amp;ecirc;n Thi&amp;ecirc;n Y, dốc hết cao thủ v&amp;acirc;y giết Nguy&amp;ecirc;n Thi&amp;ecirc;n Y. Đồng thời họ c&amp;ograve;n kh&amp;ocirc;ng tiếc tạo ra s&amp;aacute;t nghiệt, lấy m&amp;aacute;u v&amp;agrave; hồn ph&amp;aacute;ch của ba trăm đồng nam, đồng nữ l&amp;agrave;m vật dẫn bỏ xuống Ho&amp;agrave;ng Tuyền U Minh trận để đối ph&amp;oacute; với Nguy&amp;ecirc;n Thi&amp;ecirc;n Y. Nhưng trong trận chiến đ&amp;oacute;, Nguy&amp;ecirc;n Thi&amp;ecirc;n Y vẫn nguy&amp;ecirc;n vẹn, thản nhi&amp;ecirc;n m&amp;agrave; đi, để lại ph&amp;aacute;i &amp;Acirc;m Sơn vốn ngang h&amp;agrave;ng với c&amp;aacute;c đại m&amp;ocirc;n ph&amp;aacute;i nhưng số cao thủ của họ th&amp;igrave; mười phần chết tới t&amp;aacute;m. Ngay cả sơn m&amp;ocirc;n động phủ cũng bị người kh&amp;aacute;c chiếm mất.&lt;br /&gt;
&lt;br /&gt;
Ba mươi năm trước, dị nh&amp;acirc;n Nga Mi l&amp;agrave; Thử Ly tu luyện th&amp;agrave;nh c&amp;ocirc;ng Kim Tỏa lưu ch&amp;acirc;u dẫn, sau đ&amp;oacute; c&amp;ugrave;ng với chưởng giao Nga Minh luận đấu ph&amp;aacute;p nơi Kim đỉnh bất ph&amp;acirc;n thắng phụ n&amp;ecirc;n đắc ch&amp;iacute;. Sau đ&amp;oacute; khi tới bờ Ho&amp;agrave;ng hải th&amp;igrave; gặp được Nguy&amp;ecirc;n Thi&amp;ecirc;n Y, cả hai n&amp;oacute;i chuyện kh&amp;ocirc;ng vừa &amp;yacute; liền đấu ph&amp;eacute;p với Nguy&amp;ecirc;n Thien Y khiến cho cả nguy&amp;ecirc;n thần cũng bị diệt.&lt;br /&gt;
&lt;br /&gt;
V&amp;igrave; vậy m&amp;agrave; trong truyền thuyết th&amp;igrave; Nguy&amp;ecirc;n Thi&amp;ecirc;n Y l&amp;agrave; một người vừa ch&amp;iacute;nh vừa ta, l&amp;agrave;m việc theo sở th&amp;iacute;ch của bản th&amp;acirc;n, s&amp;aacute;t nghiệt rất nặng, nhưng tu vi của y lại tới mức m&amp;agrave; người ta kh&amp;oacute; c&amp;oacute; thể tưởng tượng được.&lt;br /&gt;
&lt;br /&gt;
Trong truyền thuyết th&amp;igrave; tu luyện tới cảnh giới bất tử bất diệt l&amp;agrave; cao nhất. Nguy&amp;ecirc;n Thi&amp;ecirc;n Y cũng chỉ c&amp;ograve;n một ch&amp;uacute;t nữa l&amp;agrave; đạt tới c&amp;aacute;i cảnh giới m&amp;agrave; từ ng&amp;agrave;n năm nay kh&amp;ocirc;ng người n&amp;agrave;o c&amp;oacute; thể đạt tới. Đ&amp;oacute; l&amp;agrave; cảnh giới độ kiếp phi thăng.&lt;br /&gt;
&lt;br /&gt;
C&amp;aacute;i việc loại bỏ m&amp;ugrave;i đ&amp;oacute; th&amp;igrave; chỉ cần một c&amp;aacute;i trận ph&amp;aacute;p nho nhỏ l&amp;agrave; c&amp;oacute; thể l&amp;agrave;m được. Nhưng c&amp;oacute; được hạt ch&amp;acirc;u n&amp;agrave;y th&amp;igrave; c&amp;oacute; thể hỏi được ph&amp;aacute;p bảo mạnh mẽ nhất của Nguy&amp;ecirc;n Thi&amp;ecirc;n Y, hoặc l&amp;agrave; ph&amp;aacute;p quyết th&amp;acirc;m s&amp;acirc;u, chỉ sợ c&amp;oacute; thể thay đổi một người hoặc l&amp;agrave; vận mệnh của một m&amp;ocirc;n ph&amp;aacute;i.&lt;br /&gt;
&lt;br /&gt;
Ngao Minh v&amp;agrave; Thủy V&amp;ocirc; Nguyệt, một người trời sinh t&amp;iacute;nh t&amp;igrave;nh đ&amp;ocirc;n hậu, một người th&amp;igrave; trời sinh t&amp;iacute;nh t&amp;igrave;nh thản nhi&amp;ecirc;n. Vốn họ biết hạt ch&amp;acirc;u n&amp;agrave;y kh&amp;ocirc;ng phải l&amp;agrave; vật tầm thường nhưng cũng chẳng hề c&amp;oacute; l&amp;ograve;ng tham. C&amp;oacute; điều hiện tại, &amp;aacute;nh mắt của cả hai cũng đều kh&amp;ocirc;ng tự chủ được m&amp;agrave; nh&amp;igrave;n về ph&amp;iacute;a hạt ch&amp;acirc;u trong tay thiếu ni&amp;ecirc;n.&lt;br /&gt;
&lt;br /&gt;
- Hạt ch&amp;acirc;u n&amp;agrave;y l&amp;agrave; do c&amp;acirc;y thủy sinh sinh ra vậy th&amp;igrave; l&amp;agrave;m thế n&amp;agrave;o để biết được c&amp;aacute;i n&amp;agrave;y l&amp;agrave; t&amp;iacute;n vật của y? - Thủy V&amp;ocirc; Nguyệt kh&amp;ocirc;ng nhịn được m&amp;agrave; hỏi T&amp;ugrave;ng Hạc Tử.&lt;br /&gt;
&lt;br /&gt;
- C&amp;aacute;i c&amp;acirc;y thủy sinh đ&amp;oacute; t&amp;ecirc;n l&amp;agrave; Tinh Đồ, chỉ c&amp;oacute; ở La Ph&amp;ugrave;. Trăm năm nở hoa, ng&amp;agrave;n năm kết quả. Tương truyền gốc c&amp;acirc;y tinh đồ duy nhất đ&amp;atilde; chết h&amp;eacute;o từ l&amp;acirc;u. V&amp;igrave; vậy m&amp;agrave; trong thi&amp;ecirc;n hạ c&amp;oacute; lẽ cũng chỉ c&amp;ograve;n một vi&amp;ecirc;n M&amp;acirc;u X&amp;aacute; ch&amp;acirc;u n&amp;agrave;y m&amp;agrave; th&amp;ocirc;i.&lt;br /&gt;
&lt;br /&gt;
Trong l&amp;uacute;c n&amp;oacute;i chuyện th&amp;igrave; mấy đạo kiếm quang kia đ&amp;atilde; bay v&amp;uacute;t qua lại v&amp;agrave;i lần trong phạm vi trăm dặm. Dường như kh&amp;ocirc;ng ph&amp;aacute;t hiện được điều g&amp;igrave; n&amp;ecirc;n ch&amp;uacute;ng đột nhi&amp;ecirc;n biến mất trong trời đ&amp;ecirc;m.&lt;br /&gt;
&lt;br /&gt;
Việc đấu ph&amp;eacute;p sẽ khiến cho nguy&amp;ecirc;n kh&amp;iacute; trong trời đất thay đổi. Đ&amp;aacute;m đệ tử Thục Sơn l&amp;agrave;m sao m&amp;agrave; kh&amp;ocirc;ng ph&amp;aacute;t hiện được? Nhưng c&amp;oacute; lẽ đệ tử tuần sơn c&amp;oacute; tu vi hơi thấp chăng?&lt;br /&gt;
&lt;br /&gt;
Trong l&amp;uacute;c nhất thời, khi kiếm quang biến mất, những người c&amp;oacute; mặt ở đ&amp;acirc;y đều cố gắng kiềm chế m&amp;agrave; đứng y&amp;ecirc;n.&lt;br /&gt;
&lt;br /&gt;
Trong b&amp;atilde;i tha ma tối đen v&amp;agrave; Thục Sơn ở c&amp;aacute;ch xa đ&amp;oacute; giống như hai thế giới ho&amp;agrave;n to&amp;agrave;n c&amp;aacute;ch biệt.&lt;br /&gt;
&lt;br /&gt;
H&amp;aacute;ch Đồ nh&amp;igrave;n M&amp;acirc;u X&amp;aacute; ch&amp;acirc;u trong tay thiếu ni&amp;ecirc;n rồi chợt cười n&amp;oacute;i:&lt;br /&gt;
&lt;br /&gt;
- Lai lịch của M&amp;acirc;u X&amp;aacute; ch&amp;acirc;u c&amp;oacute; lẽ mọi người đều biết r&amp;otilde;.&lt;br /&gt;
&lt;br /&gt;
Liệt Dương ch&amp;acirc;n nh&amp;acirc;n v&amp;agrave; đ&amp;aacute;m người T&amp;ugrave;ng Hạc tử kh&amp;ocirc;ng ngờ H&amp;aacute;ch Đồ đột nhi&amp;ecirc;n lại n&amp;oacute;i một c&amp;acirc;u như vậy. Nhất thời bọn họ kh&amp;ocirc;ng n&amp;oacute;i g&amp;igrave;.&lt;br /&gt;
&lt;br /&gt;
H&amp;aacute;ch Đồ lại n&amp;oacute;i tiếp:&lt;br /&gt;
&lt;br /&gt;
- Hiện tại c&amp;oacute; lẽ ch&amp;uacute;ng ta cũng kh&amp;ocirc;ng c&amp;oacute; khả năng chiếm lấy một m&amp;igrave;nh. Người Thục Sơn đ&amp;atilde; ph&amp;aacute;t hiện, nếu ch&amp;uacute;ng ta m&amp;agrave; g&amp;acirc;y chiến th&amp;igrave; tất cả đừng mơ m&amp;agrave; c&amp;oacute; được M&amp;acirc;u X&amp;aacute; ch&amp;acirc;u. Hay l&amp;agrave; ch&amp;uacute;ng ta c&amp;ugrave;ng tới La Ph&amp;ugrave;, c&amp;oacute; ưu đ&amp;atilde;i g&amp;igrave; mọi người c&amp;ugrave;ng chia nhau c&amp;oacute; được kh&amp;ocirc;ng?&lt;br /&gt;
&lt;br /&gt;
- Ph&amp;igrave;! Bảo ta th&amp;ocirc;ng đồng với c&amp;aacute;c ngươi l&amp;agrave;m bậy? Đừng c&amp;oacute; nằm mơ. - H&amp;aacute;ch Đồ vừa mới dứt lời, Liệt Dương ch&amp;acirc;n nh&amp;acirc;n đ&amp;atilde; gầm l&amp;ecirc;n.&lt;br /&gt;
&lt;br /&gt;
- Vậy ngươi định thế n&amp;agrave;o? Nếu hai huynh đệ ch&amp;uacute;ng ta hợp lực, cho d&amp;ugrave; kh&amp;ocirc;ng phải l&amp;agrave; đối thủ của ngươi th&amp;igrave; muốn lui th&amp;acirc;n cũng kh&amp;ocirc;ng phải l&amp;agrave; việc kh&amp;oacute;. - H&amp;aacute;ch Đồ lại n&amp;oacute;i tiếp:&lt;br /&gt;
&lt;br /&gt;
- Sự lợi hại của chủ nh&amp;acirc;n M&amp;acirc;u X&amp;aacute; ch&amp;acirc;u th&amp;igrave; mọi người đều biết r&amp;otilde;. Dựa v&amp;agrave;o hạt ch&amp;acirc;u n&amp;agrave;y c&amp;oacute; được một thứ ph&amp;aacute;p quyết tu luyện cho mọi người c&amp;ugrave;ng xem cũng kh&amp;ocirc;ng phải l&amp;agrave; việc kh&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
H&amp;aacute;ch Đồ vừa mới dứt lời, đừng n&amp;oacute;i l&amp;agrave; ba người Thanh Th&amp;agrave;nh m&amp;agrave; ngay cả Liệt Dương ch&amp;acirc;n nh&amp;acirc;n cũng kh&amp;ocirc;ng nhịn được.&lt;br /&gt;
&lt;br /&gt;
Trong việc tu đạo rất coi trọng chữ duy&amp;ecirc;n. Với thi&amp;ecirc;n tư của mọi người c&amp;ugrave;ng với t&amp;acirc;m ph&amp;aacute;p bản m&amp;ocirc;n th&amp;igrave; cho d&amp;ugrave; c&amp;oacute; tu luyện khắc khổ tới mấy th&amp;igrave; th&amp;agrave;nh tựu coi như đ&amp;atilde; định. Nhưng tu vi của Nguy&amp;ecirc;n Thi&amp;ecirc;n Y đ&amp;atilde; đạt tới mức kh&amp;oacute; c&amp;oacute; thể tưởng tượng. N&amp;oacute;i vậy th&amp;igrave; ph&amp;aacute;p quyết tu luyện b&amp;igrave;nh thường cũng kh&amp;ocirc;ng thể n&amp;agrave;o s&amp;aacute;nh bằng. Hiện tại c&amp;oacute; được M&amp;acirc;u X&amp;aacute; ch&amp;acirc;u đ&amp;uacute;ng l&amp;agrave; một cơ duy&amp;ecirc;n kh&amp;oacute; gặp.&lt;br /&gt;
&lt;br /&gt;
V&amp;igrave; vậy m&amp;agrave; sau khi mọi người thấy kiếm quang của Thục Sơn, n&amp;ecirc;n kh&amp;ocirc;ng muốn n&amp;eacute;m chuột l&amp;agrave;m vỡ đồ qu&amp;yacute; m&amp;agrave; mất đi c&amp;aacute;i cơ duy&amp;ecirc;n n&amp;agrave;y.&lt;br /&gt;
&lt;br /&gt;
H&amp;aacute;ch Đồ quan s&amp;aacute;t n&amp;eacute;t mặt, liền nhận ra Liệt Dương ch&amp;acirc;n nh&amp;acirc;n đ&amp;atilde; động t&amp;acirc;m liền n&amp;oacute;i tiếp:&lt;br /&gt;
&lt;br /&gt;
- Liệt Dương ch&amp;acirc;n nh&amp;acirc;n! Ngươi v&amp;agrave; ta l&amp;agrave; người tu đạo cũng kh&amp;ocirc;ng cần phải l&amp;agrave;m bộ l&amp;agrave;m tịch. H&amp;ocirc;m nay ch&amp;uacute;ng ta đ&amp;aacute;nh nhau th&amp;igrave; tất cả đều chẳng được g&amp;igrave; tốt. Nếu ngươi nhất định phải b&amp;aacute;o th&amp;ugrave; cho Kh&amp;ocirc;ng Đồng th&amp;igrave; chờ khi ch&amp;uacute;ng ta đi La Ph&amp;ugrave; rồi n&amp;oacute;i sau. Ngươi thấy thế n&amp;agrave;o?&lt;br /&gt;
&lt;br /&gt;
Liệt Dương ch&amp;acirc;n nh&amp;acirc;n do dự một ch&amp;uacute;t rốt cuộc cắn răng rồi gật mạnh đầu:&lt;br /&gt;
&lt;br /&gt;
- Được.&lt;br /&gt;
&lt;br /&gt;
- T&amp;ugrave;ng Hạc Tử! C&amp;aacute;c ngươi thấy sao?&lt;br /&gt;
&lt;br /&gt;
H&amp;aacute;ch Đồ nh&amp;igrave;n ba người Thanh Th&amp;agrave;nh m&amp;agrave; cười cười. Nam tử mặc &amp;aacute;o b&amp;agrave;o đen cũng cười cười khiến cho Liệt Dương ch&amp;acirc;n nh&amp;acirc;n thầm than trong l&amp;ograve;ng răng &amp;Acirc;m Ti&amp;ecirc;u đạo nh&amp;acirc;n thu được hai nh&amp;acirc;n vật ki&amp;ecirc;u h&amp;ugrave;ng. Nhất thời trong l&amp;ograve;ng l&amp;atilde;o suy nghĩ xem c&amp;oacute; n&amp;ecirc;n muốn l&amp;agrave; địch với họ nữa kh&amp;ocirc;ng.&lt;br /&gt;
&lt;br /&gt;
T&amp;ugrave;ng Hạc Tử, Ngao Minh v&amp;agrave; Thủy V&amp;ocirc; Nguyệt liếc mắt nh&amp;igrave;n nhau đang định gật đầu th&amp;igrave; đột nhi&amp;ecirc;n sắc mặt những người giữa s&amp;acirc;n lại chợt thay đổi.&lt;br /&gt;
&lt;br /&gt;
- Ai?&lt;br /&gt;
&lt;br /&gt;
Một b&amp;oacute;ng người thản nhi&amp;ecirc;n từ từ đi ra từ trong l&amp;agrave;n sương m&amp;ugrave; m&amp;agrave; kh&amp;ocirc;ng hề c&amp;oacute; một giấu hiệu b&amp;aacute;o trước.&lt;br /&gt;
&lt;br /&gt;
Đ&amp;oacute; l&amp;agrave; một nam tử c&amp;oacute; dung nhan rất đẹp. Theo l&amp;yacute; m&amp;agrave; n&amp;oacute;i th&amp;igrave; để h&amp;igrave;nh dung một người nam tử kh&amp;ocirc;ng thể d&amp;ugrave;ng chữ mỹ, nhưng v&amp;agrave;o l&amp;uacute;c n&amp;agrave;y khi người đ&amp;oacute; xuất hiện, trong đầu Thủy V&amp;ocirc; Nguyệt chỉ c&amp;oacute; một c&amp;aacute;i chữ mỹ m&amp;agrave; th&amp;ocirc;i.&lt;br /&gt;
&lt;br /&gt;
Khu&amp;ocirc;n mặt của nam tử trẻ tuổi so với rất nhiều nữ nh&amp;acirc;n c&amp;ograve;n xinh hơn nhiều, da thịt của y giống như ngọc s&amp;aacute;ng.&lt;br /&gt;
&lt;br /&gt;
Nam nh&amp;acirc;n c&amp;oacute; tướng nữ vốn l&amp;agrave;m cho người ta thường cảm thấy &amp;acirc;m nhu.&lt;br /&gt;
&lt;br /&gt;
C&amp;aacute;ch ăn mặc của người đ&amp;agrave;n &amp;ocirc;ng đ&amp;oacute; c&amp;oacute; thể n&amp;oacute;i l&amp;agrave; hết sức đơn giản. Chỉ c&amp;oacute; một chiếc trường b&amp;agrave;o bằng vải th&amp;ocirc;, tr&amp;ecirc;n mặt kh&amp;ocirc;ng điểm xuyết một c&amp;aacute;i g&amp;igrave; hết. Hơn nữa, người nam nh&amp;acirc;n đ&amp;oacute; lại đi ch&amp;acirc;n trần khiến cho người ta c&amp;oacute; cảm gi&amp;aacute;c hết sức tự nhi&amp;ecirc;n, kh&amp;ocirc;ng hề mang theo một ch&amp;uacute;t bụi trần.&lt;br /&gt;
&lt;br /&gt;
- Ngươi định l&amp;agrave;m g&amp;igrave;?&lt;br /&gt;
&lt;br /&gt;
Người nam tử đ&amp;oacute; bước đi rất thong thả, nhưng chỉ một bước đ&amp;atilde; đứng trước mặt thiếu ni&amp;ecirc;n. H&amp;aacute;ch Đồ đang tập trung v&amp;agrave;o vi&amp;ecirc;n M&amp;acirc;u X&amp;aacute; ch&amp;acirc;u trong tay thiếu ni&amp;ecirc;n, đột nhi&amp;ecirc;n thấy nam tử xuất hiện liền qu&amp;aacute; sợ h&amp;atilde;i. Nhưng tiếng h&amp;ocirc; của y vừa mới vang l&amp;ecirc;n th&amp;igrave; kiếm kh&amp;iacute; liền xuất hiện. Ba đạo kiếm quang một đen, một hồng v&amp;agrave; một bạch lao về ph&amp;iacute;a nam tử.&lt;br /&gt;
&lt;br /&gt;
Ba người T&amp;ugrave;ng Hạc Tử vốn đứng th&amp;agrave;nh h&amp;igrave;nh chữ phẩm bao v&amp;acirc;y quanh thiếu ni&amp;ecirc;n. Nhưng l&amp;uacute;c n&amp;agrave;y đột nhi&amp;ecirc;n lại xuất hiện một nam tử trẻ tuổi đi thẳng tới trước mặt thiếu ni&amp;ecirc;n. Từ khi cả ba người luyện th&amp;agrave;nh phi kiếm cho tới nay th&amp;igrave; chưa c&amp;oacute; một người n&amp;agrave;o tới gần m&amp;agrave; kh&amp;ocirc;ng cảm nhận được. V&amp;igrave; vậy m&amp;agrave; nguy&amp;ecirc;n thần tự nhi&amp;ecirc;n cảm ứng được sự nguy hiểm n&amp;ecirc;n thả phi kiếm. M&amp;agrave; tốc độ của phi kiếm so với phản ứng của H&amp;aacute;ch Đồ c&amp;ograve;n nhanh hơn.&lt;br /&gt;
&lt;br /&gt;
Cả ba người chỉ đứng c&amp;aacute;ch thiếu ni&amp;ecirc;n chừng một trượng. M&amp;agrave; phi kiếm của họ lại do nguy&amp;ecirc;n thần phản ứng, tự gi&amp;aacute;c ph&amp;aacute;t ra. V&amp;igrave; thế m&amp;agrave; trong t&amp;iacute;ch tắc, cả ba người c&amp;ograve;n chưa kịp phản ứng th&amp;igrave; kiếm quang đ&amp;atilde; bao phủ lấy nam nh&amp;acirc;n.&lt;br /&gt;
&lt;br /&gt;
Một tia s&amp;aacute;ng chợt l&amp;oacute;e l&amp;ecirc;n. Tất cả kh&amp;ocirc;ng ph&amp;aacute;t hiện ra nam tử ch&amp;acirc;n trần c&amp;oacute; động t&amp;aacute;c như thế n&amp;agrave;o vậy m&amp;agrave; nguy&amp;ecirc;n thần của ba người T&amp;ugrave;ng Hạc Tử chấn động, c&amp;ograve;n kiếm quang của họ th&amp;igrave; bay ngược trở lại.&lt;br /&gt;
&lt;br /&gt;
Di La nghẹn họng nh&amp;igrave;n tr&amp;acirc;n trối m&amp;agrave; kh&amp;ocirc;ng thể tin nổi tr&amp;ecirc;n thế gian n&amp;agrave;y lại c&amp;oacute; người trong nh&amp;aacute;y mắt ph&amp;aacute; bỏ được phi kiếm của ba người T&amp;ugrave;ng Hạc Tử. Trong nh&amp;aacute;y mắt sau đ&amp;oacute; chỉ nh&amp;igrave;n thấy một vầng s&amp;aacute;ng đen nh&amp;ocirc; l&amp;ecirc;n tr&amp;ecirc;n đỉnh đầu nam tử, h&amp;oacute;a ra H&amp;aacute;ch Đồ cũng ph&amp;oacute;ng phi kiếm. Lại nghe một &amp;acirc;m thanh vang l&amp;ecirc;n, chỉ thấy người đ&amp;oacute; chẳng th&amp;egrave;m nh&amp;igrave;n. Một tia s&amp;aacute;ng trong tay chợt l&amp;oacute;e nhưng lại giống như một đ&amp;oacute;a hoa sen nở rộ khiến cho phi kiếm của H&amp;aacute;ch Đồ h&amp;oacute;a th&amp;agrave;nh tro bụi. Mất đi phi kiếm gắn liền với t&amp;iacute;nh mạng, H&amp;aacute;ch Đồ liền phun ra một ngụm m&amp;aacute;u tươi m&amp;agrave; gục xuống. C&amp;ugrave;ng l&amp;uacute;c n&amp;agrave;y, Di La chỉ thấy nam tử đ&amp;oacute; khoanh tay lẳng lặng nh&amp;igrave;n thiếu ni&amp;ecirc;n đang cầm vi&amp;ecirc;n M&amp;acirc;u X&amp;aacute; ch&amp;acirc;u. Dường như nhớ ra điều g&amp;igrave; đ&amp;oacute;, Di La đột nhi&amp;ecirc;n thốt l&amp;ecirc;n:&lt;br /&gt;
&lt;br /&gt;
- Ng&amp;agrave;i c&amp;oacute; phải l&amp;agrave; chủ nh&amp;acirc;n của M&amp;acirc;u X&amp;aacute; ch&amp;acirc;u. T&amp;ocirc;ng chủ Nguy&amp;ecirc;n Thi&amp;ecirc;n Y của La Ph&amp;ugrave; t&amp;ocirc;ng kh&amp;ocirc;ng?&lt;br /&gt;
&lt;br /&gt;
- Đ&amp;uacute;ng thế. - Nam tử trẻ tuổi nh&amp;igrave;n M&amp;acirc;u X&amp;aacute; ch&amp;acirc;u m&amp;agrave; như đang nhớ tới điều g&amp;igrave; đ&amp;oacute;. Một cơn gi&amp;oacute; đ&amp;ecirc;m thổi qua khiến cho t&amp;oacute;c của người thanh ni&amp;ecirc;n bay phất phơ nh&amp;igrave;n như h&amp;ograve;a nhập c&amp;ugrave;ng với thi&amp;ecirc;n địa. Liệt Dương ch&amp;acirc;n nh&amp;acirc;n cũng giật m&amp;igrave;nh như bị s&amp;eacute;t đ&amp;aacute;nh:&lt;br /&gt;
&lt;br /&gt;
- Kh&amp;ocirc;ng vương bụi trần, thi&amp;ecirc;n nh&amp;acirc;n hợp nhất, ngoại trừ t&amp;ocirc;ng chủ Nguy&amp;ecirc;n Thi&amp;ecirc;n Y của La Ph&amp;ugrave; t&amp;ocirc;ng ra th&amp;igrave; c&amp;ograve;n ai c&amp;oacute; thể trong nh&amp;aacute;y mắt ph&amp;aacute; bỏ được phi kiếm của cả ba người T&amp;ugrave;ng Hạc Tử, phất tay đ&amp;aacute;nh n&amp;aacute;t phi kiếm của H&amp;aacute;ch Đồ?&lt;br /&gt;
&lt;br /&gt;
&amp;quot;Năm mươi năm trước, Nguy&amp;ecirc;n Thi&amp;ecirc;n y đ&amp;atilde; danh chấn thi&amp;ecirc;n hạ, kh&amp;ocirc;ng ngờ dung nhan vẫn c&amp;ograve;n như tuổi hai mươi.&amp;rdquo;&lt;br /&gt;
&lt;br /&gt;
Ba người T&amp;ugrave;ng Hạc Tử cầm phi kiếm đứng c&amp;aacute;ch đ&amp;oacute; kh&amp;ocirc;ng xa cũng run người. Tới l&amp;uacute;c n&amp;agrave;y cả ba mới biết vừa rồi Nguy&amp;ecirc;n Thi&amp;ecirc;n Y đ&amp;atilde; hạ thủ lưu t&amp;igrave;nh, cho n&amp;ecirc;n chắp tay n&amp;oacute;i:&lt;br /&gt;
&lt;br /&gt;
- L&amp;agrave; Nguy&amp;ecirc;n Thi&amp;ecirc;n Y tiền bối sao? Vừa rồi c&amp;oacute; điều mạo phạm, đa tạ tiền bối hạ thủ lưu t&amp;igrave;nh.&lt;br /&gt;
&lt;br /&gt;
Nam tử &amp;aacute;o b&amp;agrave;o trắng như vừa trong trầm tư tỉnh lại liền từ từ gật đầu rồi phất tay:&lt;br /&gt;
&lt;br /&gt;
- C&amp;aacute;c ngươi đi th&amp;ocirc;i.&lt;br /&gt;
&lt;br /&gt;
Chỉ thấy y giống như trời sinh đ&amp;atilde; tạo cho người ta c&amp;aacute;i cảm gi&amp;aacute;c quan s&amp;aacute;t sinh linh. V&amp;igrave; vậy m&amp;agrave; khi y gật đầu, Liệt Dương ch&amp;acirc;n nh&amp;acirc;n v&amp;agrave; ba người Thanh Th&amp;agrave;nh cũng kh&amp;ocirc;ng c&amp;ograve;n ho&amp;agrave;i nghi, lập tức cưỡi kiếm quang bay đi. Nhưng đ&amp;uacute;ng l&amp;uacute;c n&amp;agrave;y, Di La đột nhi&amp;ecirc;n l&amp;ecirc;n tiếng:&lt;br /&gt;
&lt;br /&gt;
- Nghe thế gian đồn rằng tiền bối n&amp;oacute;i sẽ giữ lời. Bất cứ ai m&amp;agrave; cầm M&amp;acirc;u X&amp;aacute; ch&amp;acirc;u đến trước mặt ng&amp;agrave;i th&amp;igrave; ng&amp;agrave;i sẽ đ&amp;aacute;p ứng một y&amp;ecirc;u cầu của hắn. Kh&amp;ocirc;ng biết điều đ&amp;oacute; c&amp;oacute; thật hay kh&amp;ocirc;ng?&lt;br /&gt;
&lt;br /&gt;
Nguy&amp;ecirc;n Thi&amp;ecirc;n Y gật đầu:&lt;br /&gt;
&lt;br /&gt;
- Lời n&amp;oacute;i đ&amp;oacute; kh&amp;ocirc;ng ngoa.&lt;br /&gt;
&lt;br /&gt;
Di La đột nhi&amp;ecirc;n chỉ v&amp;agrave;o thiếu ni&amp;ecirc;n kia rồi n&amp;oacute;i:&lt;br /&gt;
&lt;br /&gt;
- Vậy hiện tại thiếu ni&amp;ecirc;n n&amp;agrave;y cầm M&amp;acirc;u X&amp;aacute; ch&amp;acirc;u trong tay, kh&amp;ocirc;ng biết ng&amp;agrave;i c&amp;oacute; thể đồng &amp;yacute; với một y&amp;ecirc;u cầu của hắn hay kh&amp;ocirc;ng?&lt;br /&gt;
&lt;br /&gt;
Nguy&amp;ecirc;n Thi&amp;ecirc;n y liếc mắt nh&amp;igrave;n Di La:&lt;br /&gt;
&lt;br /&gt;
- Tất nhi&amp;ecirc;n l&amp;agrave; c&amp;oacute; thể.&lt;br /&gt;
&lt;br /&gt;
Di La liền k&amp;ecirc;u l&amp;ecirc;n:&lt;br /&gt;
&lt;br /&gt;
- Tiểu tử c&amp;oacute; nghe thấy kh&amp;ocirc;ng? Vị tiền bối n&amp;agrave;y l&amp;agrave; t&amp;ocirc;ng chủ của La Ph&amp;ugrave; t&amp;ocirc;ng. Thi&amp;ecirc;n hạ c&amp;oacute; mấy nh&amp;acirc;n vật được như vậy. Ngươi c&amp;ograve;n kh&amp;ocirc;ng mau cầu ng&amp;agrave;i truyền cho ch&amp;uacute;ng ta... - Nhưng c&amp;acirc;u n&amp;oacute;i của y c&amp;ograve;n chưa dứt th&amp;igrave; trước mắt b&amp;ugrave;ng l&amp;ecirc;n &amp;aacute;nh s&amp;aacute;ng v&amp;agrave;ng kim, to&amp;agrave;n bộ th&amp;acirc;n thể v&amp;agrave; Nguy&amp;ecirc;n Thần dường như bị h&amp;ograve;a tan khiến cho Di La kinh h&amp;atilde;i kh&amp;ocirc;ng n&amp;oacute;i được tiếng n&amp;agrave;o.&lt;br /&gt;
&lt;br /&gt;
- L&amp;agrave;m c&amp;agrave;n! Trước mặt ta m&amp;agrave; ngươi d&amp;aacute;m n&amp;oacute;i linh tinh?&lt;br /&gt;
&lt;br /&gt;
Chờ khi c&amp;aacute;i cảm gi&amp;aacute;c th&amp;acirc;n thể v&amp;agrave; nguy&amp;ecirc;n thần bị h&amp;ograve;a tan biến mất, Di La mới nghe thấy &amp;acirc;m thanh của Nguy&amp;ecirc;n Thi&amp;ecirc;n Y vang l&amp;ecirc;n. M&amp;agrave; trong b&amp;atilde;i tha ma, Liệt Dương ch&amp;acirc;n nh&amp;acirc;n v&amp;agrave; đ&amp;aacute;m người T&amp;ugrave;ng Hạc Tử cũng kh&amp;ocirc;ng c&amp;ograve;n ch&amp;uacute;t m&amp;aacute;u n&amp;agrave;o tr&amp;ecirc;n mặt đứng đ&amp;oacute;. Chỉ c&amp;oacute; điều nơi n&amp;agrave;y đ&amp;atilde; kh&amp;ocirc;ng c&amp;ograve;n b&amp;oacute;ng Nguy&amp;ecirc;n Thi&amp;ecirc;n Y v&amp;agrave; thiếu ni&amp;ecirc;n kia nữa.&lt;br /&gt;
&lt;br /&gt;
H&amp;oacute;a ra khi Di La n&amp;oacute;i với thi&amp;ecirc;u ni&amp;ecirc;n liền d&amp;ugrave;ng nguy&amp;ecirc;n thần g&amp;acirc;y &amp;aacute;p lực, muốn cho thiếu ni&amp;ecirc;n kia thất thần m&amp;agrave; n&amp;oacute;i theo lời của m&amp;igrave;nh để Nguy&amp;ecirc;n Thi&amp;ecirc;n Y truyền cho họ một bộ ph&amp;aacute;p quyết lợi hại. Nhưng Di La vừa mới mở miệng th&amp;igrave; Nguy&amp;ecirc;n Thi&amp;ecirc;n Y cũng nh&amp;igrave;n thấu dụng &amp;yacute; của hắn. &amp;Aacute;nh s&amp;aacute;ng v&amp;agrave;ng tản ra khắp nơi đ&amp;oacute; cũng l&amp;agrave; do Nguy&amp;ecirc;n Thi&amp;ecirc;n Y ph&amp;aacute;t ra uy &amp;aacute;p của Nguy&amp;ecirc;n Thần. V&amp;agrave;o l&amp;uacute;c n&amp;agrave;y, Nguy&amp;ecirc;n Thi&amp;ecirc;n Y v&amp;agrave; thiếu ni&amp;ecirc;n đ&amp;atilde; biến mất. Nhưng nghĩ tới cảnh tượng vừa rồi, Di La cảm thấy bản th&amp;acirc;n so s&amp;aacute;nh với Nguy&amp;ecirc;n Thi&amp;ecirc;n Y chẳng kh&amp;aacute;c n&amp;agrave;o muối bỏ bể. Mồ h&amp;ocirc;i lạnh chảy đầy tr&amp;ecirc;n tr&amp;aacute;n y.&lt;/p&gt;

&lt;hr /&gt;', 1, CAST(0x0000ADEF01127A5B AS DateTime), CAST(0x0000ADEF01127A5B AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (3113, 4101, 2042, N'Chương 5: Nhân quả thế gian. La Phù cô quạnh', N'&lt;p&gt;B&amp;ecirc;n bờ Đ&amp;ocirc;ng Hải, Nguy&amp;ecirc;n Thi&amp;ecirc;n Y đứng tr&amp;ecirc;n một tảng đ&amp;aacute; lớn.&lt;br /&gt;
&lt;br /&gt;
Đ&amp;ecirc;m tối nhưng c&amp;oacute; một mảnh trăng lưỡi liềm tỏa ra &amp;aacute;nh s&amp;aacute;ng d&amp;igrave;u dịu tr&amp;ecirc;n cao, chiếu s&amp;aacute;ng cả một phạm vi mười dặm xung quanh.&lt;br /&gt;
&lt;br /&gt;
Những con s&amp;oacute;ng biển nối đu&amp;ocirc;i nhau tung bọt trắng x&amp;oacute;a.&lt;br /&gt;
&lt;br /&gt;
Đ&amp;acirc;y l&amp;agrave; nơi m&amp;agrave; s&amp;aacute;u mươi năm trước khi Nguy&amp;ecirc;n Thi&amp;ecirc;n Y tu luyện Kh&amp;ocirc;ng Sanh Diệt Hải lưu ly quyết ra khỏi La Ph&amp;ugrave; đ&amp;atilde; nh&amp;igrave;n thấy biển rộng lần đầu ti&amp;ecirc;n.&lt;br /&gt;
&lt;br /&gt;
Thời gian s&amp;aacute;u mươi năm tr&amp;ocirc;i qua giống như một c&amp;aacute;i nh&amp;aacute;y mắt.&lt;br /&gt;
&lt;br /&gt;
Truyền thuyết trong thế gian cũng kh&amp;ocirc;ng phải đều l&amp;agrave; sự thật. L&amp;uacute;c ấy, đệ tử xinh đẹp nhất v&amp;agrave; xuất sắc nhất của Từ H&amp;agrave;ng tĩnh trai l&amp;agrave; Thương Nguyệt ti&amp;ecirc;n tử đang đứng cạnh y. Thương Nguyệt ti&amp;ecirc;n tử đưa tay cho y, c&amp;ograve;n y th&amp;igrave; thả v&amp;agrave; l&amp;ograve;ng b&amp;agrave;n tay n&amp;agrave;ng vi&amp;ecirc;n M&amp;acirc;u X&amp;aacute; ch&amp;acirc;u n&amp;agrave;y.&lt;br /&gt;
&lt;br /&gt;
Cho tới khi Nguy&amp;ecirc;n Thi&amp;ecirc;n Y một l&amp;ograve;ng hướng đạo, liền cắt đứt t&amp;igrave;nh duy&amp;ecirc;n với Thương Nguyệt ti&amp;ecirc;n tử. Nhưng khi bước ch&amp;acirc;n v&amp;agrave;o b&amp;iacute; cảnh thi&amp;ecirc;n nh&amp;acirc;n, Nguy&amp;ecirc;n Thi&amp;ecirc;n Y kh&amp;ocirc;ng ngờ trong l&amp;ograve;ng lại c&amp;oacute; g&amp;uacute;t mắc. S&amp;aacute;u mươi năm giống tu đạo giống như một qu&amp;aacute; tr&amp;igrave;nh cởi bỏ c&amp;aacute;i g&amp;uacute;t mắc đ&amp;oacute;. Nếu vi&amp;ecirc;n M&amp;acirc;u X&amp;aacute; ch&amp;acirc;u n&amp;agrave;y kh&amp;ocirc;ng xuất hiện th&amp;igrave; c&amp;aacute;i g&amp;uacute;t mắc đ&amp;oacute; vẫn kh&amp;ocirc;ng thể được cởi bỏ. Hiện tại M&amp;acirc;u X&amp;aacute; ch&amp;acirc;u ngay trước mặt, n&amp;oacute;i chung l&amp;agrave; c&amp;oacute; thể giải được g&amp;uacute;t mắc trong l&amp;ograve;ng, c&amp;oacute; lẽ c&amp;oacute; thể bước tiếp được một bước cuối c&amp;ugrave;ng, si&amp;ecirc;u tho&amp;aacute;t trần thế. Nhưng cảnh vật trước mắt vẫn như trước, khi gặp lại hạt ch&amp;acirc;u th&amp;igrave; n&amp;oacute; đang nằm trong tay một thiếu ni&amp;ecirc;n ăn xin. M&amp;ugrave;i thơm ng&amp;agrave;y đ&amp;oacute; lu&amp;ocirc;n vương tr&amp;ecirc;n miệng tr&amp;ecirc;n mũi đ&amp;atilde; mất. L&amp;uacute;c n&amp;agrave;y, trong &amp;aacute;nh mắt của Nguy&amp;ecirc;n Thi&amp;ecirc;n Y kh&amp;ocirc;ng biết l&amp;agrave; n&amp;ecirc;n vui hay n&amp;ecirc;n buồn.&lt;br /&gt;
&lt;br /&gt;
Y đứng lẳng lặng một l&amp;aacute;t rồi từ từ xoay người đối mặt với thiếu ni&amp;ecirc;n đang đứng b&amp;ecirc;n cạnh.&lt;br /&gt;
&lt;br /&gt;
- Vừa rồi tại Thục Sơn, ngươi đ&amp;atilde; nghe người đ&amp;oacute; n&amp;oacute;i. Ta c&amp;oacute; thể đồng &amp;yacute; với một y&amp;ecirc;u cầu của ngươi. Ngươi muốn c&amp;aacute;i g&amp;igrave; th&amp;igrave; cứ n&amp;oacute;i với ta, ta sẽ gi&amp;uacute;p ngươi ho&amp;agrave;n th&amp;agrave;nh.&lt;br /&gt;
&lt;br /&gt;
Những cơn gi&amp;oacute; biển rất lạnh khiến cho thiếu ni&amp;ecirc;n ăn mặc quần &amp;aacute;o r&amp;aacute;ch n&amp;aacute;t lạnh tới mức mặt t&amp;aacute;i xanh. Nhưng từ khi bị Nguy&amp;ecirc;n Thi&amp;ecirc;n Y d&amp;ugrave;ng ph&amp;aacute;p thuật mang từ nước Thục tới nơi n&amp;agrave;y, hắn vẫn đứng bất động b&amp;ecirc;n cạnh Nguy&amp;ecirc;n Thi&amp;ecirc;n Y kh&amp;ocirc;ng hề n&amp;oacute;i một c&amp;acirc;u n&amp;agrave;o. Thấy Nguy&amp;ecirc;n Thi&amp;ecirc;n y hỏi m&amp;igrave;nh, hắn mới l&amp;ecirc;n tiếng:&lt;br /&gt;
&lt;br /&gt;
- Người c&amp;oacute; thể thu ta l&amp;agrave;m đồ đệ kh&amp;ocirc;ng?&lt;br /&gt;
&lt;br /&gt;
- Thu ngươi l&amp;agrave; đồ đệ?&lt;br /&gt;
&lt;br /&gt;
Nguy&amp;ecirc;n Thi&amp;ecirc;n Y liếc mắt nh&amp;igrave;n thiếu ni&amp;ecirc;n:&lt;br /&gt;
&lt;br /&gt;
- Tiền t&amp;agrave;i danh lợi đủ c&amp;oacute; thể cho ngươi v&amp;agrave;ng bạc h&amp;agrave;ng đống, giầu ngang một nước th&amp;igrave; ta cũng c&amp;oacute; thể gi&amp;uacute;p ngươi c&amp;oacute; được. Ngươi thật sự kh&amp;ocirc;ng cần c&amp;aacute;i kh&amp;aacute;c m&amp;agrave; chỉ muốn l&amp;agrave;m đồ đệ ta?&lt;br /&gt;
&lt;br /&gt;
- Đ&amp;uacute;ng vậy! - Thiếu ni&amp;ecirc;n gật đầu.&lt;br /&gt;
&lt;br /&gt;
Nguy&amp;ecirc;n Thi&amp;ecirc;n Y kh&amp;ocirc;ng n&amp;oacute;i tiếng n&amp;agrave;o. Đột nhi&amp;ecirc;n thiếu ni&amp;ecirc;n chỉ thấy trong mắt y c&amp;oacute; một tia s&amp;aacute;ng l&amp;oacute;e l&amp;ecirc;n rồi một d&amp;ograve;ng kh&amp;iacute; n&amp;oacute;ng như lửa nổ tung tr&amp;ecirc;n cao, sau đ&amp;oacute; cảnh vật liền thay đổi. Hắn kh&amp;ocirc;ng c&amp;ograve;n đứng tr&amp;ecirc;n tảng đ&amp;aacute; nơi bờ biển nữa m&amp;agrave; nhẹ nh&amp;agrave;ng rơi xuống một miệng n&amp;uacute;i lửa, ph&amp;iacute;a dưới chỉ c&amp;oacute; dung nham n&amp;oacute;ng bỏng. Rơi xuống biển dung nham, m&amp;aacute;u thịt của thiếu ni&amp;ecirc;n bị đốt ch&amp;aacute;y, đau đớn kh&amp;ocirc;ng b&amp;uacute;t n&amp;agrave;o tả xiết. Hắn kh&amp;ocirc;ng tự chủ được muốn k&amp;ecirc;u l&amp;ecirc;n một tiếng nhưng kh&amp;ocirc;ng thể k&amp;ecirc;u được bởi ngay cả miệng v&amp;agrave; mũi cũng bị dung nham tr&amp;agrave;n v&amp;agrave;o thi&amp;ecirc;u đốt lục phủ ngũ tạng. Tuy nhi&amp;ecirc;n hắn lại kh&amp;ocirc;ng chết. Da thịt vừa mới bị đốt ch&amp;aacute;y lại sinh ra da non. Qu&amp;aacute; tr&amp;igrave;nh đ&amp;oacute; cứ v&amp;ograve;ng đi v&amp;ograve;ng lại với một sự đau đớn d&amp;agrave;y v&amp;ograve; hắn.&lt;br /&gt;
&lt;br /&gt;
- Ngươi thấy bọn họ kh&amp;ocirc;ng phải l&amp;agrave; đối thủ của ta, ao ước thần th&amp;ocirc;ng của ta n&amp;ecirc;n mới muốn l&amp;agrave;m đệ tử của ta c&amp;oacute; phải kh&amp;ocirc;ng? Nhưng ngươi phải biết con đường tu đạo chẳng kh&amp;aacute;c n&amp;agrave;o lấy hạt dẻ trong l&amp;ograve; lửa. Tu luyện b&amp;iacute; ph&amp;aacute;p của La Ph&amp;ugrave; ch&amp;uacute;ng ta, tinh thần v&amp;agrave; th&amp;acirc;n thể cần phải chịu đựng sự đau khổ d&amp;agrave;y v&amp;ograve; v&amp;ocirc; c&amp;ugrave;ng v&amp;ocirc; tận. - &amp;Acirc;m thanh của Nguy&amp;ecirc;n Thi&amp;ecirc;n y đột nhi&amp;ecirc;n từ tr&amp;ecirc;n cao vọng xuống. Chờ khi &amp;acirc;m thanh đ&amp;oacute; biến mất, thiếu ni&amp;ecirc;n mới ph&amp;aacute;t hiện được m&amp;igrave;nh vẫn đứng tr&amp;ecirc;n tảng đ&amp;aacute; lớn b&amp;ecirc;n bờ biển, c&amp;oacute; điều cảm gi&amp;aacute;c đau đớn vừa rồi như vẫn c&amp;ograve;n trong th&amp;acirc;n thể khiến cho mồ h&amp;ocirc;i chảy ướt đẫm người hắn.&lt;br /&gt;
&lt;br /&gt;
- Sự đau đớn h&amp;ocirc;m nay mới chỉ l&amp;agrave; một ch&amp;uacute;t nho nhỏ m&amp;agrave; th&amp;ocirc;i. Con đường tu luyện thật sự chịu đựng sự đau khổ c&amp;ograve;n khủng bố hơn nhiều, phải n&amp;oacute;i l&amp;agrave; gấp h&amp;agrave;ng trăm h&amp;agrave;ng ngh&amp;igrave;n lần b&amp;acirc;y giờ. La Ph&amp;ugrave; ta truyền đạo kh&amp;ocirc;ng giống với những người thường m&amp;agrave; l&amp;agrave; cửu tử nhất sinh. Ngươi thật sự kh&amp;ocirc;ng cần c&amp;aacute;i kh&amp;aacute;c m&amp;agrave; phải l&amp;agrave;m đồ đệ của ta?&lt;br /&gt;
&lt;br /&gt;
Nguy&amp;ecirc;n Thi&amp;ecirc;n Y nh&amp;igrave;n thấy thiếu ni&amp;ecirc;n như vậy th&amp;igrave; kh&amp;ocirc;ng nhịn được m&amp;agrave; thở d&amp;agrave;i, sau đ&amp;oacute; phất tay &amp;aacute;o m&amp;agrave; n&amp;oacute;i.&lt;br /&gt;
&lt;br /&gt;
Nguy&amp;ecirc;n Thi&amp;ecirc;n Y nghĩ m&amp;igrave;nh n&amp;oacute;i như vậy th&amp;igrave; thiếu ni&amp;ecirc;n ăn m&amp;agrave;y sẽ thay đổi &amp;yacute; định. Nhưng ngo&amp;agrave;i dự đo&amp;aacute;n của y đ&amp;oacute; l&amp;agrave; do sự đau đớn khiến cho thiếu ni&amp;ecirc;n đứng trong gi&amp;oacute; biển c&amp;oacute; ch&amp;uacute;t mong manh nhưng n&amp;eacute;t mặt hắn vẫn ki&amp;ecirc;n nghị, chỉ gật đầu, cất giọng kh&amp;agrave;n kh&amp;agrave;n:&lt;br /&gt;
&lt;br /&gt;
- Ta kh&amp;ocirc;ng sợ.&lt;br /&gt;
&lt;br /&gt;
Nguy&amp;ecirc;n Thi&amp;ecirc;n Y lạnh l&amp;ugrave;ng nh&amp;igrave;n thiếu ni&amp;ecirc;n:&lt;br /&gt;
&lt;br /&gt;
- Ta c&amp;oacute; thể đồng &amp;yacute; thu ngươi l&amp;agrave;m đồ đệ. Nhưng theo m&amp;ocirc;n quy của La Ph&amp;ugrave; ch&amp;uacute;ng ta th&amp;igrave; ngươi phải trở th&amp;agrave;nh người của La Ph&amp;ugrave;, trải qua tất cả những thử th&amp;aacute;ch nhập m&amp;ocirc;n. Điểm n&amp;agrave;y th&amp;igrave; ta kh&amp;ocirc;ng thể n&amp;agrave;o thi&amp;ecirc;n vị được. Nếu ngươi kh&amp;ocirc;ng vượt qua được th&amp;igrave; đừng n&amp;oacute;i tới những y&amp;ecirc;u cầu kh&amp;aacute;c. Ngươi đ&amp;atilde; suy nghĩ kỹ chưa?&lt;br /&gt;
&lt;br /&gt;
Thiến ni&amp;ecirc;n lại gật đầu một c&amp;aacute;i thật mạnh. Nguy&amp;ecirc;n Thi&amp;ecirc;n Y hơi nh&amp;iacute;u m&amp;agrave;y. Trước mặt mặc d&amp;ugrave; vẫn l&amp;agrave; một thiếu ni&amp;ecirc;n sơn d&amp;atilde; b&amp;igrave;nh thường nhưng hiện tại th&amp;igrave; c&amp;agrave;ng nh&amp;igrave;n lại c&amp;agrave;ng thấy c&amp;oacute; sự bất ph&amp;agrave;m. Đ&amp;ocirc;i mắt của hắn hết sức mạnh mẽ như kh&amp;ocirc;ng sợ chết.&lt;br /&gt;
&lt;br /&gt;
&amp;quot;Chẳng lẽ ch&amp;iacute;nh m&amp;igrave;nh của chưa kh&amp;aacute;m ph&amp;aacute; ra nh&amp;acirc;n quả thế gian hay sao?&amp;quot;&lt;br /&gt;
&lt;br /&gt;
Nguy&amp;ecirc;n Thi&amp;ecirc;n Y lại nh&amp;igrave;n M&amp;acirc;u X&amp;aacute; ch&amp;acirc;u đang tản ra &amp;aacute;nh s&amp;aacute;ng m&amp;agrave;u lam trong tay. Khi ngẩng đầu l&amp;ecirc;n th&amp;igrave; &amp;aacute;nh trăng lưỡi liềm tr&amp;ecirc;n cao đ&amp;atilde; biến mất.&lt;br /&gt;
&lt;br /&gt;
Một vầng &amp;aacute;nh s&amp;aacute;ng mau lam sắc trắng từ bờ Đ&amp;ocirc;ng Hải bay l&amp;ecirc;n rồi lao về ph&amp;iacute;a Nam với tốc độ so với mấy đạo kiếm quang của Thục Sơn c&amp;ograve;n nhanh hơn rất nhiều lần.&lt;br /&gt;
&lt;br /&gt;
- Thần ti&amp;ecirc;n ph&amp;ugrave; hộ. - Tr&amp;ecirc;n mặt biển, đ&amp;aacute;m ngư d&amp;acirc;n ch&amp;egrave;o thuyền đi đ&amp;aacute;nh c&amp;aacute; sớm nh&amp;igrave;n thấy vầng &amp;aacute;nh s&amp;aacute;ng m&amp;agrave;u lam sắc trắng kia liền nằm rạp xuống.&lt;br /&gt;
&lt;br /&gt;
...........&lt;br /&gt;
&lt;br /&gt;
Nguy&amp;ecirc;n Thi&amp;ecirc;n Y đưa thiếu ni&amp;ecirc;n tới một c&amp;aacute;i thung lũng nơi n&amp;uacute;i cao.&lt;br /&gt;
&lt;br /&gt;
&amp;quot;Ở đ&amp;acirc;y tiến h&amp;agrave;nh thử th&amp;aacute;ch hay sao?&amp;quot;&lt;br /&gt;
&lt;br /&gt;
Nguy&amp;ecirc;n Thi&amp;ecirc;n Y kh&amp;ocirc;ng n&amp;oacute;i g&amp;igrave; khiến cho thiếu ni&amp;ecirc;n cũng kh&amp;ocirc;ng d&amp;aacute;m mở miệng. Trước mắt hắn l&amp;agrave; một khung cảnh kỳ lạ. C&amp;oacute; một c&amp;aacute;i hồ nước phản chiếu &amp;aacute;nh xanh biếc của n&amp;uacute;i cao... Xung quanh c&amp;oacute; rất nhiều loại c&amp;acirc;y m&amp;agrave; hắn kh&amp;ocirc;ng biết t&amp;ecirc;n, trĩu trịt đủ mọi loại quả. C&amp;oacute; điều b&amp;acirc;y giờ đang l&amp;agrave; th&amp;aacute;ng tư, xu&amp;acirc;n về hoa đua nhau nở, tr&amp;ecirc;n mặt hồ vẫn c&amp;ograve;n những tảng băng tr&amp;ocirc;i. Thiếu ni&amp;ecirc;n nh&amp;igrave;n kỹ th&amp;igrave; thấy dưới đ&amp;aacute;y hồ đang c&amp;oacute; từng mảnh băng trong suốt li&amp;ecirc;n tục nổi l&amp;ecirc;n.&lt;br /&gt;
&lt;br /&gt;
Nguy&amp;ecirc;n Thi&amp;ecirc;n Y bước tới b&amp;ecirc;n hồ. M&amp;acirc;u X&amp;aacute; ch&amp;acirc;u trong tay y liền rơi xuống hồ nước.&lt;br /&gt;
&lt;br /&gt;
Một vi&amp;ecirc;n M&amp;acirc;u X&amp;aacute; ch&amp;acirc;u khiến cho tất cả những người tu đạo trong thi&amp;ecirc;n hạ kh&amp;ocirc;ng giữ được đạo t&amp;acirc;m, như ph&amp;aacute;t đi&amp;ecirc;n lại bị Nguy&amp;ecirc;n Thi&amp;ecirc;n Y n&amp;eacute;m v&amp;agrave;o trong c&amp;aacute;i hồ nước đầy những tảng băng mỏng manh.&lt;br /&gt;
&lt;br /&gt;
M&amp;acirc;u X&amp;aacute; ch&amp;acirc;u rơi xuống nước cũng kh&amp;ocirc;ng ch&amp;igrave;m xuống m&amp;agrave; bập bềnh tr&amp;ecirc;n mặt nước. Chợt n&amp;oacute; như ph&amp;aacute; k&amp;eacute;n khiến cho thiếu ni&amp;ecirc;n mở to mắt m&amp;agrave; nh&amp;igrave;n. Một c&amp;aacute;i c&amp;acirc;y nhanh ch&amp;oacute;ng sinh trưởng, lớn l&amp;ecirc;n tr&amp;ecirc;n mặt nước. C&amp;agrave;nh l&amp;aacute; của n&amp;oacute; trong suốt giống như những tảng băng xung quanh.&lt;br /&gt;
&lt;br /&gt;
- Đ&amp;acirc;y l&amp;agrave; c&amp;aacute;i g&amp;igrave;? - Thiếu ni&amp;ecirc;n kh&amp;ocirc;ng nhịn nổi m&amp;agrave; l&amp;ecirc;n tiếng hỏi.&lt;br /&gt;
&lt;br /&gt;
Vừa mới thốt lời, thiếu ni&amp;ecirc;n liền cảm thấy kh&amp;ocirc;ng hay. Ngay cả đ&amp;aacute;m người H&amp;aacute;ch Đồ v&amp;agrave; Liệt Dương ch&amp;acirc;n nh&amp;acirc;n vậy m&amp;agrave; đứng trước mặt Nguy&amp;ecirc;n Thi&amp;ecirc;n Y chẳng kh&amp;aacute;c g&amp;igrave; con kiến. C&amp;ograve;n Nguy&amp;ecirc;n Thi&amp;ecirc;n Y trong mắt hắn chẳng kh&amp;aacute;c n&amp;agrave;o một vị thần, một khi chưa đồng &amp;yacute; m&amp;agrave; đ&amp;atilde; hỏi th&amp;igrave; chẳng kh&amp;aacute;c n&amp;agrave;o x&amp;uacute;c phạm.&lt;br /&gt;
&lt;br /&gt;
Nhưng Nguy&amp;ecirc;n Thi&amp;ecirc;n Y lại n&amp;oacute;i một c&amp;aacute;ch nhẹ nh&amp;agrave;ng, b&amp;acirc;ng quơ:&lt;br /&gt;
&lt;br /&gt;
- Đ&amp;acirc;y l&amp;agrave; Tinh Đồ. Trăm năm nở hoa, ng&amp;agrave;n năm kết quả. Sau khi kết quả xong n&amp;oacute; sẽ chết h&amp;eacute;o. M&amp;acirc;u X&amp;aacute; ch&amp;acirc;u ch&amp;iacute;nh l&amp;agrave; hạt giống của n&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
- Như vậy chẳng phải chỉ c&amp;oacute; một c&amp;aacute;i c&amp;acirc;y n&amp;agrave;y th&amp;ocirc;i sao? N&amp;oacute; thật c&amp;ocirc; quạnh. - Thiếu ni&amp;ecirc;n l&amp;ecirc;n tiếng.&lt;br /&gt;
&lt;br /&gt;
- C&amp;ocirc; quạnh? - Nguy&amp;ecirc;n Thi&amp;ecirc;n Y giật m&amp;igrave;nh. Nhưng chợt nh&amp;igrave;n c&amp;aacute;i c&amp;acirc;y đang tr&amp;ocirc;i nổi tr&amp;ecirc;n mặt hồ, mặc d&amp;ugrave; n&amp;oacute; c&amp;ograve;n nhỏ nhưng sức sống l&amp;agrave;n tr&amp;agrave;n trề, y thản nhi&amp;ecirc;n n&amp;oacute;i một c&amp;acirc;u:&lt;br /&gt;
&lt;br /&gt;
- Thiếu ni&amp;ecirc;n v&amp;ocirc; tri biết c&amp;aacute;i g&amp;igrave;? Tr&amp;ecirc;n đời n&amp;agrave;y c&amp;oacute; g&amp;igrave; m&amp;agrave; kh&amp;ocirc;ng c&amp;ocirc; quạnh?&lt;br /&gt;
&lt;br /&gt;
Nơi n&amp;agrave;y c&amp;oacute; kh&amp;iacute; hậu &amp;ocirc;n h&amp;ograve;a, hơi nước sung t&amp;uacute;c, xung quanh lại c&amp;oacute; n&amp;uacute;i v&amp;agrave; c&amp;acirc;y cối n&amp;ecirc;n Tinh Đồ lẳng lặng ngủ đ&amp;ocirc;ng giữa hoang vu.&lt;br /&gt;
&lt;br /&gt;
Với tốc độ phi h&amp;agrave;nh của Nguy&amp;ecirc;n Thi&amp;ecirc;n Y, t&amp;iacute;nh từ l&amp;uacute;c ở Đ&amp;ocirc;ng Hải trời vẫn c&amp;ograve;n tối đen th&amp;igrave; tới sơn cốc n&amp;agrave;y cũng vừa mới b&amp;igrave;nh minh. Khi ra khỏi sơn cốc n&amp;agrave;y, thiếu ni&amp;ecirc;n chỉ thấy khắp nơi sương m&amp;ugrave; đang bốc l&amp;ecirc;n. Đột nhi&amp;ecirc;n hắn nh&amp;igrave;n thấy mấy con rắn độc năm m&amp;agrave;u đang quấn tr&amp;ecirc;n nh&amp;aacute;nh c&amp;acirc;y. Mặc d&amp;ugrave; c&amp;ograve;n c&amp;aacute;ch Nguy&amp;ecirc;n Thi&amp;ecirc;n Y tới mấy trượng nhưng đ&amp;aacute;m độc tr&amp;ugrave;ng đ&amp;oacute; cũng vội v&amp;agrave;ng lẩn tr&amp;aacute;nh. Khắp nơi l&amp;agrave; cảnh tượng hoang vắng c&amp;ugrave;ng với đ&amp;aacute;m độc x&amp;agrave; khiến cho thiếu ni&amp;ecirc;n kh&amp;ocirc;ng nhịn được m&amp;agrave; hỏi:&lt;br /&gt;
&lt;br /&gt;
- Đ&amp;acirc;y l&amp;agrave; nơi n&amp;agrave;o?&lt;br /&gt;
&lt;br /&gt;
Nguy&amp;ecirc;n Thi&amp;ecirc;n Y đứng dưới một ngọn n&amp;uacute;i cao v&amp;uacute;t, khoanh tay nh&amp;igrave;n hơi nước bao phủ khắp nơi m&amp;agrave; n&amp;oacute;i một c&amp;aacute;ch chậm r&amp;atilde;i:&lt;br /&gt;
&lt;br /&gt;
- Đ&amp;acirc;y l&amp;agrave; chỗ của La Ph&amp;ugrave;.&lt;br /&gt;
&lt;br /&gt;
Thiếu ni&amp;ecirc;n kh&amp;ocirc;ng biết động phủ của La Ph&amp;ugrave; t&amp;ocirc;ng c&amp;oacute; giống với động phủ của ti&amp;ecirc;n nh&amp;acirc;n trong truyền thuyết với ti&amp;ecirc;n kh&amp;iacute; bao phủ v&amp;agrave; quỳnh tương ngọc dịch khắp nơi hay kh&amp;ocirc;ng. Nhưng &amp;iacute;t nhất, chứng kiến cảnh tượng c&amp;aacute;i v&amp;ugrave;ng khỉ ho c&amp;ograve; g&amp;aacute;y trước mắt ho&amp;agrave;n to&amp;agrave;n kh&amp;aacute;c xa với động phủ của ti&amp;ecirc;n nh&amp;acirc;n trong truyền thuyết. &amp;Aacute;nh nắng sớm trải một lớp v&amp;agrave;ng mỏng l&amp;ecirc;n người hắn v&amp;agrave; Nguy&amp;ecirc;n Thi&amp;ecirc;n y. Hắn v&amp;agrave; Nguy&amp;ecirc;n Thi&amp;ecirc;n Y đứng dưới một ngọn n&amp;uacute;i cao v&amp;uacute;t l&amp;agrave;m cho người ta cho&amp;aacute;ng ngợp. Tr&amp;ecirc;n v&amp;aacute;ch n&amp;uacute;i mọc đầy những loại d&amp;acirc;y leo. Nơi sườn n&amp;uacute;i được bao phủ trong một lớp sương trắng, kh&amp;ocirc;ng biết l&amp;agrave; cao bao nhi&amp;ecirc;u. Tr&amp;ecirc;n ngọn n&amp;uacute;i kh&amp;ocirc;ng hề c&amp;oacute; bậc thang n&amp;agrave;o, chỉ c&amp;oacute; một c&amp;aacute;i d&amp;acirc;y x&amp;iacute;ch bằng sắt từ cao th&amp;ograve;ng xuống.&lt;br /&gt;
&lt;br /&gt;
- Từ nơi n&amp;agrave;y đi về ph&amp;iacute;a Nam ba dặm c&amp;oacute; một c&amp;aacute;i ph&amp;ograve;ng nhỏ của người d&amp;acirc;n du canh. Trong căn ph&amp;ograve;ng đ&amp;oacute;, nếu c&amp;oacute; người muốn ở th&amp;igrave; chỉ cần bổ sung lương thực v&amp;agrave; nước l&amp;agrave; được. Ngươi đ&amp;atilde; một đ&amp;ecirc;m kh&amp;ocirc;ng ngủ, sức khỏe kh&amp;ocirc;ng tốt n&amp;ecirc;n c&amp;oacute; thể v&amp;agrave;o đ&amp;oacute; nghỉ ngơi. - Nguy&amp;ecirc;n Thi&amp;ecirc;n Y đối với thiếu ni&amp;ecirc;n vẫn lạnh l&amp;ugrave;ng như một tảng băng. L&amp;uacute;c n&amp;agrave;y, y chợt n&amp;oacute;i nhiều như vậy khiến cho thiếu ni&amp;ecirc;n sững sờ. Tuy nhi&amp;ecirc;n hắn lại nghe Nguy&amp;ecirc;n Thi&amp;ecirc;n Y chỉ ngọn n&amp;uacute;i cao v&amp;uacute;t trước mặt m&amp;agrave; n&amp;oacute;i:&lt;br /&gt;
&lt;br /&gt;
- Ngọn n&amp;uacute;i n&amp;agrave;y kh&amp;ocirc;ng c&amp;oacute; t&amp;ecirc;n nhưng La Ph&amp;ugrave; t&amp;ocirc;ng ch&amp;uacute;ng ta ở ngay tr&amp;ecirc;n ngọn n&amp;uacute;i đ&amp;oacute;. Nếu ngươi c&amp;oacute; thể l&amp;ecirc;n được đỉnh n&amp;uacute;i th&amp;igrave; ch&amp;iacute;nh l&amp;agrave; đệ tử của La Ph&amp;ugrave; ta. C&amp;ograve;n nếu kh&amp;ocirc;ng thể th&amp;igrave; tự m&amp;igrave;nh rời khỏi n&amp;uacute;i th&amp;ocirc;i.&lt;br /&gt;
&lt;br /&gt;
Lời n&amp;oacute;i của Nguy&amp;ecirc;n Thi&amp;ecirc;n Y hết sức lạnh l&amp;ugrave;ng v&amp;agrave; cứng rắn, kh&amp;ocirc;ng hề c&amp;oacute; một ch&amp;uacute;t nh&amp;acirc;n nhượng. Thiếu ni&amp;ecirc;n nh&amp;igrave;n v&amp;aacute;ch n&amp;uacute;i dựng đứng v&amp;agrave; c&amp;aacute;i x&amp;iacute;ch sắt thả xuống từ trong đ&amp;aacute;m m&amp;acirc;y m&amp;ugrave; nhưng kh&amp;ocirc;ng n&amp;oacute;i g&amp;igrave;, chỉ quay sang thi lễ với Nguy&amp;ecirc;n Thi&amp;ecirc;n Y rồi bẻ một c&amp;agrave;nh c&amp;acirc;y m&amp;agrave; vạch bụi cỏ, theo lời Nguy&amp;ecirc;n Thi&amp;ecirc;n Y đi về ph&amp;iacute;a căn nh&amp;agrave; gỗ. Hắn nhanh ch&amp;oacute;ng biến mất trong sương m&amp;ugrave;.&lt;br /&gt;
&lt;br /&gt;
- Chủ nh&amp;acirc;n.&lt;br /&gt;
&lt;br /&gt;
Thiếu ni&amp;ecirc;n vừa mới biến mất trong rừng c&amp;acirc;y th&amp;igrave; một l&amp;atilde;o nh&amp;acirc;n tuổi gi&amp;agrave; sức yếu xuất hiện ph&amp;iacute;a sau lưng Nguy&amp;ecirc;n Thi&amp;ecirc;n Y. M&amp;aacute;i t&amp;oacute;c l&amp;atilde;o bạc trắng, rồi tung, tr&amp;ecirc;n mặt đầy nếp nhăn. Nhưng khiến cho người ta ch&amp;uacute; &amp;yacute; nhất đ&amp;oacute; l&amp;agrave; một vết sẹo rất s&amp;acirc;u tr&amp;ecirc;n m&amp;aacute;. L&amp;atilde;o nh&amp;acirc;n mặc trang phục của d&amp;acirc;n Mi&amp;ecirc;u. Nếu l&amp;atilde;o ngồi im lặng tr&amp;ecirc;n nh&amp;agrave; s&amp;agrave;n của người Mi&amp;ecirc;u m&amp;agrave; h&amp;uacute;t thuốc th&amp;igrave; ch&amp;iacute;nh l&amp;agrave; một cảnh tượng hết sức b&amp;igrave;nh thường. C&amp;oacute; điều l&amp;uacute;c n&amp;agrave;y l&amp;atilde;o lại đang đứng cung k&amp;iacute;nh b&amp;ecirc;n cạnh Nguy&amp;ecirc;n Thi&amp;ecirc;n Y.&lt;br /&gt;
&lt;br /&gt;
&amp;Aacute;nh mắt của l&amp;atilde;o s&amp;aacute;ng quắc ho&amp;agrave;n to&amp;agrave;n tr&amp;aacute;i ngược với độ tuổi. Nh&amp;igrave;n theo hướng thiếu ni&amp;ecirc;n vừa mới khuất b&amp;oacute;ng, l&amp;atilde;o nh&amp;acirc;n nỏi nhỏ:&lt;br /&gt;
&lt;br /&gt;
- Chủ nh&amp;acirc;n! Thiếu ni&amp;ecirc;n n&amp;agrave;y t&amp;iacute;nh t&amp;igrave;nh cương nghị nhẫn nại, tư chất cũng kh&amp;ocirc;ng tồi. Nh&amp;igrave;n qua th&amp;igrave; c&amp;oacute; thể n&amp;oacute;i l&amp;agrave; một nh&amp;acirc;n t&amp;agrave;i đ&amp;aacute;ng để bồi dưỡng.&lt;br /&gt;
&lt;br /&gt;
- Thật kh&amp;ocirc;ng? L&amp;atilde;o Triệu Nam l&amp;acirc;u rồi kh&amp;ocirc;ng v&amp;agrave;o thế gian, kh&amp;ocirc;ng biết hiện tại chiến loạn nổi l&amp;ecirc;n khắp thi&amp;ecirc;n hạ, người chết đ&amp;oacute;i khắp nơi. &amp;Aacute;nh mắt của thiếu ni&amp;ecirc;n đ&amp;oacute; c&amp;oacute; một sự kh&amp;ocirc;ng cam l&amp;ograve;ng, kh&amp;ocirc;ng chấp nhận vận mệnh của m&amp;igrave;nh. - Nguy&amp;ecirc;n Thi&amp;ecirc;n Y l&amp;atilde;nh đạm nh&amp;igrave;n l&amp;atilde;o nh&amp;acirc;n:&lt;br /&gt;
&lt;br /&gt;
- Nếu b&amp;agrave;n về tư chất th&amp;igrave; l&amp;atilde;o Triệu Nam cũng n&amp;ecirc;n đi xem đi.&lt;br /&gt;
&lt;br /&gt;
............&lt;br /&gt;
&lt;br /&gt;
Tr&amp;ecirc;n đỉnh n&amp;uacute;i c&amp;oacute; mấy gian nh&amp;agrave; gỗ đơn sơ được l&amp;agrave;m bằng ỗ tr&amp;ecirc;n n&amp;uacute;i. Ngọn n&amp;uacute;i n&amp;agrave;y c&amp;oacute; thể n&amp;oacute;i l&amp;agrave; cực cao, cao tới cả bảy, t&amp;aacute;m ng&amp;agrave;n thước, xuy&amp;ecirc;n qua trong đ&amp;aacute;m m&amp;acirc;y m&amp;ugrave;. Nếu đứng từ tr&amp;ecirc;n đỉnh n&amp;uacute;i th&amp;igrave; chỉ thấy một biển m&amp;acirc;y dưới ch&amp;acirc;n m&amp;agrave; th&amp;ocirc;i.&lt;br /&gt;
&lt;br /&gt;
L&amp;atilde;o Triệu Nam quay lưng về ph&amp;iacute;a gi&amp;oacute; n&amp;uacute;i phần phật m&amp;agrave; ch&amp;acirc;m một c&amp;aacute;i ruột bấc m&amp;agrave;u đen, sau đ&amp;oacute; đặt v&amp;agrave;o trong một c&amp;aacute;i lư v&amp;agrave;ng. L&amp;uacute;c l&amp;agrave;m việc đ&amp;oacute;, &amp;aacute;nh mắt ẩn chứa dấu vết năm th&amp;aacute;ng của l&amp;atilde;o hết sức chăm ch&amp;uacute;, chẳng kh&amp;aacute;c n&amp;agrave;o đang m&amp;agrave;i một thứ đồ sứ tinh xảo.&lt;br /&gt;
&lt;br /&gt;
- &amp;Acirc;m cực dương sinh. Muốn biết kh&amp;iacute; hậu thay đổi thế n&amp;agrave;o c&amp;oacute; g&amp;igrave; kh&amp;oacute; khăn đến vậy?&lt;br /&gt;
&lt;br /&gt;
Nh&amp;igrave;n b&amp;ecirc;n cạnh l&amp;atilde;o Triệu Nam đang chăm ch&amp;uacute; c&amp;oacute; một quyển s&amp;aacute;ch đủ khiến cho tất cả những người tu đạo phải đỏ mắt đang bị n&amp;eacute;m tr&amp;ecirc;n b&amp;agrave;n gỗ. Quyển s&amp;aacute;ch c&amp;oacute; t&amp;ecirc;n l&amp;agrave; Kim Đỉnh thất nguy&amp;ecirc;n nội cảnh kinh.&lt;br /&gt;
&lt;br /&gt;
L&amp;atilde;o Triệu Nam ngẩng đầu nh&amp;igrave;n Nguy&amp;ecirc;n Thi&amp;ecirc;n Y m&amp;agrave; cười cười:&lt;br /&gt;
&lt;br /&gt;
- Muốn vậy phải mất một ch&amp;uacute;t thời gian. Chủ nh&amp;acirc;n! Ba ng&amp;agrave;y sau c&amp;oacute; lẽ sẽ c&amp;oacute; mưa to.&lt;br /&gt;
&lt;br /&gt;
Nguy&amp;ecirc;n Thi&amp;ecirc;n Y kh&amp;ocirc;ng n&amp;oacute;i g&amp;igrave; chỉ nh&amp;igrave;n mấy c&amp;aacute;i b&amp;uacute;a v&amp;agrave; một &amp;iacute;t củi vất ở chỗ kh&amp;aacute;c m&amp;agrave; hỏi ngược lại:&lt;br /&gt;
&lt;br /&gt;
- L&amp;atilde;o Triệu Nam! Đ&amp;atilde; l&amp;acirc;u rồi ch&amp;uacute;ng ta kh&amp;ocirc;ng đốt lửa?&lt;br /&gt;
&lt;br /&gt;
L&amp;atilde;o Triệu Nam g&amp;atilde;i đầu rồi n&amp;oacute;i:&lt;br /&gt;
&lt;br /&gt;
- Ba năm hay l&amp;agrave; năm năm g&amp;igrave; đ&amp;oacute;. Thời gian l&amp;acirc;u qu&amp;aacute; n&amp;ecirc;n kh&amp;ocirc;ng nhớ r&amp;otilde;.&lt;br /&gt;
&lt;br /&gt;
- Đ&amp;uacute;ng vậy! Thời gian qu&amp;aacute; d&amp;agrave;i, ngươi cũng phải l&amp;agrave;m g&amp;igrave; đ&amp;oacute; để giết thời gian. - Nguy&amp;ecirc;n Thi&amp;ecirc;n Y nh&amp;igrave;n l&amp;atilde;o Triệu Nam rồi n&amp;oacute;i:&lt;br /&gt;
&lt;br /&gt;
- Ta một l&amp;ograve;ng hướng đạo để ngộ được sự ảo diệu của ch&amp;uacute;ng sinh. L&amp;atilde;o c&amp;oacute; biết s&amp;aacute;u mươi năm qua, ta nh&amp;igrave;n thấy g&amp;igrave; kh&amp;ocirc;ng?&lt;br /&gt;
&lt;br /&gt;
- S&amp;aacute;u mươi năm trước chủ nh&amp;acirc;n đ&amp;atilde; luyện th&amp;agrave;nh c&amp;ocirc;ng Kh&amp;ocirc;ng Sinh Diệt Hải lưu ly quyết. L&amp;atilde;o n&amp;ocirc; ngu độn l&amp;agrave;m sao c&amp;oacute; thể biết được những điều chủ nh&amp;acirc;n nh&amp;igrave;n thấy. - L&amp;atilde;o Triệu Nam lắc đầu.&lt;br /&gt;
&lt;br /&gt;
- C&amp;aacute; lớn nuốt c&amp;aacute; b&amp;eacute;. Đ&amp;oacute; l&amp;agrave; quy luật của tự nhi&amp;ecirc;n. Sự vận h&amp;agrave;nh của đạo trời cũng l&amp;agrave; như vậy. - Nguy&amp;ecirc;n Thi&amp;ecirc;n Y n&amp;oacute;i tiếp:&lt;br /&gt;
&lt;br /&gt;
- Ngươi kh&amp;ocirc;ng c&amp;oacute; t&amp;acirc;m hại người nhưng người lại c&amp;oacute; t&amp;acirc;m hại ngươi. Ngươi kh&amp;ocirc;ng muốn giết người nhưng người lại muốn giết ngươi.&lt;br /&gt;
&lt;br /&gt;
- Chủ nh&amp;acirc;n n&amp;oacute;i rất đ&amp;uacute;ng. C&amp;oacute; điều ta đ&amp;atilde; đủ gi&amp;agrave; rồi. - Kh&amp;ocirc;ng ngờ &amp;aacute;nh mắt của l&amp;atilde;o Triệu Nam lại tr&amp;agrave;n ngập sự bằng l&amp;ograve;ng với số mệnh:&lt;br /&gt;
&lt;br /&gt;
- Chủ nh&amp;acirc;n ở, ta ở. Chủ nh&amp;acirc;n kh&amp;ocirc;ng ở th&amp;igrave; sinh tử c&amp;oacute; g&amp;igrave; đ&amp;acirc;u.&lt;br /&gt;
&lt;br /&gt;
- L&amp;atilde;o cảm thấy hắn c&amp;oacute; thể l&amp;ecirc;n được đ&amp;acirc;y kh&amp;ocirc;ng?&lt;br /&gt;
&lt;br /&gt;
Nguy&amp;ecirc;n Thi&amp;ecirc;n Y quay đầu đi kh&amp;ocirc;ng n&amp;oacute;i nữa. Ng&amp;oacute;n tay d&amp;agrave;i trắng khiến cho thiếu nữ cũng phải ghen tị b&amp;uacute;ng nhẹ ra một ph&amp;aacute;p quyết huyền b&amp;iacute;. Đ&amp;aacute;m m&amp;acirc;y m&amp;agrave;u trắng tản ra, h&amp;oacute;a th&amp;agrave;nh một c&amp;aacute;i mặt k&amp;iacute;nh rộng chừng t&amp;aacute;m thước, hiện r&amp;otilde; cảnh vật từ ch&amp;acirc;n n&amp;uacute;i tới sườn n&amp;uacute;i. Một c&amp;aacute;i ph&amp;eacute;p thuật c&amp;oacute; cấp bậc địa ti&amp;ecirc;n trong truyền thuyết, c&amp;oacute; thể bắn ngược phần lớn ph&amp;aacute;p thuật c&amp;ocirc;ng k&amp;iacute;ch mạnh mẽ m&amp;agrave; chỉ được y d&amp;ugrave;ng l&amp;agrave; gương để xem. Phần lớn người tu đạo m&amp;agrave; nh&amp;igrave;n thấy cảnh n&amp;agrave;y chắc chắn sẽ nổi giận. Tuy nhi&amp;ecirc;n c&amp;aacute;i loại ph&amp;aacute;p thuật tốn rất nhiều ph&amp;aacute;p lực n&amp;agrave;y dường như đối với y kh&amp;ocirc;ng hề c&amp;oacute; một sự ảnh hưởng.&lt;br /&gt;
&lt;br /&gt;
L&amp;atilde;o Triệu Nam xoay hai b&amp;agrave;n tay kh&amp;ocirc; r&amp;aacute;p nh&amp;igrave;n thiếu ni&amp;ecirc;n g&amp;agrave;y yếu đang cố hết sức dựa v&amp;agrave;o sợi x&amp;iacute;ch sắt để leo l&amp;ecirc;n. C&amp;aacute;i x&amp;iacute;ch sắc v&amp;agrave; những c&amp;agrave;nh c&amp;acirc;y xung quanh tạo ra những vết thương tr&amp;ecirc;n c&amp;aacute;nh tay của hắn. Tuy nhi&amp;ecirc;n hắn vẫn cố hết sức m&amp;agrave; leo l&amp;ecirc;n tr&amp;ecirc;n. C&amp;oacute; điều đối với một đứa trẻ mới mười hai, mười ba tuổi m&amp;agrave; n&amp;oacute;i th&amp;igrave; ngọn n&amp;uacute;i n&amp;agrave;y quả thực rất cao. Khi đi được một phần tư đường, cuối c&amp;ugrave;ng th&amp;igrave; hắn kiệt sức m&amp;agrave; từ từ trượt xuống.&lt;br /&gt;
&lt;br /&gt;
- H&amp;igrave;nh như l&amp;agrave; kh&amp;ocirc;ng được.&lt;br /&gt;
&lt;br /&gt;
L&amp;atilde;o Triệu Nam chưa bao giờ ho&amp;agrave;i nghi lời n&amp;oacute;i của Nguy&amp;ecirc;n Thi&amp;ecirc;n Y, nhưng sau khi n&amp;oacute;i c&amp;acirc;u đ&amp;oacute;, l&amp;atilde;o lại nhếch miệng cười cười:&lt;br /&gt;
&lt;br /&gt;
- Nhưng chủ nh&amp;acirc;n...l&amp;atilde;o thấy hắn c&amp;oacute; ch&amp;uacute;t kh&amp;aacute;c biệt.&lt;br /&gt;
&lt;br /&gt;
Kh&amp;ocirc;ng cần biết l&amp;atilde;o triệu Nam cảm thấy thiếu ni&amp;ecirc;n c&amp;oacute; kh&amp;aacute;c với người kh&amp;aacute;c như thế n&amp;agrave;o th&amp;igrave; trong điển tịch cũng kh&amp;ocirc;ng hề c&amp;oacute; một chương n&amp;agrave;o n&amp;oacute;i La Ph&amp;ugrave; t&amp;ocirc;ng v&amp;igrave; y&amp;ecirc;u th&amp;iacute;ch một ai m&amp;agrave; để cho họ một bước l&amp;ecirc;n trời.&lt;br /&gt;
&lt;br /&gt;
Ng&amp;agrave;y h&amp;ocirc;m sau l&amp;atilde;o Triệu Nam lại l&amp;agrave;m những chuyện hết sức b&amp;igrave;nh thường, ngồi bất động thổ nạp giống như người chết. Sau đ&amp;oacute; l&amp;atilde;o xoay chuyển c&amp;aacute;i cối đ&amp;aacute; một l&amp;uacute;c l&amp;acirc;u, rồi giống như một l&amp;atilde;o nh&amp;acirc;n đến tuổi gần đất xa trời m&amp;agrave; từ từ ngẩng đầu im lặng nh&amp;igrave;n gi&amp;oacute; n&amp;uacute;i.&lt;br /&gt;
&lt;br /&gt;
Ba ng&amp;agrave;y sau v&amp;agrave;o giữa trưa, l&amp;atilde;o Triệu Nam giống như người chết đang ngồi ngay ngắn. Việc đầu ti&amp;ecirc;n sau khi tỉnh lại, l&amp;atilde;o nhếch miệng cười. Trước mặt l&amp;atilde;o l&amp;agrave; c&amp;aacute;i ph&amp;acirc;n quang k&amp;iacute;nh do Nguy&amp;ecirc;n Thi&amp;ecirc;n Y d&amp;ugrave;ng ph&amp;aacute;p lực rạo ra.&lt;br /&gt;
&lt;br /&gt;
- Đứa b&amp;eacute; n&amp;agrave;y cũng được. - Một tia s&amp;aacute;ng chợt l&amp;oacute;e l&amp;ecirc;n trong mắt l&amp;atilde;o Triệu Nam. So với ba ng&amp;agrave;y trước, thiếu ni&amp;ecirc;n vẫn cố gắng leo l&amp;ecirc;n. Vết thương tr&amp;ecirc;n người hắn c&amp;agrave;ng l&amp;uacute;c c&amp;agrave;ng nhiều, c&amp;oacute; điều tay v&amp;agrave; lưng đều được quấn lại, đợi cho tới khi hết sức, hắn liền cầm d&amp;acirc;y buộc v&amp;agrave;o sợi x&amp;iacute;ch, giống như l&amp;atilde;o Triệu Nam treo thịt kh&amp;ocirc; mấy ng&amp;agrave;y trước m&amp;agrave; nghỉ ngơi. L&amp;uacute;c trước, thiếu ni&amp;ecirc;n chưa từng vượt qua được một phần tư độ cao nhưng h&amp;ocirc;m nay thiếu ni&amp;ecirc;n đ&amp;atilde; l&amp;ecirc;n tới gần sườn n&amp;uacute;i.&lt;br /&gt;
&lt;br /&gt;
- Nhiều ng&amp;agrave;y như vậy mới nghĩ ra được c&amp;aacute;ch. Coi như cũng kh&amp;ocirc;ng ngu lắm. - Nguy&amp;ecirc;n Thi&amp;ecirc;n Y l&amp;ecirc;n tiếng n&amp;oacute;i:&lt;br /&gt;
&lt;br /&gt;
- Nhưng như vậy c&amp;oacute; khả năng l&amp;ecirc;n được tới đ&amp;acirc;y kh&amp;ocirc;ng?&lt;br /&gt;
&lt;br /&gt;
L&amp;atilde;o Triệu Nam kh&amp;ocirc;ng n&amp;oacute;i g&amp;igrave;, chỉ h&amp;iacute;p mắt, quay đầu nh&amp;igrave;n c&amp;aacute;i chu&amp;ocirc;ng gi&amp;oacute; m&amp;igrave;nh tr&amp;ecirc;n trong căn nh&amp;agrave;. L&amp;uacute;c n&amp;agrave;y c&amp;oacute; thể nghe được những thanh &amp;acirc;m của chu&amp;ocirc;ng gi&amp;oacute; vang l&amp;ecirc;n. Một trận mưa to thường xuy&amp;ecirc;n xuất hiện ở v&amp;ugrave;ng n&amp;uacute;i La Ph&amp;ugrave; bắt đầu mở m&amp;agrave;n.&lt;br /&gt;
&lt;br /&gt;
So với mấy ng&amp;agrave;y trước, ngoại trừ một phần ba v&amp;aacute;ch n&amp;uacute;i đầu ti&amp;ecirc;n hắn đ&amp;atilde; biết chỗ n&amp;agrave;o c&amp;oacute; thể leo l&amp;ecirc;n, chỗ n&amp;agrave;o c&amp;oacute; thể d&amp;ugrave;ng &amp;iacute;t sức c&amp;ograve;n t&amp;igrave;nh trạng của thiếu ni&amp;ecirc;n lại kh&amp;ocirc;ng bằng. Vết thương tr&amp;ecirc;n người hắn c&amp;oacute; tới mười mấy chỗ. Mấy vết thương đ&amp;oacute; phần lớn l&amp;agrave; trong ng&amp;agrave;y đầu ti&amp;ecirc;n leo l&amp;ecirc;n để lại. L&amp;uacute;c ấy, thiếu ni&amp;ecirc;n vẫn kh&amp;ocirc;ng chịu bỏ, cho tới khi sức c&amp;ugrave;ng lực kiệt, hắn gần như kh&amp;ocirc;ng nắm được sợi x&amp;iacute;ch, phải dựa v&amp;agrave;o tay m&amp;agrave; trượt xuống. Kh&amp;iacute; hậu của v&amp;ugrave;ng n&amp;uacute;i La Ph&amp;ugrave; vốn ẩm ướt khiến cho những vết thương sưng đỏ, mưng mủ. Chỉ c&amp;agrave;n cử động một ch&amp;uacute;t l&amp;agrave; lại động tới vết thương. M&amp;agrave; trong điều kiện như vậy th&amp;igrave; lương thực để trong căn ph&amp;ograve;ng của người Mi&amp;ecirc;u cũng chỉ được ba, bốn ng&amp;agrave;y. Trong hai ng&amp;agrave;y qua thiếu ni&amp;ecirc;n đ&amp;atilde; bắt đầu phải bỏ thời gian t&amp;igrave;m kiếm ở c&amp;aacute;i nơi to&amp;agrave;n độc x&amp;agrave; v&amp;agrave; m&amp;atilde;nh th&amp;uacute; những thứ c&amp;oacute; thể ăn được. Hiện tại mặc d&amp;ugrave; thiếu ni&amp;ecirc;n đ&amp;atilde; kiệt sức nhưng d&amp;ugrave;ng vải bố cột v&amp;agrave;o sợi x&amp;iacute;ch c&amp;oacute; thể nghỉ ngơi. Cứ như vậy mặc d&amp;ugrave; kh&amp;ocirc;ng thể hồi phục ho&amp;agrave;n to&amp;agrave;n nhưng cũng gi&amp;uacute;p cho thiếu ni&amp;ecirc;n leo l&amp;ecirc;n được tới lưng chừng n&amp;uacute;i. Tới đ&amp;acirc;y, thiếu ni&amp;ecirc;n chỉ cảm thấy tay ch&amp;acirc;n m&amp;igrave;nh giống như gắn cục ch&amp;igrave; cực nặng. L&amp;uacute;c đầu, sau khi nghỉ ngơi, hắn c&amp;ograve;n c&amp;oacute; thể leo tiếp l&amp;ecirc;n từng bảy, t&amp;aacute;m thước. Nhưng hiện tại cứ l&amp;ecirc;n được hai, ba thước, hắn lại phải thở dốc.&lt;/p&gt;
', 1, CAST(0x0000ADEF01129F37 AS DateTime), CAST(0x0000ADEF01129F37 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (3114, 4101, 2042, N'Chương 6: Mắt như quỷ hỏa, pháp tắc La Phù', N'&lt;p&gt;Thiếu ni&amp;ecirc;n biết m&amp;igrave;nh đ&amp;atilde; tới cực hạn. Nhưng nh&amp;igrave;n l&amp;ecirc;n tr&amp;ecirc;n cũng chẳng biết tới đỉnh n&amp;uacute;i c&amp;ograve;n bao xa nữa. C&amp;oacute; điều trong l&amp;ograve;ng thiếu ni&amp;ecirc;n kh&amp;ocirc;ng hề c&amp;oacute; lấy một ch&amp;uacute;t uể oải v&amp;agrave; mất m&amp;aacute;t, hắn chỉ nghĩ xem c&amp;oacute; c&amp;aacute;ch n&amp;agrave;o hữu hiệu. Nếu h&amp;ocirc;m nay kh&amp;ocirc;ng l&amp;ecirc;n được th&amp;igrave; ng&amp;agrave;y mai. Chỉ cần ng&amp;agrave;y h&amp;ocirc;m sau leo l&amp;ecirc;n cao hơn ng&amp;agrave;y h&amp;ocirc;m trước th&amp;igrave; sẽ c&amp;oacute; ng&amp;agrave;y l&amp;ecirc;n được tới đỉnh n&amp;uacute;i.&lt;br /&gt;
&lt;br /&gt;
Thật sự hắn kh&amp;ocirc;ng được th&amp;ocirc;ng minh lắm nhưng lại c&amp;oacute; được một sự cứng rắn m&amp;agrave; phần lớn những người kh&amp;aacute;c kh&amp;ocirc;ng c&amp;oacute;. Nếu l&amp;agrave; một thiếu ni&amp;ecirc;n kh&amp;aacute;c, c&amp;oacute; lẽ một phần ba qu&amp;atilde;ng đường cũng kh&amp;ocirc;ng leo l&amp;ecirc;n được. Hiện tại, thiếu ni&amp;ecirc;n cắn răng tiếp tục leo l&amp;ecirc;n, đồng thời quan s&amp;aacute;t xung quanh cẩn thận. Bất chợt c&amp;oacute; tiếng k&amp;ecirc;u vang l&amp;ecirc;n khiến cho thiếu ni&amp;ecirc;n kinh h&amp;atilde;i, tay tr&amp;aacute;i nắm chặt lấy sợi x&amp;iacute;ch c&amp;ograve;n tay phải th&amp;igrave; r&amp;uacute;t con dao cắm b&amp;ecirc;n h&amp;ocirc;ng. Trước khi leo l&amp;ecirc;n, thiếu ni&amp;ecirc;n đ&amp;atilde; vất tất cả những đồ đạc tr&amp;ecirc;n người để cho nhẹ bớt. Tuy nhi&amp;ecirc;n hắn c&amp;oacute; mang theo một con dao đốn củi cũng l&amp;agrave; v&amp;igrave; để ch&amp;eacute;m những c&amp;agrave;nh c&amp;acirc;y cản đường, đồng thời quan trọng hơn l&amp;agrave; mấy ng&amp;agrave;y trước, tr&amp;ecirc;n đường leo l&amp;ecirc;n hắn ph&amp;aacute;t hiện ra một con rắn độc to như c&amp;aacute;nh tay em b&amp;eacute;.&lt;br /&gt;
&lt;br /&gt;
Nh&amp;igrave;n sang ph&amp;iacute;a c&amp;oacute; tiếng động đ&amp;oacute;, thiếu ni&amp;ecirc;n chợt thở ph&amp;agrave;o nhẹ nh&amp;oacute;m. H&amp;oacute;a ra đ&amp;oacute; l&amp;agrave; một con khỉ nhỏ m&amp;agrave;u x&amp;aacute;m đang mở to mắt nh&amp;igrave;n hắn rồi sau đ&amp;oacute; biến mất trong l&amp;ugrave;m c&amp;acirc;y.&lt;br /&gt;
&lt;br /&gt;
- Kh&amp;ocirc;ng xong! Trời sắp mưa. - Thiếu ni&amp;ecirc;n mới vừa mới cắm con dao đốn củi t&amp;igrave;m được trong căn ph&amp;ograve;ng nhỏ của người Mi&amp;ecirc;u v&amp;agrave;o h&amp;ocirc;ng th&amp;igrave; một cơn gi&amp;oacute; n&amp;uacute;i mang theo hơi nước thổi qua l&amp;agrave;m cho thiếu ni&amp;ecirc;n su&amp;yacute;t nữa th&amp;igrave; rơi xuống, khiến cho hắn sợ tới mức to&amp;aacute;t mồ h&amp;ocirc;i. Một l&amp;aacute;t sau đ&amp;oacute;, vốn sườn n&amp;uacute;i c&amp;ograve;n đang đầy &amp;aacute;nh nắng đ&amp;atilde; tối sầm.&lt;br /&gt;
&lt;br /&gt;
&amp;Ugrave; &amp;ugrave;....&lt;br /&gt;
&lt;br /&gt;
Trong tai thiếu ni&amp;ecirc;n đột nhi&amp;ecirc;n nghe thấy một &amp;acirc;m thanh kh&amp;aacute;c lạ. &amp;Acirc;m thanh đ&amp;oacute; giống như c&amp;oacute; người đang cầm con ốc biển to m&amp;agrave; th&amp;ocirc;i.&lt;br /&gt;
&lt;br /&gt;
Lại một cơn gi&amp;oacute; n&amp;uacute;i lạnh thấu xương thổi qua khiến cho &amp;acirc;m thanh đ&amp;oacute; c&amp;agrave;ng to hơn. Lần n&amp;agrave;y thiếu ni&amp;ecirc;n quan s&amp;aacute;t một c&amp;aacute;ch cẩn thận th&amp;igrave; thấy tr&amp;ecirc;n đỉnh đầu c&amp;aacute;ch m&amp;igrave;nh kh&amp;ocirc;ng xa, những c&amp;agrave;nh c&amp;acirc;y kh&amp;ocirc; khẽ dao động rồi biến mất, giống như bị một c&amp;aacute;i g&amp;igrave; đ&amp;oacute; nuốt chửng.&lt;br /&gt;
&lt;br /&gt;
Vốn thấy trời sắp mưa, c&amp;agrave;ng xuống nhanh th&amp;igrave; c&amp;agrave;ng an to&amp;agrave;n, nhưng thiếu ni&amp;ecirc;n lại cảm thấy hiếu kỳ m&amp;agrave; b&amp;ograve; l&amp;ecirc;n tiếp. &amp;quot;Roạt&amp;quot; một c&amp;aacute;i c&amp;agrave;nh c&amp;acirc;y lại rạch n&amp;aacute;t &amp;aacute;o của thiếu ni&amp;ecirc;n, ghi th&amp;ecirc;m l&amp;ecirc;n lưng của hắn một vết m&amp;aacute;u. Nhưng ngược lại, thiếu ni&amp;ecirc;n chợt ph&amp;aacute;t ra một tiếng hoan h&amp;ocirc; khi thấy trước mặt kh&amp;ocirc;ng ngờ l&amp;agrave; một c&amp;aacute;i động bị d&amp;acirc;y leo che mất một nửa. C&amp;aacute;i &amp;acirc;m thanh kỳ lạ kia ch&amp;iacute;nh l&amp;agrave; do gi&amp;oacute; thổi v&amp;agrave;o trong động ph&amp;aacute;t ra.&lt;br /&gt;
&lt;br /&gt;
C&amp;aacute;i động đ&amp;oacute; chỉ to bằng một người khom lưng đi v&amp;agrave;o, ho&amp;agrave;n to&amp;agrave;n tối đen. Nh&amp;igrave;n v&amp;agrave;o trong kh&amp;ocirc;ng biết n&amp;oacute; s&amp;acirc;u tới bao nhi&amp;ecirc;u. C&amp;oacute; điều m&amp;ugrave;i ẩm mốc từ b&amp;ecirc;n trong thổi ra khiến cho người ta c&amp;oacute; cảm gi&amp;aacute;c khủng bố. Nhưng thiếu ni&amp;ecirc;n vốn l&amp;agrave; một người thuần hậu n&amp;ecirc;n chỉ nghĩ đ&amp;oacute; l&amp;agrave; một điểm dừng ch&amp;acirc;n khiến cho người ta vui mừng. Nếu ng&amp;agrave;y mai mang theo thức ăn, khi tới nơi n&amp;agrave;y c&amp;oacute; thể nghỉ ngơi một ch&amp;uacute;t, l&amp;agrave;m cho tinh thần thoải m&amp;aacute;i m&amp;agrave; l&amp;ecirc;n tới đỉnh n&amp;uacute;i. C&amp;ograve;n h&amp;ocirc;m nay th&amp;igrave; cũng c&amp;oacute; thể để cho hắn l&amp;aacute;nh tạm mưa gi&amp;oacute;. V&amp;igrave; vậy m&amp;agrave; thiếu ni&amp;ecirc;n kh&amp;ocirc;ng nghĩ nhiều, vạch d&amp;acirc;y leo rồi chui v&amp;agrave;o b&amp;ecirc;n trong.&lt;br /&gt;
&lt;br /&gt;
.........&lt;br /&gt;
&lt;br /&gt;
Nơi cửa động, l&amp;aacute; kh&amp;ocirc; chồng chất rất dầy khiến cho người ta đặt ch&amp;acirc;n l&amp;ecirc;n c&amp;oacute; cảm gi&amp;aacute;c rất &amp;ecirc;m. Bước v&amp;agrave;o trong động, thiếu ni&amp;ecirc;n cảm thấy thư th&amp;aacute;i, đặt m&amp;ocirc;ng ngồi xuống nơi cửa động. Mới ngồi một l&amp;uacute;c, nhưng hạt mưa to đ&amp;atilde; lộp độp rơi xuống b&amp;ecirc;n ngo&amp;agrave;i.&lt;br /&gt;
&lt;br /&gt;
Trong nh&amp;aacute;y mắt cả dải La Ph&amp;ugrave; được bao phủ bởi một l&amp;agrave;n mưa bạc m&amp;ecirc;nh m&amp;ocirc;ng. C&amp;aacute;i loại cảnh sắc an nh&amp;agrave;n sung sướng thế n&amp;agrave;y, th&amp;igrave; những người đồng lứa với hắn kh&amp;oacute; c&amp;oacute; thể nh&amp;igrave;n thấy. Tuy nhi&amp;ecirc;n khung cảnh thơ mộng đ&amp;oacute; nhanh ch&amp;oacute;ng bị mưa gi&amp;oacute; x&amp;oacute;i m&amp;ograve;n. Sau khi nở nụ cười khổ, thiếu ni&amp;ecirc;n cắn răng đứng dậy bắt đầu t&amp;igrave;m kiếm trong sơn động.&lt;br /&gt;
&lt;br /&gt;
Ngoại trừ gần cửa động bị mưa l&amp;agrave;m ướt ra, trong sơn động ho&amp;agrave;n to&amp;agrave;n kh&amp;ocirc; r&amp;aacute;o kh&amp;ocirc;ng hề c&amp;oacute; rắn rết. L&amp;uacute;c đầu từ ngo&amp;agrave;i đi v&amp;agrave;o rất hẹp nhưng sau đ&amp;oacute; sơn động lại c&amp;agrave;ng th&amp;ecirc;m rộng r&amp;atilde;i. Thiếu ni&amp;ecirc;n lần theo v&amp;aacute;ch đ&amp;aacute; đi ngược v&amp;agrave;o trong th&amp;igrave; thấy động rộng r&amp;atilde;i hẳn ra, trước mắt hắn l&amp;agrave; một c&amp;aacute;i động rộng mấy chục thước. Trong n&amp;agrave;y c&amp;oacute; lỗ thủng xuy&amp;ecirc;n tới tận đỉnh n&amp;uacute;i, &amp;aacute;nh s&amp;aacute;ng trong động ch&amp;iacute;nh l&amp;agrave; nhờ c&amp;aacute;i lỗ n&amp;agrave;y. thiếu ni&amp;ecirc;n ngẩn người liền hiểu ra được tại sao trong sơn động ngoại trừ ngo&amp;agrave;i cửa động c&amp;oacute; kh&amp;ocirc;ng kh&amp;iacute; ẩm mốc ra c&amp;ograve;n b&amp;ecirc;n trong th&amp;igrave; kh&amp;ocirc;ng. Nhất định l&amp;agrave; do gi&amp;oacute; n&amp;uacute;i thổi v&amp;agrave;o rồi lại qua lỗ th&amp;ocirc;ng hơi ra ngo&amp;agrave;i. Kh&amp;ocirc;ng kh&amp;iacute; được lưu động n&amp;ecirc;n mới c&amp;oacute; c&amp;aacute;i &amp;acirc;m thanh kỳ lạ kia.&lt;br /&gt;
&lt;br /&gt;
Dưới c&amp;aacute;i lỗ thủng c&amp;oacute; mấy bụi c&amp;acirc;y. Nước mưa nhỏ xuống l&amp;agrave;m vang l&amp;ecirc;n những tiếng động. Thiếu ni&amp;ecirc;n nh&amp;igrave;n quanh th&amp;igrave; thấy trong thạch động ngoại trừ non nửa l&amp;agrave; những tảng đ&amp;aacute; ra, hơn nửa c&amp;ograve;n lại hết sức bằng phẳng. Kh&amp;ocirc;ng ai ngờ trong c&amp;aacute;i động n&amp;agrave;y lại c&amp;oacute; một nơi như vậy khiến cho thiếu ni&amp;ecirc;n hết sức vui vẻ, thậm ch&amp;iacute; c&amp;ograve;n nghĩ tới cảnh khi thời tiết đẹp, &amp;aacute;nh nắng sẽ chiếu th&amp;agrave;nh một dải xuống đ&amp;uacute;ng bụi c&amp;acirc;y.&lt;br /&gt;
&lt;br /&gt;
- Kh&amp;ocirc;ng biết mấy c&amp;aacute;i tr&amp;aacute;i c&amp;acirc;y kia c&amp;oacute; thể ăn được kh&amp;ocirc;ng? - Thiếu ni&amp;ecirc;n chợt thấy trong mấy bụi c&amp;acirc;y c&amp;agrave;nh l&amp;aacute; ngăm đen, tr&amp;ecirc;n mỗi c&amp;agrave;nh c&amp;oacute; năm tới s&amp;aacute;u quả ch&amp;iacute;n mọng.&lt;br /&gt;
&lt;br /&gt;
Thiếu ni&amp;ecirc;n kh&amp;ocirc;ng nhịn được đang định đưa tay h&amp;aacute;i th&amp;igrave; chợt nghe thấy một &amp;acirc;m thanh ch&amp;oacute;i tai vọng tới từ b&amp;ecirc;n tr&amp;aacute;i.&lt;br /&gt;
&lt;br /&gt;
Tiếng động kia đột nhi&amp;ecirc;n vang l&amp;ecirc;n khiến cho thiếu ni&amp;ecirc;n kinh h&amp;atilde;i, vội v&amp;agrave;ng quay đầu lại. Ngay lập tức hắn to&amp;aacute;t mồ h&amp;ocirc;i khi nh&amp;igrave;n thấy bốn con mắt đỏ như lửa đang nh&amp;igrave;n m&amp;igrave;nh chằm chằm. M&amp;agrave; chủ nh&amp;acirc;n của bốn con mắt đ&amp;oacute; kh&amp;ocirc;ng ngờ lại l&amp;agrave; một con qu&amp;aacute;i vật c&amp;oacute; hai c&amp;aacute;i đầu giống như con người.&lt;br /&gt;
&lt;br /&gt;
Con qu&amp;aacute;i vật đ&amp;oacute; cao chừng ba thước, giống như một người đứng thẳng. Hai c&amp;aacute;i đầu của n&amp;oacute; c&amp;oacute; đầy đủ ngũ quan, t&amp;oacute;c hoa r&amp;acirc;m, n&amp;eacute;t mặt đầy nếp nhăn. Nếu như đ&amp;ocirc;i mắt nhỏ của n&amp;oacute; kh&amp;ocirc;ng c&amp;oacute; m&amp;agrave;u hồng th&amp;igrave; nh&amp;igrave;n cũng giống như một l&amp;atilde;o nh&amp;acirc;n xấu x&amp;iacute;, kh&amp;ocirc;ng tới mức đ&amp;aacute;ng sợ. Con qu&amp;aacute;i vật đ&amp;oacute; cũng c&amp;oacute; hai tay, hai ch&amp;acirc;n, c&amp;oacute; điều tay ch&amp;acirc;n n&amp;oacute; nh&amp;igrave;n rất g&amp;agrave;y yếu chẳng kh&amp;aacute;c g&amp;igrave; m&amp;oacute;ng g&amp;agrave; cuộn trước ngực. Khi n&amp;oacute; đứng thẳng th&amp;igrave; chống đỡ n&amp;oacute; l&amp;agrave; một c&amp;aacute;i đu&amp;ocirc;i vĩ đại giống như c&amp;aacute;i đu&amp;ocirc;i c&amp;aacute; sấu.&lt;br /&gt;
&lt;br /&gt;
Thiếu ni&amp;ecirc;n l&amp;ugrave;i lại hai bước, theo bản năng r&amp;uacute;t con đao cầm tay. N&amp;eacute;t mặt của qu&amp;aacute;i vật đột nhi&amp;ecirc;n trở n&amp;ecirc;n hung dữ, nhảy thẳng l&amp;ecirc;n tr&amp;ecirc;n v&amp;aacute;ch động rồi nh&amp;agrave;o xuống người thiếu ni&amp;ecirc;n. Thiếu ni&amp;ecirc;n giật m&amp;igrave;nh, lỗ ch&amp;acirc;n l&amp;ocirc;ng mở rộng. Hắn giơ đao ch&amp;eacute;m tới con qu&amp;aacute;i vật. Con qu&amp;aacute;i vật cũng kh&amp;ocirc;ng th&amp;egrave;m tr&amp;aacute;nh n&amp;eacute;, qu&amp;eacute;t c&amp;aacute;i đu&amp;ocirc;i một c&amp;aacute;i ngăn c&amp;acirc;y đao của thiếu ni&amp;ecirc;n lại. M&amp;agrave; c&amp;acirc;y đao của thiếu ni&amp;ecirc;n cũng chỉ để lại một vết m&amp;agrave;u trắng tr&amp;ecirc;n đu&amp;ocirc;i của n&amp;oacute;. Lực phản chấn qu&amp;aacute; mạnh khiến cho th&amp;acirc;n thể thiếu ni&amp;ecirc;n run run, hổ khẩu chảy đầy m&amp;aacute;u tươi, v&amp;agrave; con đao th&amp;igrave; rơi xuống dưới.&lt;br /&gt;
&lt;br /&gt;
Thiếu ni&amp;ecirc;n thuận thế lăn một v&amp;ograve;ng, cầm đ&amp;aacute; n&amp;eacute;m loạn l&amp;ecirc;n người con qu&amp;aacute;i vật. Qu&amp;aacute;i vật kh&amp;ocirc;ng kịp n&amp;eacute; tr&amp;aacute;nh, bị thiếu ni&amp;ecirc;n n&amp;eacute;m tr&amp;uacute;ng hai c&amp;aacute;i m&amp;agrave; th&amp;ecirc;m tức giận. Một tiếng động vang l&amp;ecirc;n, trước mặt thiếu ni&amp;ecirc;n đột nhi&amp;ecirc;n s&amp;aacute;ng ngời. Kh&amp;ocirc;ng ngờ con qu&amp;aacute;i vật phun ra một ch&amp;ugrave;m lửa hừng hực ẩn chứa kh&amp;iacute; thế mạnh mẽ. Thiếu ni&amp;ecirc;n n&amp;eacute;m tiếp ra một h&amp;ograve;n đ&amp;aacute; nhưng bị ngọn lửa đốt ch&amp;aacute;y.&lt;br /&gt;
&lt;br /&gt;
- C&amp;ograve;n biết phun lửa? - Thiếu ni&amp;ecirc;n kinh h&amp;atilde;i muốn chết chợt ph&amp;aacute;t hiện b&amp;ecirc;n cạnh kh&amp;ocirc;ng c&amp;ograve;n đ&amp;aacute;, hơn nữa hắn cũng đ&amp;atilde; hết sức, ngay cả sức đứng dậy cũng kh&amp;ocirc;ng c&amp;ograve;n.&lt;br /&gt;
&lt;br /&gt;
Tr&amp;ecirc;n đỉnh n&amp;uacute;i, Nguy&amp;ecirc;n Thi&amp;ecirc;n Y đứng trong mưa c&amp;oacute; ch&amp;uacute;t mơ hồ, c&amp;ocirc; độc, chẳng kh&amp;aacute;c g&amp;igrave; một n&amp;eacute;t b&amp;uacute;t vẽ l&amp;ecirc;n trang giấy. Tr&amp;ecirc;n thực tế từ ba mươi năm trước khi Nguy&amp;ecirc;n Thi&amp;ecirc;n Y đ&amp;oacute;n gi&amp;oacute; đứng tr&amp;ecirc;n v&amp;aacute;ch n&amp;uacute;i, l&amp;atilde;o Triệu Nam cũng c&amp;oacute; cảm gi&amp;aacute;c như vậy. L&amp;atilde;o lu&amp;ocirc;n nghĩ c&amp;oacute; một ng&amp;agrave;y y sẽ h&amp;oacute;a gi&amp;oacute; m&amp;agrave; đi. L&amp;atilde;o Triệu Nam biết khi đ&amp;oacute; Nguy&amp;ecirc;n Thi&amp;ecirc;n Y đ&amp;atilde; đứng tr&amp;ecirc;n đỉnh kim tự th&amp;aacute;p của c&amp;aacute;i thế giới n&amp;agrave;y. Người như y trong số những người tu đạo kh&amp;aacute;c chưa hề xuất hiện. C&amp;oacute; điều M&amp;acirc;u X&amp;aacute; ch&amp;acirc;u ch&amp;iacute;nh l&amp;agrave; sự r&amp;agrave;ng buộc của y. C&amp;ograve;n c&amp;aacute;i x&amp;iacute;ch sắc v&amp;agrave; độ cao của ngọn n&amp;uacute;i v&amp;ocirc; danh n&amp;agrave;y ch&amp;iacute;nh l&amp;agrave; thứ quy định m&amp;agrave; y đưa ra cho thiếu ni&amp;ecirc;n. Y cũng kh&amp;ocirc;ng cho ph&amp;eacute;p bất cứ thứ n&amp;agrave;o kh&amp;aacute;c thay đổi quy định của m&amp;igrave;nh.&lt;br /&gt;
&lt;br /&gt;
- L&amp;agrave;m c&amp;agrave;n!&lt;br /&gt;
&lt;br /&gt;
Trong mưa gi&amp;oacute;, Nguy&amp;ecirc;n Thi&amp;ecirc;n Y chợt thốt l&amp;ecirc;n hai chữ đ&amp;oacute;. B&amp;agrave;n tay y đưa ra như đ&amp;oacute;n l&amp;agrave;n mưa từ tr&amp;ecirc;n bầu trời rơi xuống. Một đạo kiếm quang m&amp;agrave;u đỏ chợt xuất hiện từ tr&amp;ecirc;n đỉnh n&amp;uacute;i nhanh ch&amp;oacute;ng lao xuống.&lt;br /&gt;
&lt;br /&gt;
Chỉ cần nh&amp;igrave;n vầng s&amp;aacute;ng đ&amp;oacute; c&amp;oacute; thể thấy kiếm uqnag đ&amp;oacute; kh&amp;ocirc;ng thể n&amp;agrave;o s&amp;aacute;nh với phi kiếm của Thục Sơn. Nhưng cũng giống như quy luật của n&amp;uacute;i La Ph&amp;ugrave;, c&amp;oacute; đ&amp;ocirc;i khi những thứ kh&amp;ocirc;ng hề g&amp;acirc;y ra sự ch&amp;uacute; &amp;yacute; lại c&amp;oacute; một sự nguy hiểm tr&amp;iacute; mạng.&lt;br /&gt;
&lt;br /&gt;
- Ta kh&amp;ocirc;ng thể chết. Kh&amp;oacute; khăn lắm mới c&amp;oacute; được một điểm dừng ch&amp;acirc;n m&amp;agrave; kh&amp;ocirc;ng ngờ lại c&amp;oacute; một con qu&amp;aacute;i vật thế n&amp;agrave;y.&lt;br /&gt;
&lt;br /&gt;
Trong động, thiếu ni&amp;ecirc;n nh&amp;igrave;n con qu&amp;aacute;i vật đang đ&amp;aacute;nh nhau với m&amp;igrave;nh m&amp;agrave; kh&amp;ocirc;ng cam l&amp;ograve;ng. Trong t&amp;iacute;ch tắc, đ&amp;ocirc;i mắt của hắn vằn đỏ giống như một con s&amp;oacute;i cho d&amp;ugrave; bị thương cũng phải d&amp;ugrave;ng h&amp;agrave;m răng của m&amp;igrave;nh cắn x&amp;eacute; đối thủ.&lt;br /&gt;
&lt;br /&gt;
- L&amp;agrave;m c&amp;agrave;n! - Nhưng cũng l&amp;uacute;c đ&amp;oacute; &amp;acirc;m thanh của Nguy&amp;ecirc;n Thi&amp;ecirc;n Y cuồn cuộn như tiếng sấm từ tr&amp;ecirc;n cao vọng xuống.&lt;br /&gt;
&lt;br /&gt;
Đao kiếm quang m&amp;agrave;u đỏ kia kh&amp;ocirc;ng ngờ c&amp;ograve;n nhanh hơn cả &amp;acirc;m thanh.&lt;br /&gt;
&lt;br /&gt;
Hai tai của thiếu ni&amp;ecirc;n vừa mới &amp;ugrave; đi th&amp;igrave; kiếm quang m&amp;agrave;u đỏ cũng xuất hiện trong tầm mắt, lao thẳng v&amp;agrave;o con qu&amp;aacute;i vật.&lt;br /&gt;
&lt;br /&gt;
Thiếu ni&amp;ecirc;n biết m&amp;igrave;nh đ&amp;atilde; tới cực hạn. Nhưng nh&amp;igrave;n l&amp;ecirc;n tr&amp;ecirc;n cũng chẳng biết tới đỉnh n&amp;uacute;i c&amp;ograve;n bao xa nữa. C&amp;oacute; điều trong l&amp;ograve;ng thiếu ni&amp;ecirc;n kh&amp;ocirc;ng hề c&amp;oacute; lấy một ch&amp;uacute;t uể oải v&amp;agrave; mất m&amp;aacute;t, hắn chỉ nghĩ xem c&amp;oacute; c&amp;aacute;ch n&amp;agrave;o hữu hiệu. Nếu h&amp;ocirc;m nay kh&amp;ocirc;ng l&amp;ecirc;n được th&amp;igrave; ng&amp;agrave;y mai. Chỉ cần ng&amp;agrave;y h&amp;ocirc;m sau leo l&amp;ecirc;n cao hơn ng&amp;agrave;y h&amp;ocirc;m trước th&amp;igrave; sẽ c&amp;oacute; ng&amp;agrave;y l&amp;ecirc;n được tới đỉnh n&amp;uacute;i.&lt;br /&gt;
&lt;br /&gt;
Thật sự hắn kh&amp;ocirc;ng được th&amp;ocirc;ng minh lắm nhưng lại c&amp;oacute; được một sự cứng rắn m&amp;agrave; phần lớn những người kh&amp;aacute;c kh&amp;ocirc;ng c&amp;oacute;. Nếu l&amp;agrave; một thiếu ni&amp;ecirc;n kh&amp;aacute;c, c&amp;oacute; lẽ một phần ba qu&amp;atilde;ng đường cũng kh&amp;ocirc;ng leo l&amp;ecirc;n được. Hiện tại, thiếu ni&amp;ecirc;n cắn răng tiếp tục leo l&amp;ecirc;n, đồng thời quan s&amp;aacute;t xung quanh cẩn thận. Bất chợt c&amp;oacute; tiếng k&amp;ecirc;u vang l&amp;ecirc;n khiến cho thiếu ni&amp;ecirc;n kinh h&amp;atilde;i, tay tr&amp;aacute;i nắm chặt lấy sợi x&amp;iacute;ch c&amp;ograve;n tay phải th&amp;igrave; r&amp;uacute;t con dao cắm b&amp;ecirc;n h&amp;ocirc;ng. Trước khi leo l&amp;ecirc;n, thiếu ni&amp;ecirc;n đ&amp;atilde; vất tất cả những đồ đạc tr&amp;ecirc;n người để cho nhẹ bớt. Tuy nhi&amp;ecirc;n hắn c&amp;oacute; mang theo một con dao đốn củi cũng l&amp;agrave; v&amp;igrave; để ch&amp;eacute;m những c&amp;agrave;nh c&amp;acirc;y cản đường, đồng thời quan trọng hơn l&amp;agrave; mấy ng&amp;agrave;y trước, tr&amp;ecirc;n đường leo l&amp;ecirc;n hắn ph&amp;aacute;t hiện ra một con rắn độc to như c&amp;aacute;nh tay em b&amp;eacute;.&lt;br /&gt;
&lt;br /&gt;
Nh&amp;igrave;n sang ph&amp;iacute;a c&amp;oacute; tiếng động đ&amp;oacute;, thiếu ni&amp;ecirc;n chợt thở ph&amp;agrave;o nhẹ nh&amp;oacute;m. H&amp;oacute;a ra đ&amp;oacute; l&amp;agrave; một con khỉ nhỏ m&amp;agrave;u x&amp;aacute;m đang mở to mắt nh&amp;igrave;n hắn rồi sau đ&amp;oacute; biến mất trong l&amp;ugrave;m c&amp;acirc;y.&lt;br /&gt;
&lt;br /&gt;
- Kh&amp;ocirc;ng xong! Trời sắp mưa. - Thiếu ni&amp;ecirc;n mới vừa mới cắm con dao đốn củi t&amp;igrave;m được trong căn ph&amp;ograve;ng nhỏ của người Mi&amp;ecirc;u v&amp;agrave;o h&amp;ocirc;ng th&amp;igrave; một cơn gi&amp;oacute; n&amp;uacute;i mang theo hơi nước thổi qua l&amp;agrave;m cho thiếu ni&amp;ecirc;n su&amp;yacute;t nữa th&amp;igrave; rơi xuống, khiến cho hắn sợ tới mức to&amp;aacute;t mồ h&amp;ocirc;i. Một l&amp;aacute;t sau đ&amp;oacute;, vốn sườn n&amp;uacute;i c&amp;ograve;n đang đầy &amp;aacute;nh nắng đ&amp;atilde; tối sầm.&lt;br /&gt;
&lt;br /&gt;
&amp;Ugrave; &amp;ugrave;....&lt;br /&gt;
&lt;br /&gt;
Trong tai thiếu ni&amp;ecirc;n đột nhi&amp;ecirc;n nghe thấy một &amp;acirc;m thanh kh&amp;aacute;c lạ. &amp;Acirc;m thanh đ&amp;oacute; giống như c&amp;oacute; người đang cầm con ốc biển to m&amp;agrave; th&amp;ocirc;i.&lt;br /&gt;
&lt;br /&gt;
Lại một cơn gi&amp;oacute; n&amp;uacute;i lạnh thấu xương thổi qua khiến cho &amp;acirc;m thanh đ&amp;oacute; c&amp;agrave;ng to hơn. Lần n&amp;agrave;y thiếu ni&amp;ecirc;n quan s&amp;aacute;t một c&amp;aacute;ch cẩn thận th&amp;igrave; thấy tr&amp;ecirc;n đỉnh đầu c&amp;aacute;ch m&amp;igrave;nh kh&amp;ocirc;ng xa, những c&amp;agrave;nh c&amp;acirc;y kh&amp;ocirc; khẽ dao động rồi biến mất, giống như bị một c&amp;aacute;i g&amp;igrave; đ&amp;oacute; nuốt chửng.&lt;br /&gt;
&lt;br /&gt;
Vốn thấy trời sắp mưa, c&amp;agrave;ng xuống nhanh th&amp;igrave; c&amp;agrave;ng an to&amp;agrave;n, nhưng thiếu ni&amp;ecirc;n lại cảm thấy hiếu kỳ m&amp;agrave; b&amp;ograve; l&amp;ecirc;n tiếp. &amp;quot;Roạt&amp;quot; một c&amp;aacute;i c&amp;agrave;nh c&amp;acirc;y lại rạch n&amp;aacute;t &amp;aacute;o của thiếu ni&amp;ecirc;n, ghi th&amp;ecirc;m l&amp;ecirc;n lưng của hắn một vết m&amp;aacute;u. Nhưng ngược lại, thiếu ni&amp;ecirc;n chợt ph&amp;aacute;t ra một tiếng hoan h&amp;ocirc; khi thấy trước mặt kh&amp;ocirc;ng ngờ l&amp;agrave; một c&amp;aacute;i động bị d&amp;acirc;y leo che mất một nửa. C&amp;aacute;i &amp;acirc;m thanh kỳ lạ kia ch&amp;iacute;nh l&amp;agrave; do gi&amp;oacute; thổi v&amp;agrave;o trong động ph&amp;aacute;t ra.&lt;br /&gt;
&lt;br /&gt;
C&amp;aacute;i động đ&amp;oacute; chỉ to bằng một người khom lưng đi v&amp;agrave;o, ho&amp;agrave;n to&amp;agrave;n tối đen. Nh&amp;igrave;n v&amp;agrave;o trong kh&amp;ocirc;ng biết n&amp;oacute; s&amp;acirc;u tới bao nhi&amp;ecirc;u. C&amp;oacute; điều m&amp;ugrave;i ẩm mốc từ b&amp;ecirc;n trong thổi ra khiến cho người ta c&amp;oacute; cảm gi&amp;aacute;c khủng bố. Nhưng thiếu ni&amp;ecirc;n vốn l&amp;agrave; một người thuần hậu n&amp;ecirc;n chỉ nghĩ đ&amp;oacute; l&amp;agrave; một điểm dừng ch&amp;acirc;n khiến cho người ta vui mừng. Nếu ng&amp;agrave;y mai mang theo thức ăn, khi tới nơi n&amp;agrave;y c&amp;oacute; thể nghỉ ngơi một ch&amp;uacute;t, l&amp;agrave;m cho tinh thần thoải m&amp;aacute;i m&amp;agrave; l&amp;ecirc;n tới đỉnh n&amp;uacute;i. C&amp;ograve;n h&amp;ocirc;m nay th&amp;igrave; cũng c&amp;oacute; thể để cho hắn l&amp;aacute;nh tạm mưa gi&amp;oacute;. V&amp;igrave; vậy m&amp;agrave; thiếu ni&amp;ecirc;n kh&amp;ocirc;ng nghĩ nhiều, vạch d&amp;acirc;y leo rồi chui v&amp;agrave;o b&amp;ecirc;n trong.&lt;br /&gt;
&lt;br /&gt;
.........&lt;br /&gt;
&lt;br /&gt;
Nơi cửa động, l&amp;aacute; kh&amp;ocirc; chồng chất rất dầy khiến cho người ta đặt ch&amp;acirc;n l&amp;ecirc;n c&amp;oacute; cảm gi&amp;aacute;c rất &amp;ecirc;m. Bước v&amp;agrave;o trong động, thiếu ni&amp;ecirc;n cảm thấy thư th&amp;aacute;i, đặt m&amp;ocirc;ng ngồi xuống nơi cửa động. Mới ngồi một l&amp;uacute;c, nhưng hạt mưa to đ&amp;atilde; lộp độp rơi xuống b&amp;ecirc;n ngo&amp;agrave;i.&lt;br /&gt;
&lt;br /&gt;
Trong nh&amp;aacute;y mắt cả dải La Ph&amp;ugrave; được bao phủ bởi một l&amp;agrave;n mưa bạc m&amp;ecirc;nh m&amp;ocirc;ng. C&amp;aacute;i loại cảnh sắc an nh&amp;agrave;n sung sướng thế n&amp;agrave;y, th&amp;igrave; những người đồng lứa với hắn kh&amp;oacute; c&amp;oacute; thể nh&amp;igrave;n thấy. Tuy nhi&amp;ecirc;n khung cảnh thơ mộng đ&amp;oacute; nhanh ch&amp;oacute;ng bị mưa gi&amp;oacute; x&amp;oacute;i m&amp;ograve;n. Sau khi nở nụ cười khổ, thiếu ni&amp;ecirc;n cắn răng đứng dậy bắt đầu t&amp;igrave;m kiếm trong sơn động.&lt;br /&gt;
&lt;br /&gt;
Ngoại trừ gần cửa động bị mưa l&amp;agrave;m ướt ra, trong sơn động ho&amp;agrave;n to&amp;agrave;n kh&amp;ocirc; r&amp;aacute;o kh&amp;ocirc;ng hề c&amp;oacute; rắn rết. L&amp;uacute;c đầu từ ngo&amp;agrave;i đi v&amp;agrave;o rất hẹp nhưng sau đ&amp;oacute; sơn động lại c&amp;agrave;ng th&amp;ecirc;m rộng r&amp;atilde;i. Thiếu ni&amp;ecirc;n lần theo v&amp;aacute;ch đ&amp;aacute; đi ngược v&amp;agrave;o trong th&amp;igrave; thấy động rộng r&amp;atilde;i hẳn ra, trước mắt hắn l&amp;agrave; một c&amp;aacute;i động rộng mấy chục thước. Trong n&amp;agrave;y c&amp;oacute; lỗ thủng xuy&amp;ecirc;n tới tận đỉnh n&amp;uacute;i, &amp;aacute;nh s&amp;aacute;ng trong động ch&amp;iacute;nh l&amp;agrave; nhờ c&amp;aacute;i lỗ n&amp;agrave;y. thiếu ni&amp;ecirc;n ngẩn người liền hiểu ra được tại sao trong sơn động ngoại trừ ngo&amp;agrave;i cửa động c&amp;oacute; kh&amp;ocirc;ng kh&amp;iacute; ẩm mốc ra c&amp;ograve;n b&amp;ecirc;n trong th&amp;igrave; kh&amp;ocirc;ng. Nhất định l&amp;agrave; do gi&amp;oacute; n&amp;uacute;i thổi v&amp;agrave;o rồi lại qua lỗ th&amp;ocirc;ng hơi ra ngo&amp;agrave;i. Kh&amp;ocirc;ng kh&amp;iacute; được lưu động n&amp;ecirc;n mới c&amp;oacute; c&amp;aacute;i &amp;acirc;m thanh kỳ lạ kia.&lt;br /&gt;
&lt;br /&gt;
Dưới c&amp;aacute;i lỗ thủng c&amp;oacute; mấy bụi c&amp;acirc;y. Nước mưa nhỏ xuống l&amp;agrave;m vang l&amp;ecirc;n những tiếng động. Thiếu ni&amp;ecirc;n nh&amp;igrave;n quanh th&amp;igrave; thấy trong thạch động ngoại trừ non nửa l&amp;agrave; những tảng đ&amp;aacute; ra, hơn nửa c&amp;ograve;n lại hết sức bằng phẳng. Kh&amp;ocirc;ng ai ngờ trong c&amp;aacute;i động n&amp;agrave;y lại c&amp;oacute; một nơi như vậy khiến cho thiếu ni&amp;ecirc;n hết sức vui vẻ, thậm ch&amp;iacute; c&amp;ograve;n nghĩ tới cảnh khi thời tiết đẹp, &amp;aacute;nh nắng sẽ chiếu th&amp;agrave;nh một dải xuống đ&amp;uacute;ng bụi c&amp;acirc;y.&lt;br /&gt;
&lt;br /&gt;
- Kh&amp;ocirc;ng biết mấy c&amp;aacute;i tr&amp;aacute;i c&amp;acirc;y kia c&amp;oacute; thể ăn được kh&amp;ocirc;ng? - Thiếu ni&amp;ecirc;n chợt thấy trong mấy bụi c&amp;acirc;y c&amp;agrave;nh l&amp;aacute; ngăm đen, tr&amp;ecirc;n mỗi c&amp;agrave;nh c&amp;oacute; năm tới s&amp;aacute;u quả ch&amp;iacute;n mọng.&lt;br /&gt;
&lt;br /&gt;
Thiếu ni&amp;ecirc;n kh&amp;ocirc;ng nhịn được đang định đưa tay h&amp;aacute;i th&amp;igrave; chợt nghe thấy một &amp;acirc;m thanh ch&amp;oacute;i tai vọng tới từ b&amp;ecirc;n tr&amp;aacute;i.&lt;br /&gt;
&lt;br /&gt;
Tiếng động kia đột nhi&amp;ecirc;n vang l&amp;ecirc;n khiến cho thiếu ni&amp;ecirc;n kinh h&amp;atilde;i, vội v&amp;agrave;ng quay đầu lại. Ngay lập tức hắn to&amp;aacute;t mồ h&amp;ocirc;i khi nh&amp;igrave;n thấy bốn con mắt đỏ như lửa đang nh&amp;igrave;n m&amp;igrave;nh chằm chằm. M&amp;agrave; chủ nh&amp;acirc;n của bốn con mắt đ&amp;oacute; kh&amp;ocirc;ng ngờ lại l&amp;agrave; một con qu&amp;aacute;i vật c&amp;oacute; hai c&amp;aacute;i đầu giống như con người.&lt;br /&gt;
&lt;br /&gt;
Con qu&amp;aacute;i vật đ&amp;oacute; cao chừng ba thước, giống như một người đứng thẳng. Hai c&amp;aacute;i đầu của n&amp;oacute; c&amp;oacute; đầy đủ ngũ quan, t&amp;oacute;c hoa r&amp;acirc;m, n&amp;eacute;t mặt đầy nếp nhăn. Nếu như đ&amp;ocirc;i mắt nhỏ của n&amp;oacute; kh&amp;ocirc;ng c&amp;oacute; m&amp;agrave;u hồng th&amp;igrave; nh&amp;igrave;n cũng giống như một l&amp;atilde;o nh&amp;acirc;n xấu x&amp;iacute;, kh&amp;ocirc;ng tới mức đ&amp;aacute;ng sợ. Con qu&amp;aacute;i vật đ&amp;oacute; cũng c&amp;oacute; hai tay, hai ch&amp;acirc;n, c&amp;oacute; điều tay ch&amp;acirc;n n&amp;oacute; nh&amp;igrave;n rất g&amp;agrave;y yếu chẳng kh&amp;aacute;c g&amp;igrave; m&amp;oacute;ng g&amp;agrave; cuộn trước ngực. Khi n&amp;oacute; đứng thẳng th&amp;igrave; chống đỡ n&amp;oacute; l&amp;agrave; một c&amp;aacute;i đu&amp;ocirc;i vĩ đại giống như c&amp;aacute;i đu&amp;ocirc;i c&amp;aacute; sấu.&lt;br /&gt;
&lt;br /&gt;
Thiếu ni&amp;ecirc;n l&amp;ugrave;i lại hai bước, theo bản năng r&amp;uacute;t con đao cầm tay. N&amp;eacute;t mặt của qu&amp;aacute;i vật đột nhi&amp;ecirc;n trở n&amp;ecirc;n hung dữ, nhảy thẳng l&amp;ecirc;n tr&amp;ecirc;n v&amp;aacute;ch động rồi nh&amp;agrave;o xuống người thiếu ni&amp;ecirc;n. Thiếu ni&amp;ecirc;n giật m&amp;igrave;nh, lỗ ch&amp;acirc;n l&amp;ocirc;ng mở rộng. Hắn giơ đao ch&amp;eacute;m tới con qu&amp;aacute;i vật. Con qu&amp;aacute;i vật cũng kh&amp;ocirc;ng th&amp;egrave;m tr&amp;aacute;nh n&amp;eacute;, qu&amp;eacute;t c&amp;aacute;i đu&amp;ocirc;i một c&amp;aacute;i ngăn c&amp;acirc;y đao của thiếu ni&amp;ecirc;n lại. M&amp;agrave; c&amp;acirc;y đao của thiếu ni&amp;ecirc;n cũng chỉ để lại một vết m&amp;agrave;u trắng tr&amp;ecirc;n đu&amp;ocirc;i của n&amp;oacute;. Lực phản chấn qu&amp;aacute; mạnh khiến cho th&amp;acirc;n thể thiếu ni&amp;ecirc;n run run, hổ khẩu chảy đầy m&amp;aacute;u tươi, v&amp;agrave; con đao th&amp;igrave; rơi xuống dưới.&lt;br /&gt;
&lt;br /&gt;
Thiếu ni&amp;ecirc;n thuận thế lăn một v&amp;ograve;ng, cầm đ&amp;aacute; n&amp;eacute;m loạn l&amp;ecirc;n người con qu&amp;aacute;i vật. Qu&amp;aacute;i vật kh&amp;ocirc;ng kịp n&amp;eacute; tr&amp;aacute;nh, bị thiếu ni&amp;ecirc;n n&amp;eacute;m tr&amp;uacute;ng hai c&amp;aacute;i m&amp;agrave; th&amp;ecirc;m tức giận. Một tiếng động vang l&amp;ecirc;n, trước mặt thiếu ni&amp;ecirc;n đột nhi&amp;ecirc;n s&amp;aacute;ng ngời. Kh&amp;ocirc;ng ngờ con qu&amp;aacute;i vật phun ra một ch&amp;ugrave;m lửa hừng hực ẩn chứa kh&amp;iacute; thế mạnh mẽ. Thiếu ni&amp;ecirc;n n&amp;eacute;m tiếp ra một h&amp;ograve;n đ&amp;aacute; nhưng bị ngọn lửa đốt ch&amp;aacute;y.&lt;br /&gt;
&lt;br /&gt;
- C&amp;ograve;n biết phun lửa? - Thiếu ni&amp;ecirc;n kinh h&amp;atilde;i muốn chết chợt ph&amp;aacute;t hiện b&amp;ecirc;n cạnh kh&amp;ocirc;ng c&amp;ograve;n đ&amp;aacute;, hơn nữa hắn cũng đ&amp;atilde; hết sức, ngay cả sức đứng dậy cũng kh&amp;ocirc;ng c&amp;ograve;n.&lt;br /&gt;
&lt;br /&gt;
Tr&amp;ecirc;n đỉnh n&amp;uacute;i, Nguy&amp;ecirc;n Thi&amp;ecirc;n Y đứng trong mưa c&amp;oacute; ch&amp;uacute;t mơ hồ, c&amp;ocirc; độc, chẳng kh&amp;aacute;c g&amp;igrave; một n&amp;eacute;t b&amp;uacute;t vẽ l&amp;ecirc;n trang giấy. Tr&amp;ecirc;n thực tế từ ba mươi năm trước khi Nguy&amp;ecirc;n Thi&amp;ecirc;n Y đ&amp;oacute;n gi&amp;oacute; đứng tr&amp;ecirc;n v&amp;aacute;ch n&amp;uacute;i, l&amp;atilde;o Triệu Nam cũng c&amp;oacute; cảm gi&amp;aacute;c như vậy. L&amp;atilde;o lu&amp;ocirc;n nghĩ c&amp;oacute; một ng&amp;agrave;y y sẽ h&amp;oacute;a gi&amp;oacute; m&amp;agrave; đi. L&amp;atilde;o Triệu Nam biết khi đ&amp;oacute; Nguy&amp;ecirc;n Thi&amp;ecirc;n Y đ&amp;atilde; đứng tr&amp;ecirc;n đỉnh kim tự th&amp;aacute;p của c&amp;aacute;i thế giới n&amp;agrave;y. Người như y trong số những người tu đạo kh&amp;aacute;c chưa hề xuất hiện. C&amp;oacute; điều M&amp;acirc;u X&amp;aacute; ch&amp;acirc;u ch&amp;iacute;nh l&amp;agrave; sự r&amp;agrave;ng buộc của y. C&amp;ograve;n c&amp;aacute;i x&amp;iacute;ch sắc v&amp;agrave; độ cao của ngọn n&amp;uacute;i v&amp;ocirc; danh n&amp;agrave;y ch&amp;iacute;nh l&amp;agrave; thứ quy định m&amp;agrave; y đưa ra cho thiếu ni&amp;ecirc;n. Y cũng kh&amp;ocirc;ng cho ph&amp;eacute;p bất cứ thứ n&amp;agrave;o kh&amp;aacute;c thay đổi quy định của m&amp;igrave;nh.&lt;br /&gt;
&lt;br /&gt;
- L&amp;agrave;m c&amp;agrave;n!&lt;br /&gt;
&lt;br /&gt;
Trong mưa gi&amp;oacute;, Nguy&amp;ecirc;n Thi&amp;ecirc;n Y chợt thốt l&amp;ecirc;n hai chữ đ&amp;oacute;. B&amp;agrave;n tay y đưa ra như đ&amp;oacute;n l&amp;agrave;n mưa từ tr&amp;ecirc;n bầu trời rơi xuống. Một đạo kiếm quang m&amp;agrave;u đỏ chợt xuất hiện từ tr&amp;ecirc;n đỉnh n&amp;uacute;i nhanh ch&amp;oacute;ng lao xuống.&lt;br /&gt;
&lt;br /&gt;
Chỉ cần nh&amp;igrave;n vầng s&amp;aacute;ng đ&amp;oacute; c&amp;oacute; thể thấy kiếm uqnag đ&amp;oacute; kh&amp;ocirc;ng thể n&amp;agrave;o s&amp;aacute;nh với phi kiếm của Thục Sơn. Nhưng cũng giống như quy luật của n&amp;uacute;i La Ph&amp;ugrave;, c&amp;oacute; đ&amp;ocirc;i khi những thứ kh&amp;ocirc;ng hề g&amp;acirc;y ra sự ch&amp;uacute; &amp;yacute; lại c&amp;oacute; một sự nguy hiểm tr&amp;iacute; mạng.&lt;br /&gt;
&lt;br /&gt;
- Ta kh&amp;ocirc;ng thể chết. Kh&amp;oacute; khăn lắm mới c&amp;oacute; được một điểm dừng ch&amp;acirc;n m&amp;agrave; kh&amp;ocirc;ng ngờ lại c&amp;oacute; một con qu&amp;aacute;i vật thế n&amp;agrave;y.&lt;br /&gt;
&lt;br /&gt;
Trong động, thiếu ni&amp;ecirc;n nh&amp;igrave;n con qu&amp;aacute;i vật đang đ&amp;aacute;nh nhau với m&amp;igrave;nh m&amp;agrave; kh&amp;ocirc;ng cam l&amp;ograve;ng. Trong t&amp;iacute;ch tắc, đ&amp;ocirc;i mắt của hắn vằn đỏ giống như một con s&amp;oacute;i cho d&amp;ugrave; bị thương cũng phải d&amp;ugrave;ng h&amp;agrave;m răng của m&amp;igrave;nh cắn x&amp;eacute; đối thủ.&lt;br /&gt;
&lt;br /&gt;
- L&amp;agrave;m c&amp;agrave;n! - Nhưng cũng l&amp;uacute;c đ&amp;oacute; &amp;acirc;m thanh của Nguy&amp;ecirc;n Thi&amp;ecirc;n Y cuồn cuộn như tiếng sấm từ tr&amp;ecirc;n cao vọng xuống.&lt;br /&gt;
&lt;br /&gt;
Đao kiếm quang m&amp;agrave;u đỏ kia kh&amp;ocirc;ng ngờ c&amp;ograve;n nhanh hơn cả &amp;acirc;m thanh.&lt;br /&gt;
&lt;br /&gt;
Hai tai của thiếu ni&amp;ecirc;n vừa mới &amp;ugrave; đi th&amp;igrave; kiếm quang m&amp;agrave;u đỏ cũng xuất hiện trong tầm mắt, lao thẳng v&amp;agrave;o con qu&amp;aacute;i vật.&lt;/p&gt;
', 1, CAST(0x0000ADEF0112BE04 AS DateTime), CAST(0x0000ADEF0112BE04 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (3115, 4101, 2042, N'Chương 7: Rặng núi La Phù trải dài trước mắt', N'&lt;p&gt;Kiếm quang vừa mới từ cửa động xuy&amp;ecirc;n v&amp;agrave;o, con qu&amp;aacute;i vật liền c&amp;oacute; cảm gi&amp;aacute;c gần như tắc thở, giống như sự nguy hiểm của thi&amp;ecirc;n tai mang tới.&lt;br /&gt;
&lt;br /&gt;
Trong nh&amp;aacute;y mắt, những nếp nhăn s&amp;acirc;u tr&amp;ecirc;n mặt con qu&amp;aacute;i vật như mở ra. &amp;quot;Ph&amp;ugrave;!&amp;quot; Hai c&amp;aacute;i đầu của n&amp;oacute; liền h&amp;aacute; miệng phun ra ngọn lửa. Hai luồng lửa đ&amp;oacute; so với vừa rồi c&amp;ograve;n mạnh hơn nhiều khiến cho kh&amp;ocirc;ng kh&amp;iacute; trong động tưởng chừng bị bốc ch&amp;aacute;y.&lt;br /&gt;
&lt;br /&gt;
Nhưng đạo kiếm quang dường như ngay cả kh&amp;ocirc;ng gian c&amp;ograve;n c&amp;oacute; tể cắt nhỏ đ&amp;oacute; liền cắt đứt ngọn lửa. Một tia s&amp;aacute;ng l&amp;oacute;e l&amp;ecirc;n, một trong hai c&amp;aacute;i đầu con qu&amp;aacute;i vật bay l&amp;ecirc;n cao.&lt;br /&gt;
&lt;br /&gt;
M&amp;aacute;u tươi từ cổ con qu&amp;aacute;i vật phun mạnh l&amp;ecirc;n cao, kh&amp;ocirc;ng ngờ lại c&amp;oacute; s&amp;aacute;u m&amp;agrave;u. Con qu&amp;aacute;i vật đau đớn g&amp;agrave;o l&amp;ecirc;n, c&amp;aacute;i đu&amp;ocirc;i c&amp;aacute; sấu vĩ đại của n&amp;oacute; quật l&amp;ecirc;n mặt đất khiến cho đ&amp;aacute; vụn bay tứ tung.&lt;br /&gt;
&lt;br /&gt;
Nhưng thiếu ni&amp;ecirc;n dường như qu&amp;ecirc;n mất con qu&amp;aacute;i vật đang ở ngay b&amp;ecirc;n cạnh. &amp;Aacute;nh mắt của hắn chỉ nh&amp;igrave;n kh&amp;ocirc;ng chớp mắt v&amp;agrave;o đạo phi kiếm kia.&lt;br /&gt;
&lt;br /&gt;
&amp;Aacute;nh s&amp;aacute;ng của n&amp;oacute; chỉ mới l&amp;oacute;e l&amp;ecirc;n m&amp;agrave; con qu&amp;aacute;i vật kinh khủng kia đ&amp;atilde; bị ch&amp;eacute;m mất một c&amp;aacute;i đầu.&lt;br /&gt;
&lt;br /&gt;
&amp;quot;Cho tới khi n&amp;agrave;o th&amp;igrave; ta mới c&amp;oacute; được lực lượng, t&amp;agrave;i năng như những người đ&amp;oacute; c&amp;oacute; được kiếm quang m&amp;agrave; kh&amp;ocirc;ng phải đứng từ dưới đất nh&amp;igrave;n l&amp;ecirc;n?&amp;quot;&lt;br /&gt;
&lt;br /&gt;
Thiếu ni&amp;ecirc;n nh&amp;igrave;n đạo kiếm quang đ&amp;oacute; tr&amp;agrave;n ngập rung động. Đạo kiếm quang lượn th&amp;ecirc;m một v&amp;ograve;ng rồi lại ch&amp;eacute;m xuống con qu&amp;aacute;i vật.&lt;br /&gt;
&lt;br /&gt;
Vầng &amp;aacute;nh s&amp;aacute;ng hạ xuống. Thiếu ni&amp;ecirc;n quan s&amp;aacute;t thấy tr&amp;ecirc;n người con qu&amp;aacute;i vật nhuộm đầy m&amp;aacute;u tươi s&amp;aacute;u m&amp;agrave;u hết sức đ&amp;aacute;ng sợ nhưng trong đ&amp;ocirc;i mắt của n&amp;oacute; lại đầy sự sợ h&amp;atilde;i v&amp;agrave; cầu xin. Hai tay n&amp;oacute; khoanh trước ngực li&amp;ecirc;n tục thở d&amp;agrave;i. Thiếu ni&amp;ecirc;n c&amp;oacute; cảm gi&amp;aacute;c con qu&amp;aacute;i vật đ&amp;aacute;ng sợ giống như một đứa b&amp;eacute; l&amp;agrave;m sai chuyện g&amp;igrave; đ&amp;oacute; đang xin lỗi. Thiếu ni&amp;ecirc;n sống khổ từ nhỏ n&amp;ecirc;n nh&amp;igrave;n thấy vậy liền c&amp;oacute; một sự đồng cảm. Mắt thấy kiếm quang gi&amp;aacute;ng xuống, thiếu ni&amp;ecirc;n theo bản năng chắn trước mặt con qu&amp;aacute;i vật.&lt;br /&gt;
&lt;br /&gt;
- Đồ ngu.&lt;br /&gt;
&lt;br /&gt;
Phi kiếm của Nguy&amp;ecirc;n Thi&amp;ecirc;n Y nhanh tới mức n&amp;agrave;o? Khi thiếu ni&amp;ecirc;n vừa mới chắn trước mặt con qu&amp;aacute;i vật th&amp;igrave; kiếm quang đ&amp;atilde; chạm v&amp;agrave;o lồng ngực của hắn. Cũng may phi kiếm v&amp;agrave; Nguy&amp;ecirc;n Thi&amp;ecirc;n Y tương th&amp;ocirc;ng với nhau nhưng cho d&amp;ugrave; thu lại kịp thời th&amp;igrave; cũng su&amp;yacute;t ch&amp;uacute;t nữa ch&amp;eacute;m thiếu ni&amp;ecirc;n ra l&amp;agrave;m hai đoạn.&lt;br /&gt;
&lt;br /&gt;
- N&amp;oacute; muốn giết người vậy m&amp;agrave; ngươi lại muốn cứu n&amp;oacute;. Nếu như vậy th&amp;igrave; mặc kệ ngươi.&lt;br /&gt;
&lt;br /&gt;
Trong cơn giận dữ, Nguy&amp;ecirc;n Thi&amp;ecirc;n Y liền thu hồi phi kiếm, mặc kệ sinh tử của thiếu ni&amp;ecirc;n.&lt;br /&gt;
&lt;br /&gt;
Những mảnh đ&amp;aacute; vỡ vụn cuồn cuộn rơi xuống. Trong cơn tức giận, Nguy&amp;ecirc;n Thi&amp;ecirc;n Y để cho phi kiếm xuy&amp;ecirc;n thẳng qua đỉnh n&amp;uacute;i. C&amp;aacute;i đỉnh sơn động toản l&amp;agrave; đ&amp;aacute; nham thạch cứng rắn vậy m&amp;agrave; bị kiếm quang của y cắt qua chẳng kh&amp;aacute;c n&amp;agrave;o miếng đậu kh&amp;ocirc;ng hề c&amp;oacute; một ch&amp;uacute;t trở ngại, trong nh&amp;aacute;y mắt đ&amp;atilde; xuy&amp;ecirc;n l&amp;ecirc;n tới đỉnh. Thiếu ni&amp;ecirc;n nghi&amp;ecirc;m mặt lại nghĩ thầm &amp;quot;nếu phi kiếm đ&amp;oacute; m&amp;agrave; ch&amp;eacute;m tới th&amp;igrave; cho d&amp;ugrave; m&amp;igrave;nh c&amp;oacute; l&amp;agrave;m bằng sắt cũng phải đứt l&amp;agrave;m hai đoạn.&amp;quot; Đột nhi&amp;ecirc;n thiếu ni&amp;ecirc;n cảm thấy trước ngực đau nh&amp;oacute;i. C&amp;uacute;i đầu xuống hắn mới ph&amp;aacute;t hiện m&amp;aacute;u tươi chảy đầm đ&amp;igrave;a. H&amp;oacute;a ra, cho d&amp;ugrave; Nguy&amp;ecirc;n Thi&amp;ecirc;n Y thu hồi phi kiếm trong nh&amp;aacute;y mắt th&amp;igrave; kiếm quang của n&amp;oacute; cũng vạch l&amp;ecirc;n tr&amp;ecirc;n ngực hắn một vết thương nhẹ.&lt;br /&gt;
&lt;br /&gt;
Dưới những động t&amp;aacute;c lu&amp;acirc;n phi&amp;ecirc;n, th&amp;acirc;n m&amp;igrave;nh của thiếu ni&amp;ecirc;n lảo đảo sắp ng&amp;atilde;, lại th&amp;ecirc;m một vết thương n&amp;agrave;y nữa khiến cho hai ch&amp;acirc;n hắn mềm nhũn, trời đất quay cuồng. Bị vết thương t&amp;aacute;c động, thiếu ni&amp;ecirc;n kh&amp;ocirc;ng nhịn được phải r&amp;ecirc;n l&amp;ecirc;n một tiếng.&lt;br /&gt;
&lt;br /&gt;
- Kh&amp;ocirc;ng biết ta cứu con qu&amp;aacute;i vật n&amp;agrave;y n&amp;oacute; c&amp;oacute; định giết ta hay kh&amp;ocirc;ng?&lt;br /&gt;
&lt;br /&gt;
&amp;Yacute; nghĩ đ&amp;oacute; xuất hiện trong đầu của thiếu ni&amp;ecirc;n. Khi hắn quay đầu lại nh&amp;igrave;n con qu&amp;aacute;i vật th&amp;igrave; ph&amp;aacute;t hiện ra n&amp;oacute; đ&amp;atilde; bị kiếm quang của Nguy&amp;ecirc;n Thi&amp;ecirc;n Y l&amp;agrave;m cho sợ h&amp;atilde;i, r&amp;uacute;c v&amp;agrave;o một g&amp;oacute;c động m&amp;agrave; run như cầy sấy.&lt;br /&gt;
&lt;br /&gt;
Thấy con qu&amp;aacute;i vật đ&amp;aacute;ng thương như vậy, thiếu ni&amp;ecirc;n lại xuất hiện sự đồng cảm m&amp;agrave; l&amp;ecirc;n tiếng an ủi:&lt;br /&gt;
&lt;br /&gt;
- Ngươi đừng sợ. Ng&amp;agrave;i l&amp;agrave; nh&amp;acirc;n vật tuyệt thế trong thế gian. Nếu ng&amp;agrave;i đ&amp;atilde; n&amp;oacute;i kh&amp;ocirc;ng giết ngươi th&amp;igrave; chắc chắn kh&amp;ocirc;ng ra tay nữa.&lt;br /&gt;
&lt;br /&gt;
Thiếu ni&amp;ecirc;n v&amp;ocirc; c&amp;ugrave;ng t&amp;ocirc;n k&amp;iacute;nh Nguy&amp;ecirc;n Thi&amp;ecirc;n Y. Nhưng trước khi được Nguy&amp;ecirc;n Thi&amp;ecirc;n Y thu l&amp;agrave;m đồ đệ th&amp;igrave; hắn chỉ c&amp;oacute; thể d&amp;ugrave;ng từ ng&amp;agrave;i m&amp;agrave; thay thế cho chữ sư phụ.&lt;br /&gt;
&lt;br /&gt;
Con qu&amp;aacute;i vật như hiểu được lời n&amp;oacute;i của hắn m&amp;agrave; th&amp;ocirc;i run rẩy, tuy nhi&amp;ecirc;n &amp;aacute;nh mắt của n&amp;oacute; vẫn c&amp;ograve;n sự sợ h&amp;atilde;i như trước.&lt;br /&gt;
&lt;br /&gt;
Vết thương của thiếu ni&amp;ecirc;n l&amp;agrave;m cho hắn đau đớn, ngực chảy m&amp;aacute;u m&amp;atilde;i kh&amp;ocirc;ng dừng. Hắn cũng chẳng c&amp;ograve;n t&amp;acirc;m tr&amp;iacute; để &amp;yacute; tới con qu&amp;aacute;i vật, x&amp;eacute; chỗ quần &amp;aacute;o r&amp;aacute;ch m&amp;agrave; bắt đầu băng b&amp;oacute; vết thương. Đợi cho tới khi vết thương cầm m&amp;aacute;u, thiếu ni&amp;ecirc;n hết sức ng&amp;atilde; ra đất. Ước chừng mấy n&amp;eacute;n hương, thiếu ni&amp;ecirc;n nghe thấy c&amp;oacute; tiếng động. Th&amp;igrave; ra l&amp;agrave; con qu&amp;aacute;i vật đi tới b&amp;ecirc;n cạnh hắn.&lt;br /&gt;
&lt;br /&gt;
Mặc d&amp;ugrave; bị ch&amp;eacute;m mất một c&amp;aacute;i đầu nhưng con qu&amp;aacute;i vật cũng kh&amp;ocirc;ng lo tới t&amp;iacute;nh mạng. M&amp;aacute;u ở vết thương của n&amp;oacute; đ&amp;atilde; được cầm. Đ&amp;ocirc;i mắt đỏ như lửa của n&amp;oacute; li&amp;ecirc;n tục xoay chuyển, mấp m&amp;aacute;y, nh&amp;igrave;n cực kỳ hung &amp;aacute;c.&lt;br /&gt;
&lt;br /&gt;
- Ngươi định giết ta sao? Hiện tại nếu ngươi định giết ta, ta cũng chẳng c&amp;oacute; sức chống cự. Muốn giết th&amp;igrave; giết đi. - Thấy con qu&amp;aacute;i vật như vậy, thiếu ni&amp;ecirc;n đang nằm tr&amp;ecirc;n mặt đất chỉ biết cười khổ.&lt;br /&gt;
&lt;br /&gt;
&amp;quot;T&amp;ecirc; t&amp;ecirc;&amp;quot; con qu&amp;aacute;i vật nh&amp;igrave;n hắn một l&amp;uacute;c rồi đột nhi&amp;ecirc;n thở d&amp;agrave;i v&amp;agrave; li&amp;ecirc;n tục gật đầu với thiếu ni&amp;ecirc;n.&lt;br /&gt;
&lt;br /&gt;
- H&amp;oacute;a ra ngươi muốn tạ ơn ta chứ kh&amp;ocirc;ng phải giết ta? - Thiếu ni&amp;ecirc;n ngẩn người rồi lập tức lắc đầu:&lt;br /&gt;
&lt;br /&gt;
- Kh&amp;ocirc;ng cần phải cảm ơn ta. Ngươi bị ch&amp;eacute;m mất một c&amp;aacute;i đầu c&amp;oacute; bị thương nặng kh&amp;ocirc;ng? Tr&amp;aacute;i c&amp;acirc;y n&amp;agrave;y l&amp;agrave; của ngươi sao? Ta cũng kh&amp;ocirc;ng muốn cướp m&amp;agrave; do chưa thấy bao giờ n&amp;ecirc;n t&amp;ograve; m&amp;ograve; muốn h&amp;aacute;i một tr&amp;aacute;i để xem m&amp;agrave; th&amp;ocirc;i.&lt;br /&gt;
&lt;br /&gt;
- T&amp;ecirc; t&amp;ecirc;.&lt;br /&gt;
&lt;br /&gt;
Thiếu ni&amp;ecirc;n n&amp;oacute;i xong mới nghĩ ra con qu&amp;aacute;i vật kh&amp;ocirc;ng hiểu được ng&amp;ocirc;n ngữ. N&amp;agrave;o ngờ n&amp;oacute; như hiểu được lời n&amp;oacute;i của hắn m&amp;agrave; khoa ch&amp;acirc;n m&amp;uacute;a tay l&amp;agrave;m cho thiếu ni&amp;ecirc;n kh&amp;ocirc;ng nhịn được m&amp;agrave; bật cười.&lt;br /&gt;
&lt;br /&gt;
Nụ cười của thiếu ni&amp;ecirc;n l&amp;agrave;m cho con qu&amp;aacute;i vật xấu hổ, cuộn tay lại g&amp;atilde;i mấy c&amp;aacute;i l&amp;ocirc;ng c&amp;ograve;n s&amp;oacute;t tr&amp;ecirc;n đầu. C&amp;aacute;i động t&amp;aacute;c của n&amp;oacute; lại c&amp;agrave;ng th&amp;ecirc;m buồn cười khiến cho thiếu ni&amp;ecirc;n kh&amp;ocirc;ng nhịn được m&amp;agrave; bật cười ha hả. Con qu&amp;aacute;i vật cũng nhếch miệng m&amp;agrave; cười theo. Nhất thời trong mắt thiếu ni&amp;ecirc;n, n&amp;oacute; kh&amp;ocirc;ng c&amp;ograve;n c&amp;oacute; cảm gi&amp;aacute;c gh&amp;ecirc; tởm nữa.&lt;br /&gt;
&lt;br /&gt;
- Ngươi ở đ&amp;acirc;y sao?&lt;br /&gt;
&lt;br /&gt;
- Nơi n&amp;agrave;y l&amp;agrave; nh&amp;agrave; của ngươi, c&amp;oacute; thể cho ta ở lại th&amp;ecirc;m một đ&amp;ecirc;m kh&amp;ocirc;ng? Thật sự b&amp;acirc;y giờ ta kh&amp;ocirc;ng c&amp;ograve;n sức nữa.&lt;br /&gt;
&lt;br /&gt;
Thiếu ni&amp;ecirc;n n&amp;oacute;i với con qu&amp;aacute;i vật m&amp;agrave; cũng kh&amp;ocirc;ng biết n&amp;oacute; c&amp;oacute; nghe hiểu hay kh&amp;ocirc;ng. Khi sức khỏe của hắn hơi hồi phục lại một ch&amp;uacute;t mới từ từ ngồi dậy. Con qu&amp;aacute;i vật chợt đưa b&amp;agrave;n tay, n&amp;acirc;ng một c&amp;aacute;i c&amp;acirc;y nhỏ m&amp;agrave;u xanh biếc tới trước mặt thiếu ni&amp;ecirc;n.&lt;br /&gt;
&lt;br /&gt;
- Đ&amp;acirc;y l&amp;agrave; c&amp;aacute;i g&amp;igrave;? - Thiếu ni&amp;ecirc;n chỉ thấy c&amp;aacute;i c&amp;acirc;y xanh biếc đ&amp;oacute; nh&amp;igrave;n kh&amp;ocirc;ng c&amp;oacute; g&amp;igrave; lạ, chỉ c&amp;oacute; điều rễ c&amp;acirc;y của n&amp;oacute; vẫn c&amp;ograve;n nguy&amp;ecirc;n vẹn, như được nhổ l&amp;ecirc;n một c&amp;aacute;ch cẩn thận.&lt;br /&gt;
&lt;br /&gt;
- A? - Qua ph&amp;acirc;n quang k&amp;iacute;nh, vừa thấy con qu&amp;aacute;i vật đưa gốc c&amp;acirc;y đ&amp;oacute;, Nguy&amp;ecirc;n Thi&amp;ecirc;n Y cũng giật m&amp;igrave;nh. Đ&amp;ocirc;i mắt m&amp;agrave;u hổ ph&amp;aacute;ch của l&amp;atilde;o Triệu Nam cũng l&amp;oacute;e l&amp;ecirc;n một tia s&amp;aacute;ng:&lt;br /&gt;
&lt;br /&gt;
- Cỏ Ti&amp;ecirc;m t&amp;acirc;y?&lt;br /&gt;
&lt;br /&gt;
- Kh&amp;ocirc;ng thể ngờ được một thứ động vật hoang d&amp;atilde; ở hậu sơn m&amp;agrave; cũng biết b&amp;aacute;o &amp;acirc;n. - Nguy&amp;ecirc;n Thi&amp;ecirc;n Y kh&amp;ocirc;ng trả lời l&amp;atilde;o Triệu Nam m&amp;agrave; hừ một tiếng rồi ph&amp;acirc;n quang k&amp;iacute;nh lập tức biến mất.&lt;br /&gt;
&lt;br /&gt;
Những nếp nhăn tr&amp;ecirc;n mặt l&amp;atilde;o Triệu Nam gi&amp;atilde;n ra m&amp;agrave; nở nụ cười:&lt;br /&gt;
&lt;br /&gt;
- Chủ nh&amp;acirc;n! Cho d&amp;ugrave; đẹp hay xấu th&amp;igrave; cũng c&amp;oacute; thể ph&amp;acirc;n biệt thiện &amp;aacute;c. Đ&amp;acirc;y cũng l&amp;agrave; sự kh&amp;aacute;c biệt giữa chủ nh&amp;acirc;n v&amp;agrave; những người b&amp;ecirc;n ngo&amp;agrave;i.&lt;br /&gt;
&lt;br /&gt;
Nguy&amp;ecirc;n Thi&amp;ecirc;n Y trầm lặng kh&amp;ocirc;ng n&amp;oacute;i, từ từ ngửa đầu l&amp;ecirc;n nh&amp;igrave;n trời. Cơn mưa bụi m&amp;ugrave; mịt trong mắt y lại c&amp;oacute; được rất nhiều sự thay đổi &amp;yacute; vị m&amp;agrave; người kh&amp;aacute;c kh&amp;ocirc;ng nh&amp;igrave;n được, nhưng vẫn như trước kh&amp;ocirc;ng nh&amp;igrave;n r&amp;otilde; nh&amp;acirc;n quả của thế gian.&lt;br /&gt;
&lt;br /&gt;
Thiếu ni&amp;ecirc;n quan s&amp;aacute;t c&amp;aacute;i c&amp;acirc;y nhỏ m&amp;agrave;u xanh biếc m&amp;agrave; con qu&amp;aacute;i vật đưa th&amp;igrave; ph&amp;aacute;t hiện n&amp;oacute; li&amp;ecirc;n tục hoa ch&amp;acirc;n m&amp;uacute;a tay, hai tay li&amp;ecirc;n tục chỉ v&amp;agrave;o miệng. Thiếu ni&amp;ecirc;n thấy vậy th&amp;igrave; hơi ngạc nhi&amp;ecirc;n:&lt;br /&gt;
&lt;br /&gt;
- Ngươi định bảo ta ăn c&amp;aacute;i n&amp;agrave;y c&amp;oacute; phải kh&amp;ocirc;ng?&lt;br /&gt;
&lt;br /&gt;
Nghe thiếu ni&amp;ecirc;n n&amp;oacute;i vậy, con qu&amp;aacute;i vật vừa thốt l&amp;ecirc;n những tiếng t&amp;ecirc; t&amp;ecirc; đồng thời gật đầu li&amp;ecirc;n tục.&lt;br /&gt;
&lt;br /&gt;
- C&amp;aacute;i thứ n&amp;agrave;y d&amp;ugrave;ng l&amp;agrave;m sao? - Thiếu ni&amp;ecirc;n hỏi lại. Con qu&amp;aacute;i vật liền khoa tay m&amp;uacute;a ch&amp;acirc;n. Do l&amp;uacute;c trước bị lừa ăn m&amp;acirc;u x&amp;aacute; ch&amp;acirc;u n&amp;ecirc;n hiện tại thiếu ni&amp;ecirc;n hơi do dự. Nhưng nh&amp;igrave;n con qu&amp;aacute;i vật khoa ch&amp;acirc;n m&amp;uacute;a tay li&amp;ecirc;n tục, &amp;aacute;nh mắt lại hết sức ch&amp;acirc;n th&amp;agrave;nh, thiếu ni&amp;ecirc;n do dự một ch&amp;uacute;t liền đặt c&amp;aacute;i c&amp;acirc;y v&amp;agrave;o miệng. C&amp;aacute;i c&amp;acirc;y đ&amp;oacute; khi nhai c&amp;oacute; vị hơi chua cộng với một ch&amp;uacute;t g&amp;igrave; đ&amp;oacute; tanh h&amp;ocirc;i. Khi ăn xong kh&amp;ocirc;ng hề c&amp;oacute; cảm gi&amp;aacute;c g&amp;igrave; nhưng một l&amp;aacute;t sau, một d&amp;ograve;ng nước ấm đột nhi&amp;ecirc;n bốc l&amp;ecirc;n từ trong bụng giống như một ngọn lửa lan ra khắp cơ thể, cuối c&amp;ugrave;ng tập trung v&amp;agrave;o n&amp;atilde;o. Một tiếng ổ vang l&amp;ecirc;n, thiếu ni&amp;ecirc;n kh&amp;ocirc;ng nhịn được k&amp;ecirc;u l&amp;ecirc;n một tiếng, thở ra một l&amp;agrave;n kh&amp;oacute;i trắng.&lt;br /&gt;
&lt;br /&gt;
Điều khiến cho thiếu ni&amp;ecirc;n giật m&amp;igrave;nh đ&amp;oacute; l&amp;agrave; to&amp;agrave;n th&amp;acirc;n như được ng&amp;acirc;m trong d&amp;ograve;ng nước ấm. Chỉ mới một l&amp;aacute;t thiếu ni&amp;ecirc;n đ&amp;atilde; cảm th&amp;acirc;y sảng kho&amp;aacute;i hơn nhiều khiến cho hắn nhảy l&amp;ecirc;n. Mới nhảy l&amp;ecirc;n, hắn chợt lắp bắp khi thấy m&amp;igrave;nh đạt tới độ cao một trượng. C&amp;ograve;n khi rơi xuống mặt đất, mặc d&amp;ugrave; vết thương lại chảy m&amp;aacute;u nhưng hắn vẫn cảm gi&amp;aacute;c bản th&amp;acirc;n khỏe mạnh b&amp;igrave;nh thường.&lt;br /&gt;
&lt;br /&gt;
- C&amp;aacute;i n&amp;agrave;y l&amp;agrave; thứ g&amp;igrave; m&amp;agrave; thần kỳ như vậy?&lt;br /&gt;
&lt;br /&gt;
Thiếu ni&amp;ecirc;n vừa mừng vừa lo, duỗi tay duỗi ch&amp;acirc;n m&amp;agrave; thốt l&amp;ecirc;n.&lt;/p&gt;
', 1, CAST(0x0000ADEF0112DB4C AS DateTime), CAST(0x0000ADEF0112DB4C AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (3116, 4101, 2042, N'Chương 8: Kiếp nạn lớn. Ma Ha Già La mật pháp', N'&lt;p&gt;Con qu&amp;aacute;i vật vừa k&amp;ecirc;u vừa khoa ch&amp;acirc;n m&amp;uacute;a tay như trước nhưng kh&amp;ocirc;ng thể hiểu được n&amp;oacute; n&amp;oacute;i c&amp;aacute;i g&amp;igrave;. C&amp;oacute; điều cũng c&amp;oacute; thể thấy rằng n&amp;oacute; đang rất vui.&lt;br /&gt;
&lt;br /&gt;
- Chuyện n&amp;agrave;y ta lại phải cảm tạ ngươi. - Trong l&amp;ograve;ng thiếu ni&amp;ecirc;n tr&amp;agrave;n ngập sự vui mừng, v&amp;aacute;i ch&amp;agrave;o con qu&amp;aacute;i vật.&lt;br /&gt;
&lt;br /&gt;
- Ngươi cho ta ăn thứ n&amp;agrave;y th&amp;igrave; h&amp;ocirc;m nay ta c&amp;oacute; khả năng l&amp;ecirc;n được tới đỉnh n&amp;uacute;i.&lt;br /&gt;
&lt;br /&gt;
Nghe thiếu ni&amp;ecirc;n nhắc tới hai chữ đỉnh n&amp;uacute;i, con qu&amp;aacute;i vật dường như sợ h&amp;atilde;i, rụt đầu rụt cổ lại. Thiếu ni&amp;ecirc;n cuống qu&amp;yacute;t xua tay n&amp;oacute;i:&lt;br /&gt;
&lt;br /&gt;
- Đừng sợ! Ng&amp;agrave;i l&amp;agrave; người tốt. Chỉ v&amp;igrave; lo ta bị thương n&amp;ecirc;n mới l&amp;agrave;m ngươi bị thương th&amp;ocirc;i.&lt;br /&gt;
&lt;br /&gt;
Con qu&amp;aacute;i vật k&amp;ecirc;u l&amp;ecirc;n mấy tiếng rồi khoa ch&amp;acirc;n m&amp;uacute;a tay dường như vẫn sợ h&amp;atilde;i. N&amp;oacute; cẩn thận h&amp;aacute;i tr&amp;aacute;i c&amp;acirc;y tr&amp;ecirc;n bụi c&amp;acirc;y ngăm đen rồi ngậm v&amp;agrave;o miệng. Bất chấp thiếu ni&amp;ecirc;n giải th&amp;iacute;ch với n&amp;oacute; như thế n&amp;agrave;o th&amp;igrave; n&amp;oacute; vẫn li&amp;ecirc;n tục thở d&amp;agrave;i với thiếu ni&amp;ecirc;n rồi chạy ra khỏi động theo c&amp;aacute;i x&amp;iacute;ch sắt m&amp;agrave; b&amp;ograve; xuống rồi biến mất.&lt;br /&gt;
&lt;br /&gt;
L&amp;uacute;c n&amp;agrave;y trận mưa to đ&amp;atilde; ngừng nhưng sợi x&amp;iacute;ch sắt vẫn hơi trơn, nhưng sức khỏe của thiếu ni&amp;ecirc;n tăng l&amp;ecirc;n rất nhiều v&amp;igrave; vậy m&amp;agrave; hắn định nhanh ch&amp;oacute;ng tr&amp;egrave;o l&amp;ecirc;n n&amp;uacute;i, sợ nguồn sức mạnh đ&amp;oacute; lại biến mất. V&amp;igrave; vậy sau khi thấy con qu&amp;aacute;i vật biến mất, hắn liền tiếp tục b&amp;ograve; l&amp;ecirc;n cao.&lt;br /&gt;
&lt;br /&gt;
L&amp;uacute;c đầu thiếu ni&amp;ecirc;n c&amp;ograve;n lo m&amp;igrave;nh kh&amp;ocirc;ng đủ sức m&amp;agrave; rơi xuống nhưng c&amp;agrave;ng tr&amp;egrave;o l&amp;ecirc;n, hắn lại c&amp;agrave;ng thấy thoải m&amp;aacute;i, giống như tay ch&amp;acirc;n kh&amp;ocirc;ng hề d&amp;ugrave;ng hết sức. Thiếu ni&amp;ecirc;n c&amp;agrave;ng leo c&amp;agrave;ng nhanh rồi sau đ&amp;oacute; chẳng kh&amp;aacute;c n&amp;agrave;o một con nhện đang theo sợi tơ của m&amp;igrave;nh m&amp;agrave; l&amp;ecirc;n với tốc độ nhanh hơn l&amp;uacute;c đầu mấy lần.&lt;br /&gt;
&lt;br /&gt;
Đột nhi&amp;ecirc;n thiếu ni&amp;ecirc;n nh&amp;igrave;n thấy c&amp;aacute;i d&amp;acirc;y x&amp;iacute;ch buộc v&amp;agrave;o một tảng đ&amp;aacute;. Hắn liền nhảy l&amp;ecirc;n th&amp;igrave; ph&amp;aacute;t hiện m&amp;igrave;nh đang đứng tr&amp;ecirc;n đỉnh n&amp;uacute;i.&lt;br /&gt;
&lt;br /&gt;
Cả rặng La Ph&amp;ugrave; trải d&amp;agrave;i trước mắt của hắn.&lt;br /&gt;
&lt;br /&gt;
- Cuối c&amp;ugrave;ng th&amp;igrave; ta cũng l&amp;ecirc;n tới nơi. - Trong l&amp;uacute;c nhất thời, thiếu ni&amp;ecirc;n c&amp;oacute; v&amp;ocirc; v&amp;agrave;ng cảm x&amp;uacute;c v&amp;agrave; hưng phấn kh&amp;ocirc;ng thể kiềm chế được.&lt;br /&gt;
&lt;br /&gt;
Cho d&amp;ugrave; l&amp;agrave; bậc đế vương th&amp;igrave; cũng kh&amp;ocirc;ng thể tho&amp;aacute;t khỏi chữ tử. Chỉ c&amp;oacute; những người tu đạo l&amp;agrave; tho&amp;aacute;t khỏi sinh l&amp;atilde;o bệnh tử m&amp;agrave; trường sinh bất diệt.&lt;br /&gt;
&lt;br /&gt;
Trời c&amp;oacute; luật của trời, tất cả kh&amp;ocirc;ng ra ngo&amp;agrave;i sự uy nghi&amp;ecirc;m của n&amp;oacute;. Chỉ c&amp;oacute; những người tu đạo l&amp;agrave; theo đuổi lực lượng si&amp;ecirc;u nhi&amp;ecirc;n.&lt;br /&gt;
&lt;br /&gt;
Trời đất huyền diệu nhưng c&amp;oacute; một số người tu đạo truy t&amp;igrave;m căn nguy&amp;ecirc;n, hiểu thấu sự ảo diệu của vũ trụ.&lt;br /&gt;
&lt;br /&gt;
- Tại sao ngươi lại muốn ta nhận ngươi l&amp;agrave;m đồ đệ?&lt;br /&gt;
&lt;br /&gt;
L&amp;atilde;o Triệu Nam h&amp;iacute;p mắt, bu&amp;ocirc;ng th&amp;otilde;ng hai tay đứng sau lưng Nguy&amp;ecirc;n Thi&amp;ecirc;n Y. C&amp;ograve;n Nguy&amp;ecirc;n Thi&amp;ecirc;n Y th&amp;igrave; đứng trước mấy gian nh&amp;agrave; gỗ, hỏi người thiếu ni&amp;ecirc;n đứng trước mặt m&amp;igrave;nh.&lt;br /&gt;
&lt;br /&gt;
- Ngươi cầu c&amp;aacute;i g&amp;igrave;?&lt;br /&gt;
&lt;br /&gt;
Thiếu ni&amp;ecirc;n ngẩng đầu. Ph&amp;iacute;a sau rặng n&amp;uacute;i La Ph&amp;ugrave;, một đạo cầu vồng sau cơn mưa in bảy m&amp;agrave;u v&amp;agrave;o trong mắt hắn. C&amp;aacute;i cầu vồng đ&amp;oacute; giống như hai mỹ nh&amp;acirc;n v&amp;agrave; chiến long chu bảy m&amp;agrave;u kia, khiến cho &amp;aacute;nh mắt của thiếu ni&amp;ecirc;n th&amp;ecirc;m n&amp;oacute;ng bỏng.&lt;br /&gt;
&lt;br /&gt;
Trong l&amp;ograve;ng hắn c&amp;oacute; rất nhiều l&amp;yacute; do nhưng trời sinh t&amp;iacute;nh t&amp;igrave;nh của hắn vốn kh&amp;ocirc;ng th&amp;ocirc;ng minh lắm, bản th&amp;acirc;n lại kh&amp;ocirc;ng ăn n&amp;oacute;i kh&amp;eacute;o l&amp;oacute;e n&amp;ecirc;n chỉ biết nh&amp;igrave;n Nguy&amp;ecirc;n Thi&amp;ecirc;n Y m&amp;agrave; kh&amp;ocirc;ng trả lời được một c&amp;acirc;u n&amp;agrave;o cả.&lt;br /&gt;
&lt;br /&gt;
- Ngươi t&amp;ecirc;n l&amp;agrave; g&amp;igrave;? - Kh&amp;ocirc;ng c&amp;oacute; được c&amp;acirc;u trả lời, Nguy&amp;ecirc;n Thi&amp;ecirc;n Y cũng kh&amp;ocirc;ng th&amp;egrave;m để &amp;yacute; m&amp;agrave; hỏi tiếp.&lt;br /&gt;
&lt;br /&gt;
Thiếu ni&amp;ecirc;n lắc đầu:&lt;br /&gt;
&lt;br /&gt;
- Ta kh&amp;ocirc;ng c&amp;oacute; t&amp;ecirc;n.&lt;br /&gt;
&lt;br /&gt;
Từ khi hắn bắt đầu nhớ được th&amp;igrave; bản th&amp;acirc;n đ&amp;atilde; l&amp;agrave; một đứa trẻ mồ c&amp;ocirc;i, kh&amp;ocirc;ng biết m&amp;igrave;nh sinh ra ở đ&amp;acirc;u, chỉ sống nương tựa c&amp;ugrave;ng với một c&amp;ocirc; b&amp;eacute;. C&amp;ocirc; b&amp;eacute; đ&amp;oacute; lu&amp;ocirc;n gọi hắn l&amp;agrave; Thạch Đầu ca ca. Cả hai đều ngh&amp;egrave;o khổ n&amp;ecirc;n kh&amp;ocirc;ng biết chữ. M&amp;agrave; l&amp;atilde;o thầy tướng số Ng&amp;ocirc; l&amp;atilde;o nh&amp;acirc;n bịa chuyện thiếu ni&amp;ecirc;n trong ngũ h&amp;agrave;nh lại thiếu mất Thổ v&amp;igrave; vậy l&amp;agrave; c&amp;aacute;i t&amp;ecirc;n tốt nhất n&amp;ecirc;n lấy đất đ&amp;aacute; m&amp;agrave; ch&amp;ecirc;m v&amp;agrave;o. V&amp;igrave; vậy m&amp;agrave; c&amp;ocirc; b&amp;eacute; mới gọi hắn như vậy. Chỉ c&amp;oacute; điều c&amp;ocirc; b&amp;eacute; t&amp;acirc;m địa lương thiện nhưng ngay cả danh v&amp;agrave; họ cũng kh&amp;ocirc;ng ph&amp;acirc;n ra v&amp;igrave; vậy m&amp;agrave; c&amp;aacute;i t&amp;ecirc;n Thạch Đầu ca ca gần như coi l&amp;agrave; t&amp;ecirc;n của hắn.&lt;br /&gt;
&lt;br /&gt;
Tr&amp;ecirc;n thực tế thiếu ni&amp;ecirc;n cũng kh&amp;ocirc;ng biết nếu hắn kh&amp;ocirc;ng l&amp;ecirc;n được ngọn n&amp;uacute;i n&amp;agrave;y th&amp;igrave; Nguy&amp;ecirc;n Thi&amp;ecirc;n Y cũng chẳng cần biết t&amp;ecirc;n của m&amp;igrave;nh. Nhưng hiện tại th&amp;igrave; kh&amp;aacute;c, thiếu ni&amp;ecirc;n đ&amp;atilde; thể hiện một sự liều lĩnh, &amp;aacute;nh mắt cố chấp cầu đạo. C&amp;aacute;i &amp;aacute;nh mắt kh&amp;ocirc;ng sợ h&amp;atilde;i đ&amp;oacute; cũng từng xuất hiện trong mắt của Nguy&amp;ecirc;n Thi&amp;ecirc;n Y. Nguy&amp;ecirc;n Thi&amp;ecirc;n Y nh&amp;igrave;n thiếu ni&amp;ecirc;n, nghĩ tới ng&amp;agrave;y đầu ti&amp;ecirc;n nh&amp;igrave;n hắn cầm M&amp;acirc;u X&amp;aacute; ch&amp;acirc;u, lại nghĩ m&amp;igrave;nh đưa n&amp;oacute; cho Thương Nguyệt ti&amp;ecirc;n tử, nhớ tới cảnh m&amp;igrave;nh gặp n&amp;agrave;ng tại bờ Bắc Lạc Thủy. Thời gian thấm tho&amp;aacute;t như thoi đưa, mấy chục năm tho&amp;aacute;ng c&amp;aacute;i hiện l&amp;ecirc;n trong đầu y. Nhưng cũng kh&amp;ocirc;ng ngờ được, Nguy&amp;ecirc;n Thi&amp;ecirc;n Y lại nh&amp;igrave;n thấy được Thi&amp;ecirc;n kiếp của m&amp;igrave;nh.&lt;br /&gt;
&lt;br /&gt;
Chỉ khi n&amp;agrave;o người tu đạo đạt tới Độ Kiếp kỳ trong truyền thuyết th&amp;igrave; mới c&amp;oacute; thể nh&amp;igrave;n thấy thi&amp;ecirc;n kiếp của ch&amp;iacute;nh m&amp;igrave;nh. Chỉ c&amp;oacute; thể vượt qua được thi&amp;ecirc;n kiếp th&amp;igrave; người tu đạo mới c&amp;oacute; thể độ kiếp th&amp;agrave;nh ti&amp;ecirc;n nh&amp;acirc;n. Dựa theo những g&amp;igrave; m&amp;agrave; mỗi người gặp gỡ, c&amp;ugrave;ng với c&amp;ocirc;ng ph&amp;aacute;p tu luyện kh&amp;aacute;c nhau m&amp;agrave; thi&amp;ecirc;n kiếp cũng kh&amp;aacute;c nhau. C&amp;oacute; người tu lu luyện ph&amp;aacute;p quyết Phong L&amp;ocirc;i n&amp;ecirc;n thi&amp;ecirc;n kiếp l&amp;agrave; cương phong tr&amp;ecirc;n ch&amp;iacute;n tầng trời v&amp;agrave; bẩy tầng l&amp;ocirc;i kiếp. C&amp;oacute; người tu luyện b&amp;iacute; ph&amp;aacute;p Nguy&amp;ecirc;n thần th&amp;igrave; dẫn ph&amp;aacute;p cảnh tượng thi&amp;ecirc;n ma, những ảo gi&amp;aacute;c trong k&amp;yacute; ức. C&amp;oacute; người tu luyện ph&amp;aacute;p quyết tinh thần th&amp;igrave; dẫn ph&amp;aacute;t tham, s&amp;acirc;n si thi&amp;ecirc;n kiếp. Trong thi&amp;ecirc;n hạ người tu đạo c&amp;oacute; h&amp;agrave;ng ngh&amp;igrave;n h&amp;agrave;ng vạn nhưng người c&amp;oacute; thể đạt tới được một bước cuối c&amp;ugrave;ng đ&amp;oacute; lại qu&amp;aacute; &amp;iacute;t. V&amp;igrave; vậy m&amp;agrave; cũng kh&amp;ocirc;ng ai c&amp;oacute; thể n&amp;oacute;i r&amp;otilde; xem tu luyện c&amp;ocirc;ng ph&amp;aacute;p n&amp;agrave;o th&amp;igrave; cuối c&amp;ugrave;ng gặp phải thi&amp;ecirc;n kiếp g&amp;igrave;.&lt;br /&gt;
&lt;br /&gt;
Chỉ khi n&amp;agrave;o tới cảnh giới n&amp;agrave;y, người tu đạo mới c&amp;oacute; thể hiểu được m&amp;igrave;nh sắp gặp phải thi&amp;ecirc;n kiếp như thế n&amp;agrave;o. Sau khi gạt bỏ được những chuyện trong l&amp;ograve;ng, tu vi của Nguy&amp;ecirc;n Thi&amp;ecirc;n Y v&amp;ocirc; t&amp;igrave;nh lại bước th&amp;ecirc;m một bước. M&amp;agrave; một bước cuối c&amp;ugrave;ng Nguy&amp;ecirc;n Thi&amp;ecirc;n Y lại cười khổ bởi ph&amp;aacute;t hiện ra thi&amp;ecirc;n kiếp của m&amp;igrave;nh kh&amp;ocirc;ng ngờ lại l&amp;agrave; thi&amp;ecirc;n kiếp nh&amp;acirc;n quả m&amp;agrave; rất &amp;iacute;t người phải trải qua.&lt;br /&gt;
&lt;br /&gt;
- Vậy gọi ngươi l&amp;agrave; Lạc Bắc đi.&lt;br /&gt;
&lt;br /&gt;
- Lạc Bắc? - Thiếu ni&amp;ecirc;n lặp lại c&amp;aacute;i t&amp;ecirc;n đ&amp;oacute;. Chưa bước ch&amp;acirc;n v&amp;agrave;o giới tu đạo n&amp;ecirc;n cơ bản hắn kh&amp;ocirc;ng biết Nguy&amp;ecirc;n Thi&amp;ecirc;n Y đ&amp;atilde; đặt ch&amp;acirc;n v&amp;agrave;o c&amp;aacute;i cảnh giới m&amp;agrave; trăm ng&amp;agrave;n năm qua chưa c&amp;oacute; người n&amp;agrave;o đạt tới. Khi Nguy&amp;ecirc;n Thi&amp;ecirc;n Y n&amp;oacute;i c&amp;acirc;u n&amp;oacute;i đ&amp;oacute;, giọng điệu vẫn chẳng hề bận t&amp;acirc;m. Tuy nhi&amp;ecirc;n thiếu ni&amp;ecirc;n nh&amp;igrave;n y m&amp;agrave; trong l&amp;ograve;ng lại c&amp;oacute; cảm gi&amp;aacute;c ấm &amp;aacute;p.&lt;br /&gt;
&lt;br /&gt;
- Từ h&amp;ocirc;m nay trở đi, ngươi ch&amp;iacute;nh l&amp;agrave; đệ tử của La Ph&amp;ugrave; ch&amp;uacute;ng ta. Ta đ&amp;atilde; n&amp;oacute;i với ngươi, tu luyện c&amp;ocirc;ng ph&amp;aacute;p của La Ph&amp;ugrave; ch&amp;iacute;nh l&amp;agrave; cửu tử nhất sinh. Ngươi đ&amp;atilde; quyết định lựa chọn như vậy th&amp;igrave; ch&amp;iacute;nh l&amp;agrave; đặt to&amp;agrave;n bộ sự sống chết của m&amp;igrave;nh trong tay ta. V&amp;igrave; vậy m&amp;agrave; từ h&amp;ocirc;m nay trở đi, ngươi kh&amp;ocirc;ng được l&amp;agrave;m tr&amp;aacute;i lại những điều ta n&amp;oacute;i, thậm ch&amp;iacute; cũng kh&amp;ocirc;ng được nghi ngờ. Ngươi c&amp;oacute; l&amp;agrave;m được kh&amp;ocirc;ng?&lt;br /&gt;
&lt;br /&gt;
Thiếu ni&amp;ecirc;n gật đầu. Một cuộn giấy lụa từ trong tay Nguy&amp;ecirc;n Thi&amp;ecirc;n Y lập tức rơi xuống. Y nhẹ nh&amp;agrave;ng, b&amp;acirc;ng quơ n&amp;oacute;i với thiếu ni&amp;ecirc;n:&lt;br /&gt;
&lt;br /&gt;
- Ngươi kh&amp;ocirc;ng biết chữ, l&amp;atilde;o Triệu Nam sẽ đọc cho ngươi nghe. Tuy nhi&amp;ecirc;n trong v&amp;ograve;ng mười ng&amp;agrave;y, ngươi phải thuộc được to&amp;agrave;n bộ. Mười ng&amp;agrave;y sau ngươi sẽ bắt đầu tu luyện.&lt;br /&gt;
&lt;br /&gt;
T&amp;ecirc;n thiếu ni&amp;ecirc;n h&amp;iacute;t một hơi thật s&amp;acirc;u, cầm lấy cuộn lụa trắng đ&amp;atilde; ố v&amp;agrave;ng. Tr&amp;ecirc;n cuộn lụa c&amp;oacute; nhiều h&amp;igrave;nh rất tối nghĩa. Y hơi sững sờ m&amp;agrave; gật đầu, quay sang nh&amp;igrave;n l&amp;atilde;o Triệu Nam đang nhếch miệng với m&amp;igrave;nh.&lt;br /&gt;
&lt;br /&gt;
Kh&amp;ocirc;ng kh&amp;iacute; ở nơi đ&amp;acirc;y kh&amp;ocirc;ng hề giống như lời l&amp;atilde;o thấy tướng số mi&amp;ecirc;u tả về động phủ của thần thi&amp;ecirc;n với quỳnh tương, ngọc dịch c&amp;ugrave;ng với đủ mọi loại chim mu&amp;ocirc;ng dị th&amp;uacute;, &amp;aacute;nh s&amp;aacute;ng đủ mọi loại m&amp;agrave;u sắc. Nh&amp;igrave;n l&amp;atilde;o nh&amp;acirc;n Triệu Nam giống như một người đang ở độ tuổi gần đất xa trời v&amp;agrave; Nguy&amp;ecirc;n Thi&amp;ecirc;n Y đứng c&amp;aacute;ch đ&amp;oacute; m&amp;agrave; thiếu ni&amp;ecirc;n kh&amp;ocirc;ng nhịn được hỏi:&lt;br /&gt;
&lt;br /&gt;
- Ph&amp;aacute;i La Ph&amp;ugrave; ch&amp;uacute;ng ta ở đ&amp;acirc;u? C&amp;aacute;c vị sư trưởng kh&amp;aacute;c đ&amp;acirc;u?&lt;br /&gt;
&lt;br /&gt;
- Chỗ n&amp;agrave;y ch&amp;iacute;nh l&amp;agrave; chỗ của ph&amp;aacute;i La Ph&amp;ugrave; ch&amp;uacute;ng ta. Ph&amp;aacute;i La Ph&amp;ugrave; ch&amp;uacute;ng ta lu&amp;ocirc;n lu&amp;ocirc;n duy tr&amp;igrave; một mạch trong bao nhi&amp;ecirc;u đời.&lt;br /&gt;
&lt;br /&gt;
Nguy&amp;ecirc;n Thi&amp;ecirc;n Y thản nhi&amp;ecirc;n giải th&amp;iacute;ch l&amp;agrave;m cho thiếu ni&amp;ecirc;n sững sờ.&lt;br /&gt;
&lt;br /&gt;
V&amp;agrave;o l&amp;uacute;c n&amp;agrave;y, Nguy&amp;ecirc;n Thi&amp;ecirc;n Y đi ch&amp;acirc;n trần mặc quần &amp;aacute;o s&amp;ocirc; chẳng kh&amp;aacute;c g&amp;igrave; một đ&amp;oacute;a sen trắng đứng c&amp;ocirc; độc giữa v&amp;ugrave;ng n&amp;uacute;i.&lt;br /&gt;
&lt;br /&gt;
.........&lt;br /&gt;
&lt;br /&gt;
&amp;quot;Lạc Bắc&amp;quot;. Dưới &amp;aacute;nh đ&amp;egrave;n mờ nhạt, thiếu ni&amp;ecirc;n v&amp;ocirc; danh nằm cố gắng nhớ những chữ trong cuộn lụa ố v&amp;agrave;ng kia, rồi viết t&amp;ecirc;n của m&amp;igrave;nh l&amp;ecirc;n b&amp;agrave;n.&lt;br /&gt;
&lt;br /&gt;
- B&amp;aacute; b&amp;aacute; Triệu Nam! Người xem người dạy ta, ta viết đ&amp;uacute;ng chưa?&lt;br /&gt;
&lt;br /&gt;
L&amp;atilde;o Triệu Nam tuổi gi&amp;agrave; sức yếu bu&amp;ocirc;ng chiếc &amp;aacute;o vải th&amp;ocirc; đang kh&amp;acirc;u xuống, h&amp;iacute;p mắt nh&amp;igrave;n rồi nở nụ cười:&lt;br /&gt;
&lt;br /&gt;
- Thiếu chủ! Ng&amp;agrave;i viết rất đ&amp;uacute;ng.&lt;br /&gt;
&lt;br /&gt;
- B&amp;aacute; b&amp;aacute; Triệu Nam! Người kh&amp;ocirc;ng phải l&amp;agrave; đệ tử của ph&amp;aacute;i La Ph&amp;ugrave; sao?&lt;br /&gt;
&lt;br /&gt;
- Đ&amp;uacute;ng vậy! Chủ nh&amp;acirc;n chẳng n&amp;oacute;i với thiếu chủ rồi sao? La Ph&amp;ugrave; lu&amp;ocirc;n lu&amp;ocirc;n giữ một người trong mấy đời. Một thế hệ chỉ truyền cho một đệ tử m&amp;agrave; th&amp;ocirc;i. Ta chỉ l&amp;agrave; người hầu của chủ nh&amp;acirc;n. - L&amp;atilde;o Triệu Nam cũng kh&amp;ocirc;ng sợ l&amp;agrave;m phiền người kh&amp;aacute;c m&amp;agrave; cất giọng kh&amp;agrave;n kh&amp;agrave;n trả lời hắn.&lt;br /&gt;
&lt;br /&gt;
- Nhưng tại sao lại chỉ truyền cho một người? C&amp;aacute;c m&amp;ocirc;n ph&amp;aacute;i kh&amp;aacute;c chẳng phải c&amp;oacute; rất nhiều đệ tử đ&amp;oacute; sao?&lt;br /&gt;
&lt;br /&gt;
- M&amp;ocirc;n ph&amp;aacute;i kh&amp;aacute;c nhau kh&amp;ocirc;ng thể c&amp;oacute; c&amp;ugrave;ng quy định. Cũng giống như một thứ g&amp;igrave; tồn tại cũng l&amp;agrave; c&amp;oacute; l&amp;yacute; do của n&amp;oacute;. Dựa theo quy tắc của La Ph&amp;ugrave; th&amp;igrave; sau n&amp;agrave;y khi thiếu chủ trưởng th&amp;agrave;nh, l&amp;uacute;c thu đồ đệ chỉ c&amp;oacute; thể thu một người m&amp;agrave; th&amp;ocirc;i.&lt;br /&gt;
&lt;br /&gt;
- B&amp;aacute; b&amp;aacute; Triệu Nam! Kh&amp;ocirc;ng cần phải gọi ta l&amp;agrave; thiếu chủ. Cứ gọi ta...gọi ta l&amp;agrave; Lạc Bắc được rồi. Ta nghe hai chữ thiếu chủ kh&amp;ocirc;ng thấy thoải m&amp;aacute;i.&lt;br /&gt;
&lt;br /&gt;
- Tu&amp;acirc;n lệnh thiếu chủ. - L&amp;atilde;o Triệu Nam nhếch miệng cười:&lt;br /&gt;
&lt;br /&gt;
- Lạc Bắc! C&amp;aacute;i t&amp;ecirc;n n&amp;agrave;y nghe rất &amp;ecirc;m tai.&lt;br /&gt;
&lt;br /&gt;
Tr&amp;ecirc;n đỉnh n&amp;uacute;i, những cơn gi&amp;oacute; thổi tới l&amp;agrave;m cho c&amp;aacute;i cửa sổ lại k&amp;ecirc;u l&amp;ecirc;n những tiếng kẽo kẹt. Chiếc đ&amp;egrave;n dầu cũng chập chờn nhưng thiếu ni&amp;ecirc;n lại cảm thấy rất ấm &amp;aacute;p. Nguy&amp;ecirc;n Thi&amp;ecirc;n Y v&amp;agrave; l&amp;atilde;o Triệu Nam mặc d&amp;ugrave; mới tiếp x&amp;uacute;c với hắn mấy ng&amp;agrave;y nhưng lại khiến cho hắn cảm nhận được những t&amp;igrave;nh cảm trước đ&amp;acirc;y kh&amp;ocirc;ng c&amp;oacute;. Mặc d&amp;ugrave; hắn biết thi&amp;ecirc;n tư của m&amp;igrave;nh b&amp;igrave;nh thường nhưng hắn quyết kh&amp;ocirc;ng để cho sư phụ thất vọng.&lt;br /&gt;
&lt;br /&gt;
Phải mất ch&amp;iacute;n ng&amp;agrave;y, với tư chất b&amp;igrave;nh thường của Lạc Bắc mới c&amp;oacute; thể ghi nhớ được những điều l&amp;atilde;o Triệu Nam giải th&amp;iacute;ch cho hắn về Ma Ha Gi&amp;agrave; La mật ph&amp;aacute;p.&lt;br /&gt;
&lt;br /&gt;
- Ta c&amp;oacute; thể bắt đầu tu luyện trước một ng&amp;agrave;y được kh&amp;ocirc;ng? - Sau khi đ&amp;atilde; ghi nhớ đầy đủ, Lạc Bắc quay sang hỏi l&amp;atilde;o Triệu Nam. Vấn đề n&amp;agrave;y vốn hắn định hỏi sư phụ của m&amp;igrave;nh nhưng d&amp;ugrave; sao th&amp;igrave; khi hắn gặp l&amp;atilde;o Triệu Nam cũng kh&amp;ocirc;ng c&amp;oacute; cảm gi&amp;aacute;c k&amp;iacute;nh sợ như l&amp;uacute;c đối mặt với Nguy&amp;ecirc;n Thi&amp;ecirc;n Y.&lt;br /&gt;
&lt;br /&gt;
L&amp;atilde;o Triệu Nam gật đầu:&lt;br /&gt;
&lt;br /&gt;
- Chủ nh&amp;acirc;n c&amp;oacute; dặn chỉ cần thiếu chủ c&amp;oacute; thể nhớ được đầy đủ, hiểu được &amp;yacute; tứ của n&amp;oacute; l&amp;agrave; ta c&amp;oacute; thể dẫn thiếu chủ đi tu luyện.&lt;br /&gt;
&lt;br /&gt;
- Sư phụ kh&amp;ocirc;ng đi sao?&lt;br /&gt;
&lt;br /&gt;
- Hiện tại chủ nh&amp;acirc;n đang l&amp;agrave;m chuyện kh&amp;aacute;c. C&amp;oacute; điều chủ nh&amp;acirc;n c&amp;oacute; n&amp;oacute;i khi thiếu chủ tu luyện tới tầng thứ hai th&amp;igrave; c&amp;oacute; thể dẫn thiếu chủ đi gặp ng&amp;agrave;i.&lt;br /&gt;
&lt;br /&gt;
Lạc Bắc giật m&amp;igrave;nh nh&amp;igrave;n cuốn Ma Ha Gi&amp;agrave; La mật ph&amp;aacute;p trong tay rồi gật đầu m&amp;agrave; hỏi:&lt;br /&gt;
&lt;br /&gt;
- Những ng&amp;agrave;y trước c&amp;oacute; phải sư phụ lu&amp;ocirc;n quan s&amp;aacute;t xem ta đi l&amp;ecirc;n đỉnh n&amp;uacute;i n&amp;agrave;y kh&amp;ocirc;ng?&lt;br /&gt;
&lt;br /&gt;
- Đ&amp;uacute;ng vậy! Chỉ c&amp;oacute; điều thiếu chủ lại l&amp;ecirc;n tới đ&amp;acirc;y nhanh như vậy?&lt;br /&gt;
&lt;br /&gt;
- Vậy c&amp;aacute;i con qu&amp;aacute;i vật hai đầu đ&amp;oacute; t&amp;ecirc;n l&amp;agrave; g&amp;igrave;? - Cuối c&amp;ugrave;ng th&amp;igrave; thiếu ni&amp;ecirc;n cũng kh&amp;ocirc;ng nhịn được hỏi vấn đề m&amp;agrave; m&amp;igrave;nh vẫn giữ trong l&amp;ograve;ng:&lt;br /&gt;
&lt;br /&gt;
- C&amp;ograve;n c&amp;oacute; c&amp;aacute;i thứ n&amp;oacute; đưa cho ta ăn l&amp;agrave; g&amp;igrave;? Hiện tại ta vẫn c&amp;oacute; cảm gi&amp;aacute;c chưa d&amp;ugrave;ng hết sức.&lt;br /&gt;
&lt;br /&gt;
- Đ&amp;oacute; l&amp;agrave; song đầu sơn vinh, một loại linh th&amp;uacute; đặt biệt của La Ph&amp;ugrave;. C&amp;oacute; điều b&amp;igrave;nh thường h&amp;igrave;nh dạng của Song đầu sơn vinh giống như hai con thằng lằn. Con m&amp;agrave; thiếu chủ nh&amp;igrave;n thấy dường như đ&amp;atilde; ăn được thứ linh thảo g&amp;igrave; đ&amp;oacute; m&amp;agrave; mở được thần thức, từ từ tu luyện th&amp;agrave;nh h&amp;igrave;nh người. - L&amp;atilde;o Triệu Nam dừng việc lại::&lt;br /&gt;
&lt;br /&gt;
- C&amp;aacute;i thứ m&amp;agrave; n&amp;oacute; cho thiếu chủ ăn c&amp;oacute; t&amp;ecirc;n l&amp;agrave; cỏ Đạm T&amp;acirc;y mang thần lực của sơn thần. Nếu n&amp;oacute; ăn cũng tương đương với việc nuốt linh kh&amp;iacute; trong v&amp;agrave;i năm. C&amp;ograve;n người b&amp;igrave;nh thường ăn th&amp;igrave; rất kh&amp;oacute; sinh bệnh, hơn nữa sức khỏe cũng tăng l&amp;ecirc;n mấy lần. Thiếu chủ cứu mạng của n&amp;oacute; nhưng n&amp;oacute; thật ra cũng biết sự b&amp;aacute;o &amp;acirc;n.&lt;br /&gt;
&lt;br /&gt;
- Linh th&amp;uacute; cũng c&amp;oacute; thể tu luyện sao? - Thiếu ni&amp;ecirc;n t&amp;ograve; m&amp;ograve; hỏi.&lt;br /&gt;
&lt;br /&gt;
- Tất nhi&amp;ecirc;n. - Trong đ&amp;ocirc;i mắt m&amp;agrave;u hổ ph&amp;aacute;ch của l&amp;atilde;o Triệu Nam dường như c&amp;oacute; &amp;aacute;nh s&amp;aacute;ng chợt l&amp;oacute;e l&amp;ecirc;n rồi lập tức ảm đạm:&lt;br /&gt;
&lt;br /&gt;
- Vạn vật trong thế gian, cỏ c&amp;acirc;y sinh trưởng đều c&amp;oacute; thể hấp thu linh kh&amp;iacute; trong trời đất m&amp;agrave; tẩm bổ. Cho d&amp;ugrave; bất cứ lo&amp;agrave;i sinh linh n&amp;agrave;o cũng hiểu dược c&amp;aacute;ch tu h&amp;agrave;nh. Đương nhi&amp;ecirc;n nếu để c&amp;oacute; thể tu luyện. C&amp;oacute; điều con người th&amp;igrave; trời sinh đ&amp;atilde; mở được thần thức, hiểu được c&amp;aacute;ch thăm d&amp;ograve; ảo diệu của trời đất. Trong đ&amp;oacute; người ngộ đao đ&amp;atilde; để lại rất nhiều c&amp;ocirc;ng ph&amp;aacute;p cho người đời sau tu luyện. M&amp;agrave; như Sơn vinh th&amp;igrave; phần lớn từ nhỏ rất ng&amp;acirc;y thơ, sinh tử giao hết cho trời. Cho d&amp;ugrave; c&amp;oacute; mở được thần thức th&amp;igrave; phần lớn kh&amp;ocirc;ng c&amp;oacute; c&amp;ocirc;ng ph&amp;aacute;p tu luyện, lại th&amp;ecirc;m kh&amp;ocirc;ng được dậy dỗ n&amp;ecirc;n l&amp;agrave;m g&amp;igrave; cũng chỉ dựa v&amp;agrave;o bản năng. V&amp;igrave; vậy m&amp;agrave; con người kh&amp;ocirc;ng chấp nhận gọi n&amp;oacute; l&amp;agrave; y&amp;ecirc;u qu&amp;aacute;i. M&amp;agrave; c&amp;oacute; một số c&amp;oacute; thể tu h&amp;agrave;nh th&amp;igrave; sinh ra được nội đan hoặc bảo vật, phần lớn l&amp;agrave; ch&amp;iacute; bảo trong mắt người tu luyện, để cho họ săn bắt. V&amp;igrave; vậy m&amp;agrave; việc tu h&amp;agrave;nh so với con người c&amp;ograve;n kh&amp;oacute; hơn nhiều.&lt;br /&gt;
&lt;br /&gt;
Tất cả những thứ đ&amp;oacute; tới b&amp;acirc;y giờ Lạc Bắc mới được tiếp x&amp;uacute;c. Trước đ&amp;acirc;y hắn ho&amp;agrave;n to&amp;agrave;n kh&amp;ocirc;ng biết về thế giới n&amp;agrave;y. Mặc d&amp;ugrave; kh&amp;ocirc;ng hiểu hết nhưng cũng c&amp;oacute; thể r&amp;uacute;t ra được điều g&amp;igrave; đ&amp;oacute;. Hắn lại hỏi:&lt;br /&gt;
&lt;br /&gt;
- Vậy ch&amp;eacute;m mất một c&amp;aacute;i đầu của n&amp;oacute;, n&amp;oacute; c&amp;oacute; l&amp;agrave;m sao kh&amp;ocirc;ng?&lt;br /&gt;
&lt;br /&gt;
- Trừ khi Song đầu sơn vinh bị ch&amp;eacute;m mất hai đầu nếu kh&amp;ocirc;ng sẽ kh&amp;ocirc;ng chết. V&amp;igrave; vậy thiếu chủ cứ y&amp;ecirc;n t&amp;acirc;m. - L&amp;atilde;o Triệu Nam h&amp;iacute;p mắt cười n&amp;oacute;i.&lt;br /&gt;
&lt;br /&gt;
- Vậy c&amp;aacute;i tr&amp;aacute;i c&amp;acirc;y m&amp;agrave; n&amp;oacute; h&amp;aacute;i đi l&amp;agrave; thứ g&amp;igrave; vậy? - Lạc Bắc như vẫn chưa hỏi xong:&lt;br /&gt;
&lt;br /&gt;
- N&amp;oacute; nghĩ ta tới cướp tr&amp;aacute;i c&amp;acirc;y của n&amp;oacute; n&amp;ecirc;n mới tấn c&amp;ocirc;ng.&lt;br /&gt;
&lt;br /&gt;
- Đ&amp;oacute; l&amp;agrave; quả bảo th&amp;aacute;p cũng kh&amp;ocirc;ng phải l&amp;agrave; vật g&amp;igrave; kỳ lạ. N&amp;oacute; l&amp;agrave; loại tr&amp;aacute;i c&amp;acirc;y m&amp;agrave; Sơn vinh th&amp;iacute;ch ăn nhất. Cũng giống như lo&amp;agrave;i khỉ l&amp;ocirc;ng v&amp;agrave;ng trong d&amp;atilde;y La Ph&amp;ugrave; n&amp;agrave;y th&amp;iacute;ch ăn nhất l&amp;agrave; một loại quả hạch m&amp;agrave;u v&amp;agrave;ng. Những việc đ&amp;oacute; đối với ch&amp;uacute;ng chỉ l&amp;agrave; do c&amp;ograve;n chưa tu h&amp;agrave;nh đủ, chưa bỏ được bản t&amp;iacute;nh m&amp;agrave; th&amp;ocirc;i. - Khi n&amp;oacute;i tới những vấn đề n&amp;agrave;y, n&amp;eacute;t mạt của l&amp;atilde;o Triệu Nam lại c&amp;oacute; sự trang nghi&amp;ecirc;m.&lt;br /&gt;
&lt;br /&gt;
- Muốn tu luyện Ma Ha Gi&amp;agrave; La Mật ph&amp;aacute;p th&amp;igrave; đầu ti&amp;ecirc;n phải ngăn chặn được c&amp;aacute;m dỗ mới được.&lt;br /&gt;
&lt;br /&gt;
Lạc Bắc ngồi xếp bằng dưới một gốc c&amp;acirc;y c&amp;agrave;nh l&amp;aacute; sum xu&amp;ecirc;. S&amp;aacute;ng sớm, &amp;aacute;nh dương quang chiếu qua kẽ l&amp;aacute; lốm đốm tr&amp;ecirc;n người hắn.&lt;br /&gt;
&lt;br /&gt;
Cuộn Ma Ha Gi&amp;agrave; La mật ph&amp;aacute;p đặt trước mặt hắn d&amp;agrave;i chừng ba x&amp;iacute;ch, mặt tr&amp;ecirc;n c&amp;oacute; chữ m&amp;agrave;u v&amp;agrave;ng rất nhỏ nhưng giống như được khắc rất r&amp;otilde; r&amp;agrave;ng. Trong quyển thứ nhất của kinh văn l&amp;agrave; một pho tượng phật đ&amp;agrave; m&amp;agrave;u v&amp;agrave;ng kim ngồi trong hư kh&amp;ocirc;ng, một chuỗi hạt ch&amp;acirc;u đang xoay chung quanh. Tr&amp;ecirc;n đỉnh đầu c&amp;oacute; một vầng mặt trời đỏ, chiếu &amp;aacute;nh s&amp;aacute;ng xuống pho tượng phật. Tư thế của pho tượng phật m&amp;agrave;u v&amp;agrave;ng cũng giống như Lạc Bắc nhưng khu&amp;ocirc;n mặt lại ho&amp;agrave;n to&amp;agrave;n kh&amp;aacute;c với những pho tượng trong miếu thờ, c&amp;oacute; thể n&amp;oacute;i l&amp;agrave; v&amp;ocirc; c&amp;ugrave;ng hung &amp;aacute;c khiến cho người ta nh&amp;igrave;n thấy đ&amp;atilde; sợ h&amp;atilde;i.&lt;br /&gt;
&lt;br /&gt;
Sau khi y&amp;ecirc;n lặng đọc kinh văn một l&amp;uacute;c, Lạc Bắc ngẩng đầu, b&amp;igrave;nh tĩnh lại, cắt đứt tạp niệm trong l&amp;ograve;ng, ngẩng đầu nh&amp;igrave;n l&amp;ecirc;n kh&amp;ocirc;ng trung rồi nhắm mắt lại. Hắn chọc theo h&amp;igrave;nh dạng của phật đ&amp;agrave; trong quyển thứ nhất m&amp;agrave; bắt hai tay kết ấn, sao cho giống như phật đ&amp;agrave; h&amp;ograve;a v&amp;agrave;o hư kh&amp;ocirc;ng. Giữa kh&amp;ocirc;ng trung, những tia s&amp;aacute;ng từ từ chui v&amp;agrave;o trong cơ thể.&lt;br /&gt;
&lt;br /&gt;
Đối với thế giới tu đạo m&amp;agrave; n&amp;oacute;i th&amp;igrave; Lạc Bắc c&amp;oacute; thể n&amp;oacute;i l&amp;agrave; một tờ giấy tắng. C&amp;ograve;n đối với người tu đạo b&amp;igrave;nh thường khi vừa mới bắt đầu, việc trở n&amp;ecirc;n tĩnh t&amp;acirc;m sẽ rất kh&amp;oacute;. Chưa n&amp;oacute;i Triệu Nam chỉ dựa v&amp;agrave;o tr&amp;iacute; nhớ, ngay cả kinh mạch c&amp;ograve;n kh&amp;ocirc;ng biết. Tuy nhi&amp;ecirc;n trời sinh t&amp;iacute;nh t&amp;igrave;nh của hắn vốn chất ph&amp;aacute;c, chưa nếm trải nhiều cuộc sống thế gian v&amp;igrave; vậy m&amp;agrave; trong l&amp;ograve;ng cũng kh&amp;ocirc;ng c&amp;oacute; nhiều tạp nhiệm. Cứ như vậy, hắn đạt tới một bước n&amp;agrave;y dễ d&amp;agrave;ng hơn nhiều. Ngồi chừng một n&amp;eacute;n hương, hắn từ từ tiến v&amp;agrave;o trạng th&amp;aacute;i tĩnh tu.&lt;br /&gt;
&lt;br /&gt;
Trong suy nghĩ của hắn, tia s&amp;aacute;ng mặt trời giống như thực thể chui v&amp;agrave;o trong th&amp;acirc;n thể hắn. Một tia s&amp;aacute;ng đ&amp;oacute; chui v&amp;agrave;o trong cơ thể khiến cho kinh mạch của Lạc Bặc như c&amp;oacute; một d&amp;ograve;ng nước ấm chảy qua, to&amp;agrave;n th&amp;acirc;n thư gi&amp;atilde;n. &amp;quot;Đ&amp;acirc;y ch&amp;iacute;nh l&amp;agrave; bước đầu ti&amp;ecirc;n trong kinh văn.!&amp;quot; Lạc Bắc cảm thấy vui vẻ. Tuy nhi&amp;ecirc;n trong đầu hắn vừa mới xuất hiện suy nghĩ đ&amp;oacute; th&amp;igrave; c&amp;aacute;i cảm gi&amp;aacute;c đấy liền biến mất.&lt;br /&gt;
&lt;br /&gt;
Trạng th&amp;aacute;i nhập tĩnh qu&amp;ecirc;n m&amp;igrave;nh ho&amp;agrave;n to&amp;agrave;n bị ph&amp;aacute;.&lt;br /&gt;
&lt;br /&gt;
Lạc Bắc cũng kh&amp;ocirc;ng nổi giận, lại định thần tĩnh tọa ngồi kết ấn. Rất nhanh, to&amp;agrave;n th&amp;acirc;n hắn lại như nhẹ nhẹ h&amp;uacute;t &amp;aacute;nh s&amp;aacute;ng v&amp;agrave;o, m&amp;agrave; cảm thấy thoải m&amp;aacute;i. Đ&amp;atilde; c&amp;oacute; kinh nghiễm, hắn giữ chặt tinh thần, tiếp tục dựa theo kinh văn m&amp;agrave; cho tia s&amp;aacute;ng đ&amp;oacute; dung nhập v&amp;agrave;o trong lục phủ ngũ tạng rồi sau đ&amp;oacute; qua đan điền m&amp;agrave; ph&amp;acirc;n ra, th&amp;ocirc;ng qua hai tay kết ấn xuy&amp;ecirc;n qua yết hầu, tới ch&amp;acirc;n răng rồi ngưng tụ ở N&amp;ecirc; Ho&amp;agrave;n cung.&lt;br /&gt;
&lt;br /&gt;
Khi nhưng tia s&amp;aacute;ng h&amp;uacute;t v&amp;agrave;o th&amp;acirc;n thể c&amp;agrave;ng l&amp;uacute;c c&amp;agrave;ng nhiều, thức hải của Lạc Bắc cũng c&amp;agrave;ng l&amp;uacute;c c&amp;agrave;ng n&amp;oacute;ng, ngưng tụ th&amp;agrave;nh một quả cầu m&amp;agrave;u đỏ nho nhỏ. Quả cầu đ&amp;oacute; từ từ xoay tr&amp;ograve;n, c&amp;agrave;ng l&amp;uacute;c c&amp;agrave;ng nhanh. Mỗi tia s&amp;aacute;ng chui v&amp;agrave;o trong cơ thể hắn đều bị quả cầu h&amp;uacute;t lấy.&lt;br /&gt;
&lt;br /&gt;
Bất chợt, quả cầu lửa phun ra v&amp;ocirc; số ngọn lửa khiến cho Lạc Bắc đau đớn. Những ngọn lửa đ&amp;oacute; c&amp;agrave;ng l&amp;uacute;c c&amp;agrave;ng dữ dội, bao phủ Lạc Bắc v&amp;agrave;o b&amp;ecirc;n trong.&lt;br /&gt;
&lt;br /&gt;
Cảnh tượng trước mặt hắn biến đổi giống như rơi v&amp;agrave;o trong Tu La địa ngục với những n&amp;uacute;i th&amp;acirc;y người v&amp;agrave; biển m&amp;aacute;u. V&amp;ocirc; số những con &amp;aacute;c quỷ từ xung quanh vờn tới như định nh&amp;agrave;o l&amp;ecirc;n uống m&amp;aacute;u, ăn thịt người.&lt;br /&gt;
&lt;br /&gt;
Cho d&amp;ugrave; l&amp;agrave; nằm mơ th&amp;igrave; Lạc Bắc cũng chưa từng thấy những cảnh tượng như vậy. Gần như theo bản năng, hắn vung tay l&amp;ecirc;n m&amp;agrave; k&amp;ecirc;u.&lt;br /&gt;
&lt;br /&gt;
Nhưng suy nghĩ đang sợ vừa mới xuất hiện trong đ&amp;agrave;u, tinh thần của Lạc Bắc liền kh&amp;ocirc;ng c&amp;ograve;n giữ được sự b&amp;igrave;nh tĩnh. Cảnh tượng trước mắt hắn lập tức thay đổi. Nhưng con &amp;aacute;c quỷ, dạ xoa trước đ&amp;oacute; liền ngưng tụ lại th&amp;agrave;nh một t&amp;ecirc;n ma thần khổng lồ, to&amp;agrave;n th&amp;acirc;n bốc ch&amp;aacute;y. C&amp;ograve;n n&amp;uacute;i th&amp;acirc;y v&amp;agrave; biển m&amp;aacute;u th&amp;igrave; h&amp;oacute;a th&amp;agrave;nh biển lửa ngập trời, bao phủ Lạc Bắc v&amp;agrave;o b&amp;ecirc;n trong.&lt;br /&gt;
&lt;br /&gt;
- Kh&amp;ocirc;ng hay. - L&amp;atilde;o Triệu Nam đứng nấp sau một tảng đ&amp;aacute; c&amp;aacute;ch đ&amp;oacute; trăm m&amp;eacute;t liền biến sắc.&lt;br /&gt;
&lt;br /&gt;
Chỉ cần nh&amp;igrave;n Lạc Bắc run rẩy, n&amp;eacute;t mặt đau khổ, tr&amp;ecirc;n đầu c&amp;oacute; từng hạt mồ h&amp;ocirc;i rơi xuống th&amp;igrave; l&amp;atilde;o Triệu Nam biết hắn đ&amp;atilde; rơi v&amp;agrave;o t&amp;igrave;nh cảnh nguy hiểm.&lt;br /&gt;
&lt;br /&gt;
Mặc d&amp;ugrave; l&amp;atilde;o Triệu Nam đ&amp;atilde; n&amp;oacute;i với Lạc Bắc rằng tu luyện Ma Ha Gi&amp;agrave; La mật ph&amp;aacute;p sẽ phải trải qua rất nhiều ảo gi&amp;aacute;c, phải chống cự được sự hấp dẫn, bảo vệ l&amp;yacute; tr&amp;iacute; của m&amp;igrave;nh.&lt;/p&gt;
', 1, CAST(0x0000ADEF0112FB73 AS DateTime), CAST(0x0000ADEF0112FB73 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (3117, 4101, 2042, N'Chương 9: Tâm sanh chư ma. Ngũ tạng thiêu đốt', N'&lt;p&gt;M&amp;agrave; Ma Ha gi&amp;agrave; la mật ph&amp;aacute;p cũng kh&amp;ocirc;ng phải l&amp;agrave; một loại ph&amp;aacute;p quyết tu luyện tầm thường.&lt;br /&gt;
&lt;br /&gt;
Pho tượng Phật tr&amp;ecirc;n đ&amp;oacute; c&amp;oacute; mặt xanh, răng nanh m&amp;agrave;u lăm, hết sức hung &amp;aacute;c. Đ&amp;oacute; l&amp;agrave; bởi v&amp;igrave;, đ&amp;acirc;y ch&amp;iacute;nh l&amp;agrave; bảo điển trấn tự của Mật T&amp;ocirc;ng T&amp;acirc;y Vực. Do đ&amp;acirc;y l&amp;agrave; ph&amp;aacute;p quyết h&amp;agrave;ng y&amp;ecirc;u số một của Mật t&amp;ocirc;ng cho n&amp;ecirc;n Phật đ&amp;agrave; b&amp;ecirc;n tr&amp;ecirc;n cũng l&amp;agrave; Tu La của Mật T&amp;ocirc;ng. Cuốn b&amp;iacute; quyết n&amp;agrave;y so với ph&amp;aacute;p quyết b&amp;igrave;nh thường tu luyện c&amp;ograve;n kh&amp;oacute; hơn kh&amp;ocirc;ng biết bao nhi&amp;ecirc;u lần. Nếu đ&amp;aacute;m người H&amp;aacute;ch Đồ m&amp;agrave; c&amp;oacute; được M&amp;acirc;u X&amp;aacute; ch&amp;acirc;u rồi đổi lấy một quyển ph&amp;aacute;p quyết từ tay Nguy&amp;ecirc;n Thi&amp;ecirc;n Y th&amp;igrave; đ&amp;uacute;ng l&amp;agrave; mừng tới ph&amp;aacute;t đi&amp;ecirc;n.&lt;br /&gt;
&lt;br /&gt;
Nhưng c&amp;agrave;ng l&amp;agrave; ph&amp;aacute;p quyết tu luyện huyền ảo th&amp;igrave; qu&amp;aacute; tr&amp;igrave;nh tu luyện lại c&amp;agrave;ng gian khổ. Hơn nữa, ho&amp;agrave;n to&amp;agrave;n kh&amp;aacute;c với những c&amp;ocirc;ng ph&amp;aacute;p tu luyện b&amp;igrave;nh thường, người Mật t&amp;ocirc;ng chuy&amp;ecirc;n tự m&amp;igrave;nh tiếp x&amp;uacute;c để th&amp;agrave;nh PHật v&amp;igrave; vậy m&amp;agrave; cuốn Ma Ha gi&amp;agrave; la mật ph&amp;aacute;p cũng để sử t&amp;acirc;m t&amp;iacute;nh trước.&lt;br /&gt;
&lt;br /&gt;
Muốn h&amp;agrave;ng phục y&amp;ecirc;u m&amp;agrave; th&amp;igrave; việc đầu ti&amp;ecirc;n l&amp;agrave; phải gặp được y&amp;ecirc;u ma. Nếu như tinh thần kh&amp;ocirc;ng vững để cho y&amp;ecirc;u m&amp;agrave; t&amp;aacute;c động th&amp;igrave;... V&amp;igrave; vậy m&amp;agrave; tu luyện cuốn ph&amp;aacute;p quyết n&amp;agrave;y kh&amp;ocirc;ng chỉ đơn giản l&amp;agrave; ảo cảnh m&amp;agrave; c&amp;ograve;n c&amp;oacute; cả Tham, S&amp;acirc;n, Si c&amp;ugrave;ng với thanh sắc, hương, vị, cảm gi&amp;aacute;c, o&amp;aacute;n cừu.... Tất cả đều đồng loạt x&amp;acirc;m phạm. Chỉ c&amp;oacute; t&amp;acirc;m trạng vững v&amp;agrave;ng th&amp;igrave; mới c&amp;oacute; thể giữ vững bản t&amp;acirc;m, tu vi tinh tiến. C&amp;ograve;n kh&amp;ocirc;ng th&amp;igrave; ảnh hưởng tới t&amp;iacute;nh mạng.&lt;br /&gt;
&lt;br /&gt;
Sở dĩ l&amp;atilde;o Triệu Nam kh&amp;ocirc;ng n&amp;oacute;i tất cả cho Lạc Bắc l&amp;agrave; v&amp;igrave; c&amp;oacute; n&amp;oacute;i cũng kh&amp;ocirc;ng c&amp;oacute; t&amp;aacute;c dụng m&amp;agrave; c&amp;ograve;n l&amp;agrave;m cho hắn th&amp;ecirc;m sợ h&amp;atilde;i, lại c&amp;agrave;ng dễ khiến cho t&amp;acirc;m ma x&amp;acirc;m nhập.&lt;br /&gt;
&lt;br /&gt;
Tuy nhi&amp;ecirc;n l&amp;uacute;c n&amp;agrave;y, Lạc Bắc trực tiếp tu luyện ph&amp;aacute;p quyết cao th&amp;acirc;m n&amp;ecirc;n hiển nhi&amp;ecirc;n bị t&amp;acirc;m ma x&amp;acirc;m nhập, ch&amp;acirc;n hỏa thi&amp;ecirc;u đốt.&lt;br /&gt;
&lt;br /&gt;
L&amp;atilde;o Triệu Nam kh&amp;ocirc;ng nhịn được bước ra định đi về ph&amp;iacute;a Lạc Bắc đang ngồi. Nhưng mới bước được một bước, l&amp;atilde;o đ&amp;atilde; dừng lại.&lt;br /&gt;
&lt;br /&gt;
C&amp;aacute;i loại Ma Ha Gi&amp;agrave; la mật ph&amp;aacute;p c&amp;agrave;ng v&amp;igrave; sau tu luyện, tu vi c&amp;agrave;ng cao th&amp;igrave; t&amp;acirc;m ma x&amp;acirc;m nhập c&amp;agrave;ng mạnh. Nếu đứng ngo&amp;agrave;i gi&amp;uacute;p đỡ cũng chỉ được mức độ nhất thời. M&amp;agrave; thậm ch&amp;iacute; c&amp;ograve;n l&amp;agrave;m cho nguy&amp;ecirc;n thần bản th&amp;acirc;n kh&amp;ocirc;ng được r&amp;egrave;n luyện sẽ dẫm v&amp;agrave;o vết xe đổ, c&amp;agrave;ng khiến cho t&amp;iacute;nh mạng th&amp;ecirc;m nguy hiểm.&lt;br /&gt;
&lt;br /&gt;
Ngoại trừ việc đ&amp;oacute; ra c&amp;ograve;n c&amp;oacute; một điều quan trọng.&lt;br /&gt;
&lt;br /&gt;
Trong thế gian c&amp;oacute; rất nhiều m&amp;ocirc;n ph&amp;aacute;i lớn. Những đệ tử của họ trong l&amp;uacute;c tu h&amp;agrave;nh ngo&amp;agrave;i sư phụ ra c&amp;ograve;n c&amp;oacute; người hộ ph&amp;aacute;p khiến cho sự nguy hiểm trong tu luyện cũng giảm đi rất nhiều, tu vi tăng l&amp;ecirc;n cũng kh&amp;aacute;.&lt;br /&gt;
&lt;br /&gt;
Nhưng ph&amp;aacute;i La Ph&amp;ugrave; th&amp;igrave; đều tự m&amp;igrave;nh tu h&amp;agrave;nh, kh&amp;ocirc;ng hề c&amp;oacute; hộ ph&amp;aacute;p.&lt;br /&gt;
&lt;br /&gt;
M&amp;agrave; ph&amp;aacute;i La Ph&amp;ugrave; chỉ c&amp;oacute; một sư v&amp;agrave; một đồ đệ, mấy đời đều như nhau. Đ&amp;oacute; cũng l&amp;agrave; quy tắc bao đời của ph&amp;aacute;i La Ph&amp;ugrave;.&lt;br /&gt;
&lt;br /&gt;
Tu đạo ngộ ph&amp;aacute;p d&amp;ugrave; sao th&amp;igrave; phần lớn cũng tự dựa v&amp;agrave;o bản th&amp;acirc;n. Nếu kh&amp;ocirc;ng cho d&amp;ugrave; sư phụ c&amp;oacute; chỉ dẫn thế n&amp;agrave;o, khi người đ&amp;oacute; tới một độ cao nhất định cũng phải dựa v&amp;agrave;o bản th&amp;acirc;n.&lt;br /&gt;
&lt;br /&gt;
M&amp;agrave; nếu chỉ dẫn như vậy th&amp;igrave; hậu quả dẫn tới l&amp;agrave; rất nhiều đệ tử kh&amp;ocirc;ng thể vượt qua được sư phụ.&lt;br /&gt;
&lt;br /&gt;
C&amp;ograve;n người của ph&amp;aacute;i La Ph&amp;ugrave; hoặc l&amp;agrave; kh&amp;ocirc;ng xuất hiện nhưng một khi đ&amp;atilde; xuất hiện th&amp;igrave; đ&amp;uacute;ng l&amp;agrave; kinh thế h&amp;atilde;i tục. V&amp;igrave; vậy m&amp;agrave; c&amp;aacute;i nguy&amp;ecirc;n nh&amp;acirc;n đ&amp;oacute; cũng l&amp;agrave; một trong những thứ để tạo n&amp;ecirc;n quy tắc kia.&lt;br /&gt;
&lt;br /&gt;
L&amp;atilde;o Triệu Nam kh&amp;ocirc;ng d&amp;aacute;m vi phạm quy tắc của La Ph&amp;ugrave; cho n&amp;ecirc;n đ&amp;agrave;nh dừng bước, chỉ c&amp;oacute; điều l&amp;atilde;o thầm k&amp;ecirc;u trong l&amp;ograve;ngL&lt;br /&gt;
&lt;br /&gt;
- Chủ nh&amp;acirc;n! Tại sao lại kh&amp;ocirc;ng cho hắn tu luyện Kh&amp;ocirc;ng Sanh Diệt Hải lưu ly quyết của người m&amp;agrave; lại cho hắn tu luyện thứ ph&amp;aacute;p quyết n&amp;agrave;y?&lt;br /&gt;
&lt;br /&gt;
&amp;quot;H&amp;oacute;a ra tu luyện lại nguy hiểm như vậy.&amp;quot;&lt;br /&gt;
&lt;br /&gt;
Lạc Bắc bị ngọn lửa hừng hực bao phủ xung quanh khiến cho to&amp;agrave;n th&amp;acirc;n như bị đột ch&amp;aacute;y m&amp;agrave; nứt ra. Hắn theo bản năng định đ&amp;igrave;nh chỉ sự tu luyện nhưng lại ph&amp;aacute;t hiện bản th&amp;acirc;n kh&amp;ocirc;ng thể n&amp;agrave;o nh&amp;uacute;c nh&amp;iacute;ch.&lt;br /&gt;
&lt;br /&gt;
- C&amp;aacute;i cảm gi&amp;aacute;c như h&amp;ocirc;m nay mới chỉ l&amp;agrave; ch&amp;uacute;t đau khổ m&amp;agrave; th&amp;ocirc;i. Khi thực sự tu luyện th&amp;igrave; sự đau khổ c&amp;ograve;n khủng bố hơn đ&amp;acirc;y gấp trăm ngh&amp;igrave;n lần.&lt;br /&gt;
&lt;br /&gt;
Đ&amp;uacute;ng l&amp;uacute;c n&amp;agrave;y, Lạc Bắc đột nhi&amp;ecirc;n nhớ tới c&amp;acirc;u n&amp;oacute;i của Nguy&amp;ecirc;n Thi&amp;ecirc;n Y khi đưa hắn v&amp;agrave;o trong biển dung nham.&lt;br /&gt;
&lt;br /&gt;
- Đ&amp;acirc;y mới chỉ l&amp;agrave; bắt đầu. Ta nhất định phải cố gắng. - Trong gi&amp;acirc;y l&amp;aacute;t, t&amp;acirc;m ch&amp;iacute; của Lạc Bắc trở n&amp;ecirc;n hết sức vững v&amp;agrave;ng.&lt;br /&gt;
&lt;br /&gt;
Trong đầu Lạc Bắc lại một lần nửa tưởng tượng tới pho tượng phật m&amp;agrave;u v&amp;agrave;ng.&lt;br /&gt;
&lt;br /&gt;
Ngay lập tức trong Thức Hải của hắn xuất hiện pho tượng phật m&amp;agrave;u v&amp;agrave;ng kim cố gắng ngăn cản ngọn lửa v&amp;agrave; đ&amp;aacute;m ma thần xung quanh.&lt;br /&gt;
&lt;br /&gt;
Một tia linh kh&amp;iacute; của trời đất xen lẫn với ngọn lửa Th&amp;aacute;i Dương nhanh ch&amp;oacute;ng chui v&amp;agrave;o trong th&amp;acirc;n thể Lạc Bắc với tốc độ nhanh hơn. Cỏ dại quanh người hắn bị ngọn lửa Th&amp;aacute;i Dương đốt cho ch&amp;aacute;y s&amp;eacute;m, c&amp;ograve;n th&amp;acirc;n thể của Lạc Bắc như vừa từ trong nước ra, ho&amp;agrave;n to&amp;agrave;n ướt sũng.&lt;br /&gt;
&lt;br /&gt;
Tuy nhi&amp;ecirc;n th&amp;acirc;n thể của Lạc Bắc lại c&amp;agrave;ng l&amp;uacute;c c&amp;agrave;ng như bị bỏng. Mồ h&amp;ocirc;i tr&amp;ecirc;n người hắn nhanh ch&amp;oacute;ng bốc hơi sau đ&amp;oacute; lại xuất hiện, rồi lại bốc hơi khiến cho th&amp;acirc;n thể của hắn gầy đi, b&amp;ecirc;n ngo&amp;agrave;i b&amp;aacute;m một lớp muối. Đ&amp;ocirc;i m&amp;ocirc;i v&amp;agrave; kh&amp;oacute;e mắt của hắn kh&amp;ocirc; gi&amp;ograve;n, chảy m&amp;aacute;u tươi.&lt;br /&gt;
&lt;br /&gt;
Trong l&amp;uacute;c th&amp;acirc;n thể của hắn đang đau khổ th&amp;igrave; Thức Hải của hắn lại tăng l&amp;ecirc;n rất nhanh.&lt;br /&gt;
&lt;br /&gt;
Cảm gi&amp;aacute;c của hắn l&amp;uacute;c n&amp;agrave;y giống như cả lục phủ ngũ tạng cũng bị thi&amp;ecirc;u đốt.&lt;br /&gt;
&lt;br /&gt;
Tuy nhi&amp;ecirc;n th&amp;acirc;n thể của Lạc Bắc vẫn kh&amp;ocirc;ng nh&amp;uacute;c nh&amp;iacute;ch h&amp;uacute;t lấy tia s&amp;aacute;ng mặt trời v&amp;agrave; linh kh&amp;iacute; rồi dựa theo ph&amp;aacute;p quyết m&amp;agrave; lưu chuyển trong kinh mạch.&lt;br /&gt;
&lt;br /&gt;
Qu&amp;aacute; tr&amp;igrave;nh tuần ho&amp;agrave;n cứ diễn ra như vậy tới hơn ba mươi v&amp;ograve;ng th&amp;igrave; pho tượng Phật m&amp;agrave; Lạc Bắc tưởng tượng đột nhi&amp;ecirc;n tỏa ra &amp;aacute;nh s&amp;aacute;ng rực rỡ khiến cho biển lửa v&amp;agrave; đ&amp;aacute;m ma thần tan đi như băng tuyết.&lt;br /&gt;
&lt;br /&gt;
Trong Thức Hải của hắn một lần nữa trở lại s&amp;aacute;ng sủa. Chỉ c&amp;oacute; quả cầu vẫn đang xoay tr&amp;ograve;n. C&amp;oacute; điều m&amp;agrave;u của n&amp;oacute; từ đỏ đ&amp;atilde; chuyển sang v&amp;agrave;ng.&lt;br /&gt;
&lt;br /&gt;
Một tiếng răng rắc vang l&amp;ecirc;n, thể lực của Lạc Bắc đ&amp;atilde; chịu đựng tới cực hạn kh&amp;ocirc;ng c&amp;ograve;n chịu được nữa. Hắn mở mắt ra khiến cho vết m&amp;aacute;u c&amp;ugrave;ng với muối kh&amp;ocirc; tr&amp;ecirc;n mặt nứt k&amp;eacute;o theo cả d&amp;ograve;ng m&amp;aacute;u. Tuy nhi&amp;ecirc;n trong &amp;aacute;nh mắt của Lạc Bắc lại tr&amp;agrave;n ngập sự vui sướng.&lt;br /&gt;
&lt;br /&gt;
L&amp;atilde;o Triệu Nam đứng ở xa vẫn nh&amp;igrave;n hắn chăm ch&amp;uacute; liền thở ph&amp;agrave;o một tiếng. Trong đ&amp;ocirc;i mắt đục ngầu chợt l&amp;oacute;e l&amp;ecirc;n một tia s&amp;aacute;ng kh&amp;oacute; hiểu.&lt;br /&gt;
&lt;br /&gt;
L&amp;uacute;c n&amp;agrave;y, kh&amp;ocirc;ng ngờ Lạc Bắc đ&amp;atilde; nắm giữ được việc dẫn kh&amp;iacute; nhập thể trong quyển thứ nhất của Ma Ha gi&amp;agrave; la mật ph&amp;aacute;p, kết ấn th&amp;ocirc;ng suốt kinh mạch, th&amp;agrave;nh c&amp;ocirc;ng ở bước đầu ti&amp;ecirc;n.&lt;br /&gt;
&lt;br /&gt;
C&amp;ograve;n l&amp;atilde;o nh&amp;acirc;n cũng thả lỏng đ&amp;ocirc;i tay của m&amp;igrave;nh. L&amp;uacute;c n&amp;agrave;y, l&amp;atilde;o v&amp;agrave; Lạc Bắc đều kh&amp;ocirc;ng biết rằng tr&amp;ecirc;n một ngọn n&amp;uacute;i c&amp;aacute;ch đ&amp;oacute; kh&amp;ocirc;ng xa c&amp;oacute; một đ&amp;ocirc;i mắt đang lẳng lặng quan s&amp;aacute;t tất cả.&lt;br /&gt;
&lt;br /&gt;
Đ&amp;oacute; l&amp;agrave; một đ&amp;ocirc;i nữ nh&amp;acirc;n c&amp;oacute; thể n&amp;oacute;i l&amp;agrave; xinh đẹp tuyệt trần với đ&amp;ocirc;i mắt trong suốt.&lt;br /&gt;
&lt;br /&gt;
Hiện tại đ&amp;ocirc;i mắt trong suốt đ&amp;oacute; c&amp;ograve;n c&amp;oacute; một ch&amp;uacute;t ấm &amp;aacute;p, khen ngợi:&lt;br /&gt;
&lt;br /&gt;
- Lạc Bắc! Quả nhi&amp;ecirc;n ngươi kh&amp;ocirc;ng l&amp;agrave;m cho ta thất vọng.&lt;br /&gt;
&lt;br /&gt;
Trong một căn ph&amp;ograve;ng đầy m&amp;ugrave;i khiến cho người ta buồn n&amp;ocirc;n. Phần lớn diện t&amp;iacute;ch trong căn ph&amp;ograve;ng đều c&amp;oacute; những tấm da th&amp;uacute; m&amp;agrave;u đen, rải đầy những loại thảo dược kỳ lạ. Tr&amp;ecirc;n bức tường ph&amp;iacute;a Đ&amp;ocirc;ng c&amp;oacute; treo một bộ xương kỳ lạ, ph&amp;iacute;a dưới c&amp;oacute; một c&amp;aacute;i b&amp;agrave;n gỗ b&amp;agrave;y biện rất nhiều dụng cụ cắt gọt. Những dụng cụ đ&amp;oacute; nh&amp;igrave;n qua đều l&amp;agrave;m bằng bạc trắng mỏng như c&amp;aacute;nh ve nhưng đều rất sắc. Cạnh bức tường ph&amp;iacute;a ch&amp;iacute;nh Nam c&amp;oacute; hơn mười c&amp;aacute;i hũ, b&amp;ecirc;n trong kh&amp;ocirc;ng biết ng&amp;acirc;m c&amp;aacute;i g&amp;igrave;, nhưng mấy c&amp;aacute;i hũ gần cửa nhất c&amp;oacute; một c&amp;aacute;i c&amp;ograve;n chưa đậy nắp b&amp;ecirc;n trong l&amp;agrave; một thứ nước m&amp;agrave;u xanh biếc c&amp;ugrave;ng với một con thiềm thử m&amp;agrave;u đỏ rất to. Trong ph&amp;ograve;ng c&amp;oacute; một c&amp;aacute;i chậu than, với một c&amp;aacute;i nồi đen do kh&amp;oacute;i. B&amp;ecirc;n trong nồi c&amp;oacute; một thứ chất lỏng giống như mỡ m&amp;agrave;u đen với một đ&amp;aacute;m rắn rết đang giẫy dụa trong đ&amp;oacute;. C&amp;ograve;n nơi g&amp;oacute;c ph&amp;ograve;ng c&amp;oacute; đặt một c&amp;aacute;i điện thờ, b&amp;ecirc;n tr&amp;ecirc;n để một pho tượng cao ba thước. To&amp;agrave;n bộ điện thờ được phủ bởi một lớp vải bố m&amp;agrave;u đen, nh&amp;igrave;n qua v&amp;ocirc; c&amp;ugrave;ng thần b&amp;iacute; v&amp;agrave; y&amp;ecirc;u dị.&lt;br /&gt;
&lt;br /&gt;
Trước điện thờ c&amp;oacute; đặt một c&amp;aacute;i lư hương ba ch&amp;acirc;n cho thấy đ&amp;acirc;y kh&amp;ocirc;ng phải l&amp;agrave; thứ đồ trang sức đơn giản. Tin rằng, chủ nh&amp;acirc;n của gian ph&amp;ograve;ng n&amp;agrave;y hết sức t&amp;ocirc;n s&amp;ugrave;ng pho tượng đ&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
&amp;quot;Rầm&amp;quot; c&amp;aacute;nh cửa ph&amp;ograve;ng đột nhi&amp;ecirc;n bị người ta đẩy ra. Một nam tử người Mi&amp;ecirc;u c&amp;oacute; th&amp;acirc;n h&amp;igrave;nh cao lớn, nước da ngăm đen, tr&amp;ecirc;n mặt xăm đầy những h&amp;igrave;nh kỳ lạ. Từ nơi n&amp;agrave;y nh&amp;igrave;n ra ngo&amp;agrave;i cửa chỉ thấy một rặng n&amp;uacute;i m&amp;ecirc;nh m&amp;ocirc;ng v&amp;agrave; hơn mười c&amp;aacute;i nh&amp;agrave; s&amp;agrave;n đơn sơ.&lt;br /&gt;
&lt;br /&gt;
Căn ph&amp;ograve;ng n&amp;agrave;y cũng l&amp;agrave; một c&amp;aacute;i nh&amp;agrave; s&amp;agrave;n của người Mi&amp;ecirc;u.&lt;br /&gt;
&lt;br /&gt;
Đ&amp;acirc;y l&amp;agrave; một c&amp;aacute;i sơn trại trong d&amp;atilde;y n&amp;uacute;i hoang vu của người Mi&amp;ecirc;u. Cũng chỉ c&amp;oacute; người Mi&amp;ecirc;u quen sống trong những ho&amp;agrave;n cảnh kh&amp;oacute; khăn mới c&amp;oacute; thể ở đ&amp;acirc;y.&lt;br /&gt;
&lt;br /&gt;
- D&amp;aacute;t Tr&amp;aacute;t A Bố.&lt;br /&gt;
&lt;br /&gt;
Người c&amp;oacute; khu&amp;ocirc;n mặt xăm đầy những h&amp;igrave;nh th&amp;ugrave; v&amp;agrave; nước da ngăm đen, tr&amp;ecirc;n đầu cắm một sợi l&amp;ocirc;ng chim ch&amp;iacute;nh l&amp;agrave; thủ lĩnh của sơn trại n&amp;agrave;y - Đức Ng&amp;otilde;a Thải. C&amp;ograve;n người bị y gọi l&amp;agrave; D&amp;aacute;t Tr&amp;aacute;t A Bố ngồi b&amp;ecirc;n cạnh c&amp;aacute;i nồi đen liền ngẩng đầu l&amp;ecirc;n. Người đ&amp;oacute; l&amp;agrave; một l&amp;atilde;o nh&amp;acirc;n mặc một tấm da th&amp;uacute; loang lổ, m&amp;oacute;ng tay d&amp;agrave;i tới cả x&amp;iacute;ch, tr&amp;ecirc;n mặt che k&amp;iacute;n bởi những con thiềm thử. L&amp;atilde;o nh&amp;acirc;n cũng l&amp;agrave; đại tế ti được tất cả c&amp;aacute;c sơn trại của người Mi&amp;ecirc;u trong v&amp;ograve;ng trăm dặm v&amp;ocirc; c&amp;ugrave;ng t&amp;ocirc;n k&amp;iacute;nh.&lt;br /&gt;
&lt;br /&gt;
Tế ti của người Mi&amp;ecirc;u rất giỏi b&amp;oacute;i to&amp;aacute;n v&amp;agrave; d&amp;ugrave;ng thuốc. Những c&amp;aacute;i mụn tr&amp;ecirc;n mặt l&amp;atilde;o nh&amp;acirc;n ch&amp;iacute;nh l&amp;agrave; do thử thuốc m&amp;agrave; ra.&lt;br /&gt;
&lt;br /&gt;
- Kh&amp;ocirc;ng phải giật m&amp;igrave;nh. - L&amp;atilde;o nh&amp;acirc;n người mi&amp;ecirc;u cuộn m&amp;igrave;nh trong tấm da th&amp;uacute; loang lổ d&amp;ugrave;ng m&amp;oacute;ng tay lấy một &amp;iacute;t thuốc trong c&amp;aacute;i lọ nhỏ rồi bắn v&amp;agrave;o trong kh&amp;ocirc;ng trung:&lt;br /&gt;
&lt;br /&gt;
- C&amp;oacute; chuyện g&amp;igrave;?&lt;br /&gt;
&lt;br /&gt;
M&amp;ugrave;i thuốc cay nồng xộc l&amp;ecirc;n mũi khiến cho Đức Ng&amp;otilde;a Thải đang hết sức bất an ngửi thấy liền b&amp;igrave;nh tĩnh lại.&lt;/p&gt;
', 1, CAST(0x0000ADEF01131CA1 AS DateTime), CAST(0x0000ADEF01131CA1 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (3118, 4101, 2042, N'Chương 10: Điềm xấu ngập trời, kim sa diệt thần', N'&lt;p&gt;H&amp;oacute;a ra trong sơn trại vốn rất &amp;iacute;t người vậy m&amp;agrave; hai ng&amp;agrave;y qua lại c&amp;oacute; ba người mất t&amp;iacute;ch. Hơn nữa ba người đ&amp;oacute; đều l&amp;agrave; thanh ni&amp;ecirc;n ra ngo&amp;agrave;i săn th&amp;uacute; chưa về. Nguy&amp;ecirc;n Đức Ng&amp;otilde;a Thải cho rằng bọn họ gặp phải m&amp;atilde;nh th&amp;uacute;. Nhưng vừa rồi một trong số ba thanh ni&amp;ecirc;n mất t&amp;iacute;ch đ&amp;atilde; quay lại.&lt;br /&gt;
&lt;br /&gt;
M&amp;agrave; khi y trở về th&amp;igrave; kh&amp;ocirc;ng c&amp;ograve;n l&amp;agrave; một con người nữa.&lt;br /&gt;
&lt;br /&gt;
Bởi v&amp;igrave; to&amp;agrave;n th&amp;acirc;n y đẫm m&amp;aacute;u, một nửa khu&amp;ocirc;n mặt bị lột da để lộ xương trắng. Kinh khủng nhất đ&amp;oacute; l&amp;agrave; bụng của hắn kh&amp;ocirc;ng biết bị thứ g&amp;igrave; đ&amp;oacute; ph&amp;aacute; vỡ, ngay cả nội tạng cũng mất đi nhiều.&lt;br /&gt;
&lt;br /&gt;
Người thanh ni&amp;ecirc;n đ&amp;oacute; rải theo một đường m&amp;aacute;u trở về. Khi b&amp;aacute;m được v&amp;agrave;o h&amp;agrave;ng r&amp;agrave;o, hắn chỉ cố gắng n&amp;oacute;i được một c&amp;acirc;u:&lt;br /&gt;
&lt;br /&gt;
- Tất cả chạy mau. C&amp;oacute; một con y&amp;ecirc;u qu&amp;aacute;i rất đ&amp;aacute;ng sợ...&lt;br /&gt;
&lt;br /&gt;
Th&amp;igrave; đ&amp;atilde; chết.&lt;br /&gt;
&lt;br /&gt;
- Y&amp;ecirc;u qu&amp;aacute;i? - B&amp;agrave;n tay của l&amp;atilde;o nh&amp;acirc;n hơi run run, cũng kh&amp;ocirc;ng đi ra ngo&amp;agrave;i xem thi thể của người thanh ni&amp;ecirc;n m&amp;agrave; lấy ra một vi&amp;ecirc;n ngọc được m&amp;agrave; s&amp;aacute;ng b&amp;oacute;ng, đọc v&amp;agrave;i tiếng thổ ngữ rồi n&amp;eacute;m l&amp;ecirc;n kh&amp;ocirc;ng trung.&lt;br /&gt;
&lt;br /&gt;
Thanh ni&amp;ecirc;n trong trại người n&amp;agrave;o cũng l&amp;agrave; dũng sĩ. Cho d&amp;ugrave; c&amp;oacute; bị m&amp;atilde;nh th&amp;uacute; tấn c&amp;ocirc;ng, trọng thương tới chết th&amp;igrave; cũng kh&amp;ocirc;ng thể n&amp;oacute;i l&amp;agrave; thấy y&amp;ecirc;u qu&amp;aacute;i được.&lt;br /&gt;
&lt;br /&gt;
C&amp;aacute;i mai r&amp;ugrave;a v&amp;ugrave; một xuống rơi xuống đất. Chỉ c&amp;oacute; điều liếc mắt nh&amp;igrave;n th&amp;igrave; thấy dường như c&amp;oacute; một thứ g&amp;igrave; đ&amp;oacute; v&amp;ocirc; c&amp;ugrave;ng khủng bố từ trong mai r&amp;ugrave;a lao ra, đ&amp;aacute;nh về ph&amp;iacute;a l&amp;atilde;o nh&amp;acirc;n. L&amp;atilde;o nh&amp;acirc;n lảo đảo l&amp;ugrave;i lại ph&amp;iacute;a sau, ng&amp;atilde; xuống đất.&lt;br /&gt;
&lt;br /&gt;
M&amp;aacute;u tươi ngập trời! Đại hung.&lt;br /&gt;
&lt;br /&gt;
L&amp;atilde;o tế ti cuộn m&amp;igrave;nh trong tấm da th&amp;uacute; nh&amp;igrave;n ra được điều đ&amp;oacute;. L&amp;atilde;o c&amp;oacute; thể chữa trị bệnh tật cho người Mi&amp;ecirc;u nhưng lại kh&amp;ocirc;ng thể n&amp;agrave;o ngăn cản được đại hung. Cho d&amp;ugrave; ch&amp;iacute;nh l&amp;atilde;o cũng bị v&amp;ugrave;i lấp trong biển m&amp;aacute;u đ&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
L&amp;atilde;o lần m&amp;ograve; đứng đậy rồi quỳ xuống dưới điện thờ. Trong tay l&amp;atilde;o xuất hiện ba c&amp;acirc;y hương. Sau khi ch&amp;acirc;n xong, l&amp;atilde;o tế ti liền vạch tấm vải đen, cắm ba c&amp;acirc;y hương v&amp;agrave;o lư rồi c&amp;ugrave;ng với Đức Ng&amp;otilde;a Thải dập đầu.&lt;br /&gt;
&lt;br /&gt;
Tượng thần sau miếng vải đen đi ch&amp;acirc;n đất nhưng &amp;aacute;nh mắt trong suốt, dung nhan hết sức tinh xảo.&lt;br /&gt;
&lt;br /&gt;
..........&lt;br /&gt;
&lt;br /&gt;
V&amp;agrave;o đ&amp;ecirc;m....&lt;br /&gt;
&lt;br /&gt;
Một đ&amp;aacute;m sương m&amp;ugrave; m&amp;agrave;u đen từ từ lan theo vết m&amp;aacute;u về ph&amp;iacute;a trại của người Mi&amp;ecirc;u.&lt;br /&gt;
&lt;br /&gt;
Trong đ&amp;aacute;m sương m&amp;ugrave; m&amp;agrave;u đen c&amp;ograve;n c&amp;oacute; tiếng vang s&amp;agrave;n sạt giống như c&amp;oacute; một đống thịt bị k&amp;eacute;o từng bước một về ph&amp;iacute;a c&amp;aacute;i trại của người Mi&amp;ecirc;u.&lt;br /&gt;
&lt;br /&gt;
Rốt cuộc th&amp;igrave; đ&amp;acirc;y l&amp;agrave; sương m&amp;ugrave; hay l&amp;agrave; y&amp;ecirc;u kh&amp;iacute;?&lt;br /&gt;
&lt;br /&gt;
Trong sương m&amp;ugrave; đột nhi&amp;ecirc;n vang l&amp;ecirc;n &amp;acirc;m thanh giống như tiếng đang hưởng thụ thức ăn ngon.&lt;br /&gt;
&lt;br /&gt;
Đột nhi&amp;ecirc;n l&amp;agrave;n sương đen dừng lại.&lt;br /&gt;
&lt;br /&gt;
Bởi v&amp;igrave; trước t&amp;agrave;ng c&amp;acirc;y, c&amp;aacute;ch l&amp;agrave;n sương đen chừng hai trượng c&amp;oacute; một người đang đứng. Người đ&amp;oacute; đi ch&amp;acirc;n trần, mặc trường b&amp;agrave;o bằng vải th&amp;ocirc;, gương mặt anh tuấn.&lt;br /&gt;
&lt;br /&gt;
L&amp;agrave;n sương m&amp;ugrave; chợt h&amp;eacute; ra, b&amp;ecirc;n trong kh&amp;ocirc;ng ngờ c&amp;oacute; một h&amp;aacute;n tử mặc quần &amp;aacute;o d&amp;iacute;nh m&amp;aacute;u. Trong tay của y c&amp;ograve;n l&amp;ocirc;i theo một con hổ bị kho&amp;eacute;t thủng Thi&amp;ecirc;n Linh c&amp;aacute;i. C&amp;aacute;i &amp;acirc;m thanh kia kh&amp;ocirc;ng ngờ l&amp;agrave; do hắn đang ăn &amp;oacute;c của con hổ.&lt;br /&gt;
&lt;br /&gt;
H&amp;aacute;n tử đ&amp;oacute; ngẩng đầu l&amp;ecirc;n, nếu c&amp;oacute; người đi qua nh&amp;igrave;n thấy chắc chắn sẽ k&amp;ecirc;u l&amp;ecirc;n thất thanh. Chẳng tr&amp;aacute;ch m&amp;agrave; thanh ni&amp;ecirc;n người Mi&amp;ecirc;u lại gọi y l&amp;agrave; y&amp;ecirc;u qu&amp;aacute;i.&lt;br /&gt;
&lt;br /&gt;
Bởi v&amp;igrave; y đ&amp;uacute;ng l&amp;agrave; c&amp;oacute; một gương mặt dữ tợn giống hệt quỷ. Ngũ quan của y gần như bị k&amp;eacute;o lại một chỗ. Hơn nữa, khiến cho người ta kinh h&amp;atilde;i đ&amp;oacute; l&amp;agrave; ngũ quan của y li&amp;ecirc;n tục thay đổi. Hai con mắt th&amp;igrave; mắt tr&amp;aacute;i to, mắt phải nhỏ nhưng một l&amp;uacute;c th&amp;igrave; lại mắt phải to mắt tr&amp;aacute;i nhỏ, nh&amp;igrave;n chẳng kh&amp;aacute;c g&amp;igrave; do nhiều gương mặt gh&amp;eacute;p lại với nhau.&lt;br /&gt;
&lt;br /&gt;
Tuy nhi&amp;ecirc;n khi thấy người thanh ni&amp;ecirc;n đi ch&amp;acirc;n trần đ&amp;oacute;, người trong l&amp;agrave;n sương đen lại kinh h&amp;atilde;i.&lt;br /&gt;
&lt;br /&gt;
- Ngươi l&amp;agrave; ai? - Người trong l&amp;agrave;n sương nuốt một miếng nước bọt rồi hỏi.&lt;br /&gt;
&lt;br /&gt;
- Thập Nhị đ&amp;ocirc; thi&amp;ecirc;n thần s&amp;aacute;t ph&amp;aacute;p? - Người thanh ni&amp;ecirc;n đi ch&amp;acirc;n trần kh&amp;ocirc;ng trả lời c&amp;acirc;u hỏi của y m&amp;agrave; chỉ l&amp;ecirc;n tiếng n&amp;oacute;i một c&amp;aacute;ch lạnh l&amp;ugrave;ng:&lt;br /&gt;
&lt;br /&gt;
- C&amp;aacute;i loại người như ngươi nếu th&amp;ecirc;m một ch&amp;uacute;t nữa th&amp;igrave; cũng chỉ trở th&amp;agrave;nh một c&amp;aacute;i x&amp;aacute;c kh&amp;ocirc;ng hồn kh&amp;aacute;t m&amp;aacute;u m&amp;agrave; th&amp;ocirc;i...&lt;br /&gt;
&lt;br /&gt;
- Thật kh&amp;ocirc;ng? - Người thanh ni&amp;ecirc;n c&amp;ograve;n chưa n&amp;oacute;i xong th&amp;igrave; một vầng &amp;aacute;nh s&amp;aacute;ng m&amp;agrave;u xanh biếc từ miệng người trong l&amp;agrave;n sương đen đ&amp;atilde; thổi tới.&lt;br /&gt;
&lt;br /&gt;
Mặc d&amp;ugrave; người trong l&amp;agrave;n sương đen kh&amp;ocirc;ng biết người thanh ni&amp;ecirc;n đi ch&amp;acirc;n đất l&amp;agrave; ai nhưng y lại cảm gi&amp;aacute;c được s&amp;aacute;t &amp;yacute; từ th&amp;acirc;n của người thanh ni&amp;ecirc;n đ&amp;oacute; tỏa ra khiến cho bản th&amp;acirc;n phải n&amp;iacute;n thở.&lt;br /&gt;
&lt;br /&gt;
V&amp;igrave; vậy m&amp;agrave; y quyết định ti&amp;ecirc;n hạ thủ vi cường.&lt;br /&gt;
&lt;br /&gt;
Trong mắt người thanh ni&amp;ecirc;n chợt l&amp;oacute;e l&amp;ecirc;n một tia s&amp;aacute;ng c&amp;oacute; ch&amp;uacute;t kinh ngạc.&lt;br /&gt;
&lt;br /&gt;
Hắn kinh ngạc kh&amp;ocirc;ng phải v&amp;igrave; tu vi của người trong l&amp;agrave;n sương đen m&amp;agrave; l&amp;agrave; v&amp;igrave; trong vầng &amp;aacute;nh s&amp;aacute;ng m&amp;agrave;u lục ngoại trừ uy &amp;aacute;p hủy thi&amp;ecirc;n diệt địa ra th&amp;igrave; vẫn c&amp;ograve;n c&amp;oacute; một l&amp;agrave;n kh&amp;iacute; Ly hỏa v&amp;ocirc; c&amp;ugrave;ng tinh khiết, hơn nữa ch&amp;uacute;ng cũng kh&amp;ocirc;ng tản ra trong vầng &amp;aacute;nh s&amp;aacute;ng m&amp;agrave;u lục m&amp;agrave; đọng lại một chỗ, giống như một tia s&amp;aacute;ng lao thẳng tới người thanh ni&amp;ecirc;n khiến cho những bụi c&amp;acirc;y xung quanh phải dạt ra.&lt;br /&gt;
&lt;br /&gt;
V&amp;ocirc; c&amp;ugrave;ng ch&amp;acirc;n thật lại quy về một chỗ, đ&amp;oacute; kh&amp;ocirc;ng ngờ l&amp;agrave; một thứ ph&amp;aacute;p bảo cấp Địa Ti&amp;ecirc;n hiếm thấy.&lt;br /&gt;
&lt;br /&gt;
C&amp;ugrave;ng l&amp;uacute;c đ&amp;oacute;, dưới mặt đất trong mười trượng xung quanh xuất hiện v&amp;ocirc; số &amp;acirc;m hồn ph&amp;aacute;t ra những tiếng k&amp;ecirc;u th&amp;ecirc; lương, quấn lấy người thanh ni&amp;ecirc;n.&lt;br /&gt;
&lt;br /&gt;
Ph&amp;aacute;p bảo h&amp;ugrave;ng mạnh, c&amp;ocirc;ng ph&amp;aacute;p quỷ dị lại chiếm được ti&amp;ecirc;n cơ... Nhưng như vậy th&amp;igrave; người d&amp;iacute;nh đầy m&amp;aacute;u trong l&amp;agrave;n sương đen kia vẫn kh&amp;ocirc;ng d&amp;aacute;m khinh địch đối với người thanh ni&amp;ecirc;n.&lt;br /&gt;
&lt;br /&gt;
Một mảnh trăng lưỡi liềm đột nhi&amp;ecirc;n xoay quanh trước người thanh ni&amp;ecirc;n, tản ra &amp;aacute;nh s&amp;aacute;ng giống như những tua cờ &amp;ocirc;m lấy hắn. Vầng &amp;aacute;nh s&amp;aacute;ng m&amp;agrave;u xanh ngưng tự kh&amp;iacute; Ly Hỏa tinh thuần c&amp;ugrave;ng với &amp;acirc;m hồn nh&amp;agrave;o v&amp;agrave;o m&amp;agrave;n h&amp;agrave;o quang đ&amp;oacute; chẳng kh&amp;aacute;c g&amp;igrave; đụng phải một thứ trơn trượt m&amp;agrave; vọt sang một b&amp;ecirc;n.&lt;br /&gt;
&lt;br /&gt;
Trong t&amp;iacute;ch tắc, một tia s&amp;aacute;ng m&amp;agrave;u v&amp;agrave;ng từ trong tay người thanh ni&amp;ecirc;n bắn ra.&lt;br /&gt;
&lt;br /&gt;
Tia s&amp;aacute;ng đ&amp;oacute; giống như từ trong ng&amp;oacute;n tay của hắn rơi ra một hạt c&amp;aacute;t.&lt;br /&gt;
&lt;br /&gt;
Tuy nhi&amp;ecirc;n nam tử mặc quần &amp;aacute;o d&amp;iacute;nh m&amp;aacute;u trong l&amp;agrave;n sương đen vừa mới nh&amp;igrave;n thấy đ&amp;atilde; biến sắc bởi v&amp;igrave; y nhận ra điểm s&amp;aacute;ng m&amp;agrave;u v&amp;agrave;ng đ&amp;oacute; ẩn chứa lực lượng đủ để diệt thần, diệt ti&amp;ecirc;n.&lt;br /&gt;
&lt;br /&gt;
Y giống như nổi đi&amp;ecirc;n sử dụng to&amp;agrave;n bộ ph&amp;aacute;p lực ngưng tụ lại trong b&amp;agrave;n tay th&amp;agrave;nh một thanh cuồng đao m&amp;agrave;u đen. Nhưng một tiếng động vang l&amp;ecirc;n, điểm s&amp;aacute;ng m&amp;agrave;u v&amp;agrave;ng đ&amp;oacute; vừa mới chạm v&amp;agrave;o cuồng đao của y th&amp;igrave; một tiếng nổ đ&amp;atilde; vang l&amp;ecirc;n. Kh&amp;ocirc;ng chỉ thanh cuồng đao m&amp;agrave; đen, m&amp;agrave; ngay cả c&amp;aacute;nh tay của người trong l&amp;agrave;n sương cũng nổ tung.&lt;br /&gt;
&lt;br /&gt;
- Nguyệt hoa ph&amp;aacute;p lu&amp;acirc;n chuyển thế? Ngươi l&amp;agrave; t&amp;ocirc;ng chủ ph&amp;aacute;i La Phủ? - Nam tử mặc quần &amp;aacute;o d&amp;iacute;nh m&amp;agrave;u đổ mồ h&amp;ocirc;i như mưa, kh&amp;ocirc;ng biết l&amp;agrave; v&amp;igrave; đau đớn hay sợ h&amp;atilde;i, nhưng y vẫn đứng nguy&amp;ecirc;n tại chỗ kh&amp;ocirc;ng d&amp;aacute;m cử động. Bởi v&amp;igrave; y đ&amp;atilde; nhận ra người đ&amp;oacute; l&amp;agrave; ai. Nếu hắn muốn giết y th&amp;igrave; cho d&amp;ugrave; y c&amp;oacute; dốc hết sức cũng kh&amp;ocirc;ng thể n&amp;agrave;o trốn được.&lt;br /&gt;
&lt;br /&gt;
- Ngươi tự m&amp;igrave;nh kết th&amp;uacute;c đi. Nếu để ta ra tay th&amp;igrave; ngươi nhất định sẽ bị thần h&amp;igrave;nh c&amp;acirc;u diệt.&lt;br /&gt;
&lt;br /&gt;
Dưới vầng &amp;aacute;nh s&amp;aacute;ng bao phủ, người đối diện kh&amp;ocirc;ng thể nh&amp;igrave;n thấy r&amp;otilde; n&amp;eacute;t mặt của Nguy&amp;ecirc;n Thi&amp;ecirc;n Y&lt;br /&gt;
&lt;br /&gt;
Nam tử mặc quần &amp;aacute;o d&amp;iacute;nh m&amp;aacute;u kh&amp;ocirc;ng nhịn được lui về ph&amp;iacute;a sau, c&amp;ograve;n vầng &amp;aacute;nh s&amp;aacute;ng m&amp;agrave;u lục đ&amp;atilde; quay về th&amp;igrave; chập chờn l&amp;uacute;c hiện l&amp;uacute;c tắt.&lt;br /&gt;
&lt;br /&gt;
- Ng&amp;agrave;i v&amp;agrave; ta kh&amp;ocirc;ng o&amp;aacute;n kh&amp;ocirc;ng th&amp;ugrave;, chẳng lẽ kh&amp;ocirc;ng thể tha cho ta một con đường sống hay sao?&lt;br /&gt;
&lt;br /&gt;
Nguy&amp;ecirc;n Thi&amp;ecirc;n Y cất giọng hết sức lạnh l&amp;ugrave;ng:&lt;br /&gt;
&lt;br /&gt;
- Nếu kh&amp;ocirc;ng c&amp;oacute; ta ở đ&amp;acirc;y th&amp;igrave; ngươi v&amp;igrave; tu luyện ma th&amp;ocirc;n m&amp;agrave; t&amp;agrave;n s&amp;aacute;t c&amp;aacute;i th&amp;ocirc;n n&amp;agrave;y. Hơn nữa ngươi tu luyện l&amp;agrave; đạo s&amp;uacute;c sinh m&amp;agrave; c&amp;ograve;n muốn ta tha cho?&lt;br /&gt;
&lt;br /&gt;
Nam tử quần &amp;aacute;o d&amp;iacute;nh m&amp;aacute;u đau khổ cầu xin:&lt;br /&gt;
&lt;br /&gt;
- Chẳng qua chỉ l&amp;agrave; một đ&amp;aacute;m người miền n&amp;uacute;i th&amp;ocirc;i. Chỉ cần ng&amp;agrave;i c&amp;oacute; thể tha cho ta một mạng, ta nhất định sẽ b&amp;aacute;o đ&amp;aacute;p.. Ta c&amp;ograve;n biết nơi n&amp;agrave;o c&amp;oacute; mỏ V&amp;acirc;n đ&amp;agrave;m tinh kim. Chỉ cần ng&amp;agrave;i tha cho ta một con đường sống, ta sẽ n&amp;oacute;i chỗ đ&amp;oacute; cho ng&amp;agrave;i.&lt;br /&gt;
&lt;br /&gt;
V&amp;acirc;n Đ&amp;agrave;m tinh kim? Đ&amp;oacute; l&amp;agrave; thi&amp;ecirc;n t&amp;agrave;i ch&amp;iacute; bảo khiến cho người tu luyện đỏ mắt. Bởi v&amp;igrave; V&amp;acirc;n đ&amp;agrave;m tinh kim ngoại trừ t&amp;iacute;nh chất của n&amp;oacute; c&amp;ograve;n cứng hơn cả kim cương tinh kim, đối với phần lớn c&amp;aacute;c loại linh kh&amp;iacute; trong trời đất cũng kh&amp;ocirc;ng từ chối. C&amp;oacute; thể n&amp;oacute;i n&amp;oacute; l&amp;agrave; vật liệu d&amp;ugrave;ng để luyện chế nguy&amp;ecirc;n thai của ph&amp;aacute;p bảo v&amp;ocirc; c&amp;ugrave;ng tốt.&lt;br /&gt;
&lt;br /&gt;
Kh&amp;ocirc;ng ngờ nam tử đ&amp;oacute; lại c&amp;ograve;n biết một chỗ c&amp;oacute; mỏ.&lt;br /&gt;
&lt;br /&gt;
Một c&amp;aacute;i mỏ V&amp;acirc;n đ&amp;agrave;m tinh kim &amp;iacute;t nhất cũng đủ nguy&amp;ecirc;n liệu để l&amp;agrave;m nguy&amp;ecirc;n thai cho mười c&amp;aacute;i ph&amp;aacute;p bảo.&lt;br /&gt;
&lt;br /&gt;
Nhưng Nguy&amp;ecirc;n Thi&amp;ecirc;n Y chỉ lắc đầu...&lt;br /&gt;
&lt;br /&gt;
Bỏi v&amp;igrave; hắn kh&amp;ocirc;ng bao giờ đ&amp;agrave;m ph&amp;aacute;n điều kiện với một kẻ n&amp;agrave;o, nhất l&amp;agrave; điều kiện của một người tu đạo đ&amp;atilde; bước v&amp;agrave;o đạo s&amp;uacute;c sinh.&lt;br /&gt;
&lt;br /&gt;
Một tia s&amp;aacute;ng m&amp;agrave;u v&amp;agrave;ng l&amp;oacute;ng l&amp;aacute;nh tr&amp;ecirc;n đầu ng&amp;oacute;n tay của hắn.&lt;br /&gt;
&lt;br /&gt;
- C&amp;aacute;i t&amp;ecirc;n đi&amp;ecirc;n nh&amp;agrave; ngươi. Chẳng lẽ t&amp;iacute;nh mạng của một đ&amp;aacute;m người Mi&amp;ecirc;u so với mỏ V&amp;acirc;n đ&amp;agrave;m tinh kim lại kh&amp;ocirc;ng bằng sao?&lt;br /&gt;
&lt;br /&gt;
Nam tử mặc quần &amp;aacute;o d&amp;iacute;nh m&amp;aacute;u h&amp;eacute;t l&amp;ecirc;n một tiếng th&amp;ecirc; lương, vầng s&amp;aacute;ng m&amp;agrave;u lục đang lơ lửng trước mặt cũng s&amp;aacute;ng rực l&amp;ecirc;n. Tuy nhi&amp;ecirc;n vầng s&amp;aacute;ng đ&amp;oacute; kh&amp;ocirc;ng lao về ph&amp;iacute;a Nguy&amp;ecirc;n Thi&amp;ecirc;n Y m&amp;agrave; lại lao về ch&amp;iacute;nh y. Trong tiếng k&amp;ecirc;u th&amp;ecirc; lương của y, to&amp;agrave;n bộ th&amp;acirc;n thể liền bị vầng &amp;aacute;nh s&amp;aacute;ng m&amp;agrave;u lục l&amp;agrave;m cho h&amp;oacute;a th&amp;agrave;nh tro t&amp;agrave;n.&lt;br /&gt;
&lt;br /&gt;
Bởi v&amp;igrave; nam tử mặc quần &amp;aacute;o d&amp;iacute;nh m&amp;aacute;u biết Nguy&amp;ecirc;n Thi&amp;ecirc;n Y đ&amp;atilde; n&amp;oacute;i ra l&amp;agrave; l&amp;agrave;m.&lt;br /&gt;
&lt;br /&gt;
C&amp;ograve;n tu vi của Nguy&amp;ecirc;n Thi&amp;ecirc;n Y khiến cho y cơ bản kh&amp;ocirc;ng c&amp;ograve;n đường sống.&lt;br /&gt;
&lt;br /&gt;
Bởi v&amp;igrave; vậy m&amp;agrave; người c&amp;oacute; h&amp;igrave;nh dạng giống như y&amp;ecirc;u ma chỉ c&amp;oacute; thể tự s&amp;aacute;t trước khi Nguy&amp;ecirc;n Thi&amp;ecirc;n Y đ&amp;aacute;nh chết m&amp;igrave;nh.&lt;br /&gt;
&lt;br /&gt;
- Người k&amp;iacute;nh ta một tấc, ta k&amp;iacute;nh người một thước. Người lấn ta một thước, ta lấn lại một trượng. Đ&amp;oacute; l&amp;agrave; quy tắc của ph&amp;aacute;i La Ph&amp;ugrave;. Người coi ta l&amp;agrave; thần th&amp;igrave; ta l&amp;agrave;m sao c&amp;oacute; thể coi người l&amp;agrave; con kiến? - Nguy&amp;ecirc;n Thi&amp;ecirc;n Y n&amp;oacute;i một c&amp;aacute;ch thản nhi&amp;ecirc;n, tưởng như n&amp;oacute;i cho nam tử mặc quần &amp;aacute;o d&amp;iacute;nh m&amp;aacute;u m&amp;agrave; cũng như n&amp;oacute;i với m&amp;igrave;nh.&lt;br /&gt;
&lt;br /&gt;
Một tiếng động vang l&amp;ecirc;n, c&amp;aacute;i ph&amp;aacute;p bảo m&amp;agrave;u xanh ngưng tự th&amp;agrave;nh kh&amp;iacute; Ly Hỏa chỉ c&amp;ograve;n &amp;aacute;nh s&amp;aacute;ng ảm đạm, rơi xuống đất.&lt;br /&gt;
&lt;br /&gt;
Nguy&amp;ecirc;n Thi&amp;ecirc;n Y thi&amp;ecirc;n y đột nhi&amp;ecirc;n xuy&amp;ecirc;n qua khoảng c&amp;aacute;ch mấy trượng cầm lấy c&amp;aacute;i ph&amp;aacute;p bảo v&amp;agrave;o tay. Khi hắn xoay người, to&amp;agrave;n bộ những người trong th&amp;ocirc;n người mi&amp;ecirc;u đ&amp;atilde; quỳ rạp tr&amp;ecirc;n mặt đất v&amp;ocirc; c&amp;ugrave;ng th&amp;agrave;nh k&amp;iacute;nh.&lt;/p&gt;
', 1, CAST(0x0000ADEF01133D32 AS DateTime), CAST(0x0000ADEF01133D32 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (3119, 4101, 2042, N'Chương 11: Bí thuật nghịch thiên. Kim dịch ngưng đan', N'&lt;p&gt;Nơi n&amp;agrave;y cũng giống với v&amp;ocirc; v&amp;agrave;ng những nơi kh&amp;aacute;c tr&amp;ecirc;n đời, với v&amp;agrave;i d&amp;ograve;ng hắc &amp;aacute;m v&amp;agrave; tử vong.&lt;br /&gt;
&lt;br /&gt;
Quan s&amp;aacute;t c&amp;aacute;i thung lũng nơi lưng chừng n&amp;uacute;i rụng đầy l&amp;aacute; c&amp;acirc;y rừng, quanh năm suốt th&amp;aacute;ng sương mfu d&amp;agrave;y đặc. Đ&amp;acirc;y ch&amp;iacute;nh l&amp;agrave; sự đặc biệt của La Ph&amp;ugrave;. Người hay vật chỉ cần h&amp;uacute;t v&amp;agrave;o một ch&amp;uacute;t th&amp;igrave; sẽ bị chết thối v&amp;igrave; chướng kh&amp;iacute; kịch độc. Nhưng hiện tại trong một c&amp;aacute;i sơn cốc c&amp;oacute; chướng kh&amp;iacute; bao phủ lại c&amp;oacute; một nam nh&amp;acirc;n mặc &amp;aacute;o hồng đang đứng lẳng lặng. Th&amp;acirc;n thể y cao d&amp;agrave;i, b&amp;ecirc;n cạnh c&amp;ograve;n c&amp;oacute; một con sinh vật kỳ dị, th&amp;acirc;n hươu, đầu như chim tước với một c&amp;aacute;i sừng d&amp;agrave;i. Tr&amp;ecirc;n lưng c&amp;ograve;n c&amp;oacute; hoa văn m&amp;agrave;u v&amp;agrave;ng v&amp;agrave; m&amp;agrave;u đen.&lt;br /&gt;
&lt;br /&gt;
Khu&amp;ocirc;n mặt v&amp;agrave; t&amp;oacute;c của y được che phủ bởi một c&amp;aacute;i mặt nạ c&amp;oacute; đầy ch&amp;uacute; văn rườm r&amp;agrave;, chỉ để lộ ra ngo&amp;agrave;i một đ&amp;ocirc;i mắt ki&amp;ecirc;u ngạo v&amp;agrave; th&amp;acirc;m th&amp;uacute;y giống như chỉ bất cứ thứ g&amp;igrave; chỉ cần chạm v&amp;agrave;o &amp;aacute;nh mắt của hắn cũng sẽ bị ch&amp;aacute;y th&amp;agrave;nh tro t&amp;agrave;n.&lt;br /&gt;
&lt;br /&gt;
B&amp;ecirc;n ngo&amp;agrave;i thung lũng đầy chướng kh&amp;iacute; vốn c&amp;oacute; một số rắn rết v&amp;agrave; c&amp;ocirc;n tr&amp;ugrave;ng nhưng dường như ngoại trừ con th&amp;uacute; kỳ lạ đang ngồi xổm b&amp;ecirc;n cạnh y ra th&amp;igrave; tất cả những sinh vật kh&amp;aacute;c đều v&amp;igrave; sự ki&amp;ecirc;u ngạo của y m&amp;agrave; lo lắng, tranh nhau trốn tr&amp;aacute;nh.&lt;br /&gt;
&lt;br /&gt;
Kh&amp;ocirc;ng thể tưởng tượng một người ki&amp;ecirc;u ngạo lại c&amp;oacute; thể đạt tới sự đ&amp;aacute;ng sợ như vậy. Chiến mặt nạ bằng bạc với đầy những ch&amp;uacute; văn rườm r&amp;agrave; khiến cho khu&amp;ocirc;n mặt của y lạnh như băng, tạo ra cho người ta một c&amp;aacute;i ấn tượng kh&amp;oacute; qu&amp;ecirc;n.&lt;br /&gt;
&lt;br /&gt;
Bất chợt, chướng kh&amp;iacute; m&amp;agrave;u xanh v&amp;agrave; tr&amp;ecirc;n đầu y chợt từ từ tản ra rồi một c&amp;aacute;i b&amp;oacute;ng thước tha lướt gi&amp;oacute; m&amp;agrave; tới, nhanh ch&amp;oacute;ng hạ xuống.&lt;br /&gt;
&lt;br /&gt;
Như kh&amp;ocirc;ng muốn để cho người ta nh&amp;igrave;n thấy r&amp;otilde; mặt, nữ tử vận bộ cung trang m&amp;agrave;u t&amp;iacute;m nhạt c&amp;ograve;n phủ một lớp lụa mỏng l&amp;ecirc;n mặt. Tuy nhi&amp;ecirc;n chỉ cần từ c&amp;aacute;i kh&amp;iacute; chất của n&amp;agrave;ng cũng đủ khiến cho người ta cảm thấy rằng sau tấm lụa mỏng đ&amp;oacute; chắc chắn l&amp;agrave; dung nhan v&amp;agrave; th&amp;acirc;n thể l&amp;agrave;m cho ch&amp;uacute;ng nh&amp;acirc;n m&amp;ecirc; đắm.&lt;br /&gt;
&lt;br /&gt;
Hơi thở th&amp;aacute;nh khiết từ n&amp;agrave;ng tản ra chẳng kh&amp;aacute;c g&amp;igrave; ti&amp;ecirc;n tử tr&amp;ecirc;n cung trăng chứ kh&amp;ocirc;ng phải thuộc về c&amp;aacute;i thế giới n&amp;agrave;y.&lt;br /&gt;
&lt;br /&gt;
N&amp;oacute;ng v&amp;agrave; lạnh, hai người thần b&amp;iacute; ho&amp;agrave;n to&amp;agrave;n tr&amp;aacute;i ngược nhau lại đứng c&amp;ugrave;ng một chỗ trong sơn cốc.&lt;br /&gt;
&lt;br /&gt;
&amp;Aacute;nh mắt của nam tử m&amp;agrave;u đen th&amp;ocirc;i kh&amp;ocirc;ng nh&amp;igrave;n ra xa m&amp;agrave; quay sang sờ sờ đ&amp;agrave;u con dị th&amp;uacute; rồi chợt cười n&amp;oacute;i:&lt;br /&gt;
&lt;br /&gt;
- Uy lực Kh&amp;ocirc;ng Sanh diệt hải lưu ly quyết của hắn quả thực c&amp;oacute; thể s&amp;aacute;t thần diệt ti&amp;ecirc;n.&lt;br /&gt;
&lt;br /&gt;
- Ba mươi năm trước, Nguy&amp;ecirc;n Thi&amp;ecirc;n Y đ&amp;atilde; đạt tới cảnh giới Thi&amp;ecirc;n nh&amp;acirc;n hợp nhất kh&amp;ocirc;ng d&amp;iacute;nh bụi trần. Tu vi của hắn đ&amp;atilde; tới cảnh giới si&amp;ecirc;u ph&amp;agrave;m. - Nữ tử thần b&amp;iacute; tản ra kh&amp;iacute; chất giống như ti&amp;ecirc;n tử tr&amp;ecirc;n cung trăng l&amp;ecirc;n tiếng với ch&amp;uacute;t ngưỡng mộ:&lt;br /&gt;
&lt;br /&gt;
- Ta chỉ kh&amp;ocirc;ng hiểu tại sao y bắt ch&amp;uacute;ng ta lại l&amp;agrave; địch với Nguy&amp;ecirc;n Thi&amp;ecirc;n Y?&lt;br /&gt;
&lt;br /&gt;
- Cho d&amp;ugrave; y kh&amp;ocirc;ng cho ch&amp;uacute;ng ta tới th&amp;igrave; ta cũng tới. - Nam tử mang chiếc mặt nạ m&amp;agrave;u bạc h&amp;eacute; mắt.&lt;br /&gt;
&lt;br /&gt;
Trong mắt nữ tử c&amp;oacute; ch&amp;uacute;t kinh ngạc:&lt;br /&gt;
&lt;br /&gt;
- Tại sao?&lt;br /&gt;
&lt;br /&gt;
- Bởi v&amp;igrave; ta muốn biết rằng trong hai ch&amp;uacute;ng ta th&amp;igrave; rốt cuộc l&amp;agrave; ai mạnh hơn.&lt;br /&gt;
&lt;br /&gt;
- Ngươi qu&amp;aacute; cuồng vọng. - Nữ tử thần b&amp;iacute; n&amp;oacute;i một c&amp;aacute;ch lạnh nhạt:&lt;br /&gt;
&lt;br /&gt;
- Ngươi đừng qu&amp;ecirc;n ba mươi năm trước nguy&amp;ecirc;n thần của Thử Ly đ&amp;atilde; bị diệt.&lt;br /&gt;
&lt;br /&gt;
- Điều n&amp;agrave;y ta biết. - Nam tử mang mặt nạ m&amp;agrave;u bạc cất tiếng cười ki&amp;ecirc;u ngạo:&lt;br /&gt;
&lt;br /&gt;
- Ngươi đừng qu&amp;ecirc;n rằng Kh&amp;ocirc;ng Sanh Diệt hải lưu ly quyết của hắn cũng c&amp;oacute; nhược điểm, huống chi hắn c&amp;ograve;n c&amp;oacute; một nhược điểm tr&amp;iacute; mạng.&lt;br /&gt;
&lt;br /&gt;
Trong tiếng cười đi&amp;ecirc;n cuồng, con dị th&amp;uacute; b&amp;ecirc;n cạnh y cũng gầm nhẹ m&amp;agrave; nhe nanh ra.&lt;br /&gt;
&lt;br /&gt;
- Nhược điểm g&amp;igrave;?&lt;br /&gt;
&lt;br /&gt;
- Hắn so với ta lại c&amp;agrave;ng ki&amp;ecirc;u ngạo hơn. Ở La PH&amp;ugrave; xuất hiện một người tu luyện Thập Nhị đ&amp;ocirc; thi&amp;ecirc;n thần s&amp;aacute;t ph&amp;aacute;p, gần như c&amp;oacute; thể xuất ma s&amp;aacute;t nguy&amp;ecirc;n thần. Vậy m&amp;agrave; hắn chẳng th&amp;egrave;m hỏi, giết chết ngay. V&amp;igrave; thế m&amp;agrave; La Ph&amp;ugrave; chắc chắn sẽ phải x&amp;oacute;a t&amp;ecirc;n trong thế gian.&lt;br /&gt;
&lt;br /&gt;
.............&lt;br /&gt;
&lt;br /&gt;
Đại tế ti quấn người trong tấm da th&amp;uacute; quỳ rạp tr&amp;ecirc;n mặt đất ph&amp;aacute;t hiện vị thần của họ đang đi về ph&amp;iacute;a m&amp;igrave;nh.&lt;br /&gt;
&lt;br /&gt;
&amp;quot;Tr&amp;ecirc;n thế gian n&amp;agrave;y liệu c&amp;oacute; thần minh tồn tại hay kh&amp;ocirc;ng?&amp;quot;&lt;br /&gt;
&lt;br /&gt;
M&amp;agrave; đối với d&amp;acirc;n bản xứ người Mi&amp;ecirc;u ở La Ph&amp;ugrave; m&amp;agrave; n&amp;oacute;i th&amp;igrave; Nguy&amp;ecirc;n Thi&amp;ecirc;n Y che chở cho m&amp;igrave;nh cũng ch&amp;iacute;nh l&amp;agrave; thần.&lt;br /&gt;
&lt;br /&gt;
Chỉ c&amp;oacute; điều khiến cho l&amp;atilde;o nh&amp;acirc;n v&amp;oacute;c d&amp;aacute;ng tiều tụy ngạc nhi&amp;ecirc;n đ&amp;oacute; l&amp;agrave; trong dĩ v&amp;atilde;ng mỗi khi c&amp;oacute; tai họa gi&amp;aacute;ng xuống, Nguy&amp;ecirc;n Thi&amp;ecirc;n Y xuất hiện loại trừ tai họa xong th&amp;igrave; đều y&amp;ecirc;n lặng bỏ đi. Nhưng hiện tại Nguy&amp;ecirc;n Thi&amp;ecirc;n Y lại đi tới trước mặt l&amp;atilde;o:&lt;br /&gt;
&lt;br /&gt;
- D&amp;aacute;t Tr&amp;aacute; A Bố! Ta c&amp;oacute; chuyện cần ngươi gi&amp;uacute;p đỡ.&lt;br /&gt;
&lt;br /&gt;
Trong c&amp;aacute;i nh&amp;agrave; sản tản ra một thứ m&amp;ugrave;i kh&amp;oacute; chịu, l&amp;atilde;o nh&amp;acirc;n người Mi&amp;ecirc;u t&amp;ocirc;n s&amp;ugrave;ng lấy một cuộn da đ&amp;atilde; ố v&amp;agrave;ng từ trong một c&amp;aacute;i rương gỗ c&amp;oacute; tuổi c&amp;ograve;n nhiều hơn cả m&amp;igrave;nh, rồi từ từ mở ra.&lt;br /&gt;
&lt;br /&gt;
Tương truyền từ xưa trong bộ lạc người Mi&amp;ecirc;u c&amp;oacute; thể dung thuốc khiến cho người ta tho&amp;aacute;t thai ho&amp;aacute;n cốt, thay đổi kinh mạch. Tương truyền vu thuật đ&amp;oacute; l&amp;agrave; của thủy tổ người Mi&amp;ecirc;u l&amp;agrave; Xi Vưu truyền lại. Chiến sĩ sau khi trải qua vu thuật đ&amp;oacute; đều v&amp;ocirc; c&amp;ugrave;ng dũng m&amp;atilde;nh, th&amp;acirc;n thể rắn hơn kim cương. C&amp;aacute;i truyền thuyết của Xi Vưu từ thời thượng cổ chưa chắc l&amp;agrave; thực nhưng c&amp;aacute;i thứ vu thuật c&amp;oacute; thể thay đổi lực trời, đặc t&amp;iacute;nh của thai nhi từ khi c&amp;ograve;n ba th&amp;aacute;ng tuổi của người Mi&amp;ecirc;u l&amp;agrave; chuyện ho&amp;agrave;n to&amp;agrave;n c&amp;oacute; thật.&lt;br /&gt;
&lt;br /&gt;
L&amp;atilde;o nh&amp;acirc;n người Mi&amp;ecirc;u kh&amp;ocirc;ng hề hỏi tại sao Nguy&amp;ecirc;n Thi&amp;ecirc;n Y lại biết tế ti bộ lạc bọn họ lưu truyền thứ vu thuật như vậy. Trong suy nghĩ của l&amp;atilde;o th&amp;igrave; Nguy&amp;ecirc;n Thi&amp;ecirc;n Y chẳng kh&amp;aacute;c g&amp;igrave; một vị thần, kh&amp;ocirc;ng g&amp;igrave; kh&amp;ocirc;ng biết. Đ&amp;acirc;y cũng l&amp;agrave; sự s&amp;ugrave;ng b&amp;aacute;i cuồng nhiệt đối với thần linh. Nhưng cũng ch&amp;iacute;nh v&amp;agrave;i c&amp;aacute;i sự tin tưởng v&amp;agrave; s&amp;ugrave;ng b&amp;aacute;i đ&amp;oacute; mới khiến cho những bộ lạc thiểu số c&amp;oacute; thể sinh sống trong điều kiện, ho&amp;agrave;n cảnh khắc nghiệt bao nhi&amp;ecirc;u năm. L&amp;atilde;o nh&amp;acirc;n người kh&amp;ocirc; gầy như que củi, nh&amp;igrave;n chẳng kh&amp;aacute;c n&amp;agrave;o ngọn đ&amp;egrave;n dầu c&amp;oacute; thể tắt bất cứ l&amp;uacute;c n&amp;agrave;o đ&amp;oacute; của bộ lạc nhưng vẫn ki&amp;ecirc;n cường sống v&amp;agrave; được mọi người t&amp;ocirc;n k&amp;iacute;nh cũng kh&amp;ocirc;ng hỏi v&amp;igrave; sao Nguy&amp;ecirc;n Thi&amp;ecirc;n Y lại muốn d&amp;ugrave;ng thứ vu thuật đ&amp;oacute;. L&amp;atilde;o chỉ d&amp;ugrave;ng thứ thổ ngữ đặc biệt của tộc m&amp;agrave; n&amp;oacute;i:&lt;br /&gt;
&lt;br /&gt;
- C&amp;aacute;c loại dược liệu chỉ cần mười ng&amp;agrave;y l&amp;agrave; c&amp;oacute; thể chuẩn bị xong. Nhưng Hải Vương huyết ngọc v&amp;agrave; Thương Dương gi&amp;aacute;c....&lt;br /&gt;
&lt;br /&gt;
- Hải Vương huyết ngọc v&amp;agrave; Thương Vương gi&amp;aacute;c trong mười ng&amp;agrave;y ta sẽ mang tới. Ngươi chỉ cần chuẩn bị đầy đủ c&amp;aacute;c loại dược liệu kh&amp;aacute;c l&amp;agrave; dược. - Nguy&amp;ecirc;n Thi&amp;ecirc;n Y gật đầu rồi nios.&lt;br /&gt;
&lt;br /&gt;
- Chỉ c&amp;oacute; điều.... - L&amp;atilde;o nh&amp;acirc;n người Mi&amp;ecirc;u gật đầu định n&amp;oacute;i nhưng lại th&amp;ocirc;i.&lt;br /&gt;
&lt;br /&gt;
- C&amp;oacute; điều g&amp;igrave;?&lt;br /&gt;
&lt;br /&gt;
- Chỉ c&amp;oacute; điều hiện tại ngoại trừ Thương Dương gi&amp;aacute;c kh&amp;oacute; cầu ra th&amp;igrave; c&amp;aacute;i việc tho&amp;aacute;t thai ho&amp;aacute;n cốt, cải tạo kinh mạch rất đau đớn. Người b&amp;igrave;nh thường kh&amp;oacute; m&amp;agrave; chịu được. Trong tộc của ta cũng đ&amp;atilde; tới ng&amp;agrave;n năm kh&amp;ocirc;ng sử dụng loại b&amp;iacute; thuật nghịch thi&amp;ecirc;n n&amp;agrave;y.&lt;br /&gt;
&lt;br /&gt;
- Con đường tu đạo c&amp;oacute; nơi n&amp;agrave;o m&amp;agrave; kh&amp;ocirc;ng phải lấy sức con người nhỏ b&amp;eacute; m&amp;agrave; cầu tho&amp;aacute;t khỏi sinh l&amp;atilde;o bệnh tử, l&amp;agrave;m việc nghịch thi&amp;ecirc;n. Ch&amp;uacute;t đau khổ x&amp;aacute;c thịt đ&amp;oacute; c&amp;oacute; t&amp;iacute;nh l&amp;agrave; g&amp;igrave;. - Trong kh&amp;oacute;e mắt của Nguy&amp;ecirc;n Thi&amp;ecirc;n Y tho&amp;aacute;ng hiện l&amp;ecirc;n một ch&amp;uacute;t ấm &amp;aacute;p v&amp;agrave; ki&amp;ecirc;u ngạo:&lt;br /&gt;
&lt;br /&gt;
- Chưa n&amp;oacute;i đệ tử của La Ph&amp;ugrave; ch&amp;uacute;ng ta đ&amp;acirc;u c&amp;oacute; phải l&amp;agrave; người b&amp;igrave;nh thường.&lt;br /&gt;
&lt;br /&gt;
Đầu ti&amp;ecirc;n l&amp;atilde;o gi&amp;agrave; người Mi&amp;ecirc;u cảm thấy thoải m&amp;aacute;i rồi sau đ&amp;oacute; lại vui sướng. Truyền nh&amp;acirc;n c&amp;oacute; thể khiến cho hắn ki&amp;ecirc;u ngạo như vậy th&amp;igrave; rốt cuộc l&amp;agrave; dạng người thế n&amp;agrave;o&amp;gt;&lt;br /&gt;
&lt;br /&gt;
- D&amp;aacute;t Tr&amp;aacute;t A Bố! - L&amp;uacute;c đi ra khỏi cửa, Nguy&amp;ecirc;n Thi&amp;ecirc;n Y đột nhi&amp;ecirc;n quay người lại, nh&amp;igrave;n l&amp;atilde;o nh&amp;acirc;n g&amp;agrave;y như que củi m&amp;agrave; n&amp;oacute;i:&lt;br /&gt;
&lt;br /&gt;
- L&amp;agrave;m xong chuyện n&amp;agrave;y, ngươi đưa cả bộ lạc tạm thời dời khỏi La Ph&amp;ugrave;.&lt;br /&gt;
&lt;br /&gt;
- Tạm thời dời khỏi La Ph&amp;ugrave;? - L&amp;atilde;o nh&amp;acirc;n đang quỳ s&amp;aacute;t đất đưa tiễn Nguy&amp;ecirc;n Thi&amp;ecirc;n Y chợt giật m&amp;igrave;nh.&lt;br /&gt;
&lt;br /&gt;
Nguy&amp;ecirc;n Thi&amp;ecirc;n Y gật gật đầu:&lt;br /&gt;
&lt;br /&gt;
- Cũng kh&amp;ocirc;ng cần phải l&amp;acirc;u. Chỉ chừng hai th&amp;aacute;ng th&amp;igrave; c&amp;aacute;c ngươi c&amp;oacute; thể quay lại.&lt;br /&gt;
&lt;br /&gt;
V&amp;igrave; lời n&amp;oacute;i của Nguy&amp;ecirc;n Thi&amp;ecirc;n Y l&amp;agrave;m cho l&amp;atilde;o nh&amp;acirc;n giật m&amp;igrave;nh kh&amp;ocirc;ng ngẩng đầu l&amp;ecirc;n, tuy nhi&amp;ecirc;n đập v&amp;agrave;o mắt l&amp;atilde;o ch&amp;iacute;nh l&amp;agrave; miếng mai r&amp;ugrave;a vẫn c&amp;ograve;n nằm tr&amp;ecirc;n mặt đất.&lt;br /&gt;
&lt;br /&gt;
L&amp;atilde;o nh&amp;acirc;n nh&amp;igrave;n thấy m&amp;agrave; c&amp;agrave;ng sợ h&amp;atilde;i.&lt;br /&gt;
&lt;br /&gt;
&amp;Aacute;nh s&amp;aacute;ng đỏ như m&amp;aacute;u tr&amp;ecirc;n quẻ kh&amp;ocirc;ng ngờ vẫn chưa biến mất.&lt;br /&gt;
&lt;br /&gt;
Chẳng lẽ hung tướng của &amp;aacute;nh s&amp;aacute;ng đ&amp;oacute; li&amp;ecirc;n quan tới Nguy&amp;ecirc;n Thi&amp;ecirc;n Y?&lt;br /&gt;
&lt;br /&gt;
Đợi tới khi l&amp;atilde;o nh&amp;acirc;n tỉnh hồn lại th&amp;igrave; c&amp;aacute;i b&amp;oacute;ng m&amp;agrave;u trắng kh&amp;ocirc;ng nhiễm một hạt bụi đ&amp;atilde; biến mất.&lt;br /&gt;
&lt;br /&gt;
Nh&amp;igrave;n xuy&amp;ecirc;n qua c&amp;aacute;nh cửa gỗ vẫn c&amp;ograve;n lay động chỉ thấy c&amp;oacute; một vầng trăng s&amp;aacute;ng tỏ.&lt;br /&gt;
&lt;br /&gt;
..........&lt;br /&gt;
&lt;br /&gt;
&amp;quot;R&amp;agrave;o...r&amp;agrave;o...&amp;quot; Một trận mưa to đột nhi&amp;ecirc;n gi&amp;aacute;ng xuống.&lt;br /&gt;
&lt;br /&gt;
Bản th&amp;acirc;n La Ph&amp;ugrave; l&amp;agrave; một nơi n&amp;oacute;ng ẩm, lại c&amp;oacute; những rặng n&amp;uacute;i li&amp;ecirc;n mi&amp;ecirc;n khiến cho những trận mưa to kh&amp;ocirc;ng hề c&amp;oacute; dấu hiệu b&amp;aacute;o trước.&lt;br /&gt;
&lt;br /&gt;
Lạc Bắc ngồi xếp bằng tr&amp;ecirc;n một tảng đ&amp;aacute; dưới t&amp;agrave;ng c&amp;acirc;y, đ&amp;ocirc;i tay hắn xếp lại trước bụng. Sắc trời vừa mới sầm tối, cơn mưa c&amp;ograve;n chưa rơi xuống th&amp;igrave; hai tay của hắn chợt giật giật, một tay chỉ xuống đất, một tay chỉ l&amp;ecirc;n trời, ng&amp;oacute;n tay thay đổi, biến h&amp;oacute;a v&amp;agrave;i c&amp;aacute;i kết ấn rồi thở ph&amp;agrave;o một c&amp;aacute;i.&lt;br /&gt;
&lt;br /&gt;
Lạc Bắc liền mở mắt ra, rồi từ tr&amp;ecirc;n tảng đ&amp;aacute; đứng dậy.&lt;br /&gt;
&lt;br /&gt;
Kh&amp;aacute;c với những loại c&amp;ocirc;ng ph&amp;aacute;p kh&amp;aacute;c, Ma Ha Gi&amp;agrave; La mạt ph&amp;aacute;p hấp thu linh kh&amp;iacute; ch&amp;acirc;n hỏa của Th&amp;aacute;i Dương. Hiện tại sắc trời chuyển mưa khiến cho Lạc Bắc đ&amp;agrave;nh phải dừng tu luyện.&lt;br /&gt;
&lt;br /&gt;
Sau khi đứng thẳng người, hiện tại Lạc Bắc khiến cho người ta c&amp;oacute; cảm gi&amp;aacute;c khỏe mạnh. M&amp;agrave; bản th&amp;acirc;n hắn cũng cảm thấy to&amp;agrave;n th&amp;acirc;n s&amp;aacute;ng kho&amp;aacute;i, hơn nữa từ cổ đến tay c&amp;ograve;n c&amp;oacute; hai đường m&amp;agrave;u hồng di chuyển, giống như một d&amp;ograve;ng nước chảy. Sau khi h&amp;iacute;t một hơi thật s&amp;acirc;u, Lạc Bắc tập trung tinh thần đ&amp;aacute;nh một quyền v&amp;agrave;o khoảng kh&amp;ocirc;ng. Một tiếng động vang l&amp;ecirc;n, kh&amp;ocirc;ng kh&amp;iacute; trước mặt hắn kh&amp;ocirc;ng ngờ vang l&amp;ecirc;n một tiếng nổ nhỏ. Kh&amp;ocirc;ng kh&amp;iacute; trong suốt dao động giống như những gợn s&amp;oacute;ng c&amp;ograve;n tr&amp;ecirc;n nắm tay của hắn cũng xuất hiện một vầng kim quang.&lt;/p&gt;
', 1, CAST(0x0000ADEF01135B58 AS DateTime), CAST(0x0000ADEF01135B58 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (3120, 4101, 2042, N'Chương 12: Lòng người độc còn hơn cả yêu ma', N'&lt;p&gt;Lạc Bắc từ tr&amp;ecirc;n tảng đ&amp;aacute; nhảy xuống tập trung đ&amp;aacute;nh một quyền về ph&amp;iacute;a tảng đ&amp;aacute;. Những h&amp;ograve;n đ&amp;aacute; nhỏ bắn tứ tung, n&amp;uacute;i đ&amp;aacute; cứng như vậy m&amp;agrave; cũng xuất hiện một c&amp;aacute;i hố s&amp;acirc;u. C&amp;ograve;n Lạc Bắc chỉ cảm thấy c&amp;aacute;nh tay của m&amp;igrave;nh hơi t&amp;ecirc;, ngoại trừ một ch&amp;uacute;t trắng ra th&amp;igrave; ngay cả l&amp;agrave;n da cũng kh&amp;ocirc;ng hề bị ảnh hưởng.&lt;br /&gt;
&lt;br /&gt;
- Kh&amp;ocirc;ng thể ngờ được hiện tại ta cũng c&amp;oacute; được sức mạnh thế n&amp;agrave;y.&lt;br /&gt;
&lt;br /&gt;
L&amp;uacute;c n&amp;agrave;y cơn mưa đ&amp;atilde; đổ xuống tầm t&amp;atilde;. Tuy nhi&amp;ecirc;n Lạc Bắc vẫn cui mừng chẳng th&amp;egrave;m tr&amp;aacute;nh mưa, cứ vậy m&amp;agrave; chảy l&amp;ecirc;n dưới ngọn n&amp;uacute;i v&amp;ocirc; danh cao tận m&amp;acirc;y.&lt;br /&gt;
&lt;br /&gt;
So với ng&amp;agrave;y đầu ti&amp;ecirc;n, sợi x&amp;iacute;ch sắt b&amp;acirc;y giờ kh&amp;ocirc;ng c&amp;ograve;n l&amp;agrave; chuyện kh&amp;oacute; đối với hắn. Chẳng th&amp;egrave;m nghỉ ngơi, Lạc Bắc liền nhanh ch&amp;oacute;ng tr&amp;egrave;o l&amp;ecirc;n tới sơn động của song đầu Sơn vinh.&lt;br /&gt;
&lt;br /&gt;
- Kết ấn của hai quyển đầu ti&amp;ecirc;n ta đ&amp;atilde; ho&amp;agrave;n th&amp;agrave;nh, kh&amp;ocirc;ng biết rằng kim thi&amp;ecirc;n n&amp;oacute; như thế n&amp;agrave;o? - Lạc Bắc thầm nhủ. Hắn kh&amp;ocirc;ng tự chủ được uốn cong đầu lưỡi, tĩnh t&amp;acirc;m nội thi. L&amp;uacute;c n&amp;agrave;y, Lạc Bắc cảm nhận được sự thần kỳ của ph&amp;aacute;p quyết, dưới sự tĩnh t&amp;acirc;m nh&amp;igrave;n v&amp;agrave;o trong dường như xuy&amp;ecirc;n thấu tới tận thức hải v&amp;agrave; kinh mạch của bản th&amp;acirc;n. Lạc Bắc chỉ thấy một quả cầu m&amp;agrave;u v&amp;agrave;ng b&amp;oacute;ng đang lơ lửng trong Thức Hải. Quả cầu đ&amp;oacute; kh&amp;ocirc;ng hề giống với quả cầu m&amp;agrave;u đỏ h&amp;ocirc;m đầu ti&amp;ecirc;n, m&amp;agrave; giống như l&amp;agrave; một chất dịch sền sệt m&amp;agrave;u v&amp;agrave;ng kim. M&amp;agrave; tr&amp;ecirc;n quả cầu c&amp;ograve;n c&amp;oacute; nhưng đường v&amp;acirc;n chảy theo kinh mạch của hắn tới tận hai b&amp;agrave;n tay.&lt;br /&gt;
&lt;br /&gt;
- Kim dịch ngưng đan.&lt;br /&gt;
&lt;br /&gt;
Lạc Bắc thốt l&amp;ecirc;n tiếng k&amp;ecirc;u vui sướng.&lt;br /&gt;
&lt;br /&gt;
Ma Ha Gi&amp;agrave; La mật ph&amp;aacute;p tổng cộng c&amp;oacute; ba mươi bốn cuốn. Mỗi một cuốn đều c&amp;oacute; bộ ph&amp;aacute;p quyết kết ấn. Ngoại trừ ph&amp;aacute;p quyết của quyển thứ nhất l&amp;agrave; cơ sở dẫn kh&amp;iacute; nhập thể để Tr&amp;uacute;c Cơ ra, mỗi bộ c&amp;ocirc;ng ph&amp;aacute;p c&amp;ograve;n lại đều c&amp;oacute; c&amp;ocirc;ng dụng ri&amp;ecirc;ng. M&amp;agrave; Ma Ha Gi&amp;agrave; La mật ph&amp;aacute;p ch&amp;uacute; &amp;yacute; theo thứ tự tiến dần. Sau khi hiểu được kinh văn trong từng cuốn sở thuật cảnh giới mới c&amp;oacute; thể tu luyện kết ẩn.&lt;br /&gt;
&lt;br /&gt;
Hiện tại Lạc Bắc cũng đ&amp;atilde; c&amp;oacute; được sở thuật của quyển thứ nhất đ&amp;oacute; l&amp;agrave; Kim Dịch Ngưng đan thu đủ lực phục hổ.&lt;br /&gt;
&lt;br /&gt;
Lạc Bắc ngay cả những tri thức tu đạo cơ bản nhất cũng chưa từng tiếp x&amp;uacute;c vậy m&amp;agrave; đ&amp;atilde; tu luyện ngay thứ điển tịch cao th&amp;acirc;m như Ma Ha Gi&amp;agrave; La mật ph&amp;aacute;p n&amp;ecirc;n hắn cũng kh&amp;ocirc;ng biết rằng một khi đả th&amp;ocirc;ng kinh mạch từ N&amp;ecirc; Ho&amp;agrave;n cung tới hai tay l&amp;agrave; c&amp;oacute; thể ngưng tụ ch&amp;acirc;n hỏa của Th&amp;aacute;i Dương v&amp;agrave;o hai tay. Hắn cũng kh&amp;ocirc;ng biết Ma Ha Gi&amp;agrave; La mật ph&amp;aacute;p tu luyện t&amp;iacute;nh mạng nguy&amp;ecirc;n thần. Kim Dịch Ngưng đan tương đương với một vi&amp;ecirc;n ph&amp;ocirc;i thai. Đến khi đại th&amp;agrave;nh th&amp;igrave; vi&amp;ecirc;n ph&amp;ocirc;i thai sẽ h&amp;oacute;a th&amp;agrave;nh kim th&amp;acirc;n Di Đ&amp;agrave;. Đến l&amp;uacute;c đ&amp;oacute;, Nguy&amp;ecirc;n Thần sẽ dung h&amp;ograve;a khiến cho hắn thực sự h&amp;oacute;a th&amp;acirc;n.&lt;br /&gt;
&lt;br /&gt;
Lạc Bắc chỉ biết b&amp;acirc;y giờ bản th&amp;acirc;n m&amp;igrave;nh c&amp;oacute; thể tu luyện được quyển thứ hai.&lt;br /&gt;
&lt;br /&gt;
- Kh&amp;ocirc;ng biết sư phụ c&amp;oacute; cảm thấy ta tu luyện chậm qu&amp;aacute; hay, cho tới giờ mới bắt đầu tu luyện quyển thứ hai m&amp;agrave; thất vọng với ta hay kh&amp;ocirc;ng?&lt;br /&gt;
&lt;br /&gt;
Nh&amp;igrave;n l&amp;agrave;n mưa bụi ngo&amp;agrave;i sơn động, Lạc Bắc chợt nghĩ tới nếu c&amp;oacute; thể tu luyện tới quyển thứ mười ba, c&amp;oacute; thể ngự kh&amp;ocirc;ng giống như phật đ&amp;agrave; trong bức tranh, ẩn v&amp;agrave;o tầng m&amp;acirc;y, lơ lửng giữa kh&amp;ocirc;ng trung để hấp thu ch&amp;acirc;n hỏa Th&amp;aacute;i Dương m&amp;agrave; tu luyện, kh&amp;ocirc;ng cần phải để &amp;yacute; tới chuyện thời tiết. Nhưng nghĩ tới khi n&amp;agrave;o m&amp;igrave;nh mới c&amp;oacute; thể đạt tới quyển thứ mười ba, Lạc Bắc lại ủ rũ. Tuy nhi&amp;ecirc;n hắn kh&amp;ocirc;ng biết rằng mặc d&amp;ugrave; bản th&amp;acirc;n c&amp;oacute; tư chất b&amp;igrave;nh thường, kh&amp;ocirc;ng so được với người trời sinh kinh mạch đ&amp;atilde; c&amp;oacute; thể hấp thu ch&amp;acirc;n hỏa của Th&amp;aacute;i Dương với tốc độ nhanh như những c&amp;ocirc;ng ph&amp;aacute;p kh&amp;aacute;c, nhưng Ma Ha Gi&amp;agrave; La mật ph&amp;aacute;p đối với việc tu luyện cũng kh&amp;ocirc;ng phải l&amp;agrave; tốc độ hấp thu linh kh&amp;iacute; trong trời đất m&amp;agrave; l&amp;agrave; bản t&amp;acirc;m vững v&amp;agrave;ng. Lực lượng thuần t&amp;uacute;y chỉ l&amp;agrave; con dao hai lưỡi, kh&amp;ocirc;ng thể nắm trong tay ho&amp;agrave;n to&amp;agrave;n th&amp;igrave; bị thương đầu ti&amp;ecirc;n ch&amp;iacute;nh l&amp;agrave; m&amp;igrave;nh. Điều kh&amp;aacute;c biệt đ&amp;oacute; l&amp;agrave; c&amp;oacute; c&amp;ocirc;ng ph&amp;aacute;p tới khi sử dụng mới thể hiện, c&amp;ograve;n Ma Ha Gi&amp;agrave; La mật ph&amp;aacute;p th&amp;igrave; sau khi tu luyện sẽ c&amp;oacute; m&amp;agrave;u sắc. Huống chi c&amp;aacute;i c&amp;acirc;y Ti&amp;ecirc;u T&amp;acirc;y m&amp;agrave; song đầu Sơn vinh cho hắn đ&amp;atilde; được luyện h&amp;oacute;a ho&amp;agrave;n to&amp;agrave;n. Ti&amp;ecirc;u h&amp;oacute;a hết linh kh&amp;iacute; ẩn chứa trong c&amp;aacute;i c&amp;acirc;y đ&amp;oacute; l&amp;agrave; đủ để bằng người b&amp;igrave;nh thường khổ c&amp;ocirc;ng ng&amp;agrave;n ng&amp;agrave;y.&lt;br /&gt;
&lt;br /&gt;
Cho n&amp;ecirc;n tiến cảnh của Lạc Bắc đủ để cho người ki&amp;ecirc;u ngạo như Nguy&amp;ecirc;n Thi&amp;ecirc;n Y trong kh&amp;oacute;e mắt cũng cảm thấy ki&amp;ecirc;u ngạo v&amp;igrave; hắn.&lt;br /&gt;
&lt;br /&gt;
Nhưng hiện tại c&amp;oacute; lẽ vẫn c&amp;ograve;n chưa đủ...&lt;br /&gt;
&lt;br /&gt;
Trong l&amp;uacute;c hắn c&amp;ograve;n đang ủ rũ kh&amp;ocirc;ng biết phải bao nhi&amp;ecirc;u ng&amp;agrave;y nữa mới c&amp;oacute; thể gặp được sư phụ th&amp;igrave; Lạc Bắc đột nhi&amp;ecirc;n nh&amp;igrave;n thấy Nguy&amp;ecirc;n Thi&amp;ecirc;n Y xuất hiện trong hư kh&amp;ocirc;ng rồi đi thẳng tới chỗ m&amp;igrave;nh.&lt;br /&gt;
&lt;br /&gt;
...............&lt;br /&gt;
&lt;br /&gt;
Một bức tường bằng đ&amp;aacute; cao hơn một trượng, bao phủ to&amp;agrave;n bộ chu vi ngọn n&amp;uacute;i trong v&amp;ograve;ng trăm trượng. Mặt tường c&amp;oacute; m&amp;agrave;u trắng, b&amp;ecirc;n tr&amp;ecirc;n l&amp;agrave; ng&amp;oacute;i &amp;acirc;m dương m&amp;agrave;u đen k&amp;eacute;o d&amp;agrave;i chẳng kh&amp;aacute;c n&amp;agrave;o một con rồng khổng lồ. Con đường lớn nối liền với cửa được l&amp;oacute;t bằng đ&amp;aacute; tảng, b&amp;ecirc;n tr&amp;ecirc;n c&amp;oacute; kho&amp;eacute;t r&amp;atilde;nh tho&amp;aacute;t nước. Nh&amp;igrave;n to&amp;agrave;n bộ so với những điện thờ m&amp;agrave; Lạc Bắc nh&amp;igrave;n thấy trước đ&amp;acirc;y ở trong Thục c&amp;ograve;n lớn hơn tới bốn, năm lần. M&amp;agrave; kh&amp;ocirc;ng biết cả sơn m&amp;ocirc;n d&amp;ugrave;ng c&amp;aacute;i g&amp;igrave; t&amp;ocirc; vẽ nhưng nh&amp;igrave;n qua c&amp;oacute; thể n&amp;oacute;i l&amp;agrave; ho&amp;agrave;nh tr&amp;aacute;ng v&amp;agrave; h&amp;ugrave;ng vĩ.&lt;br /&gt;
&lt;br /&gt;
Do chứng kiến những rặng n&amp;uacute;i hoang vu cao ngất của La Ph&amp;ugrave; từ trước n&amp;ecirc;n Lạc Bắc đối với c&amp;aacute;i đỉnh n&amp;uacute;i cao trăm trượng cũng kh&amp;ocirc;ng c&amp;oacute; cảm gi&amp;aacute;c g&amp;igrave; đặc biệt. Tuy nhi&amp;ecirc;n nh&amp;igrave;n c&amp;aacute;i kiến tr&amp;uacute;c rộng lớn đ&amp;oacute;, c&amp;ugrave;ng với con đường lớn k&amp;eacute;o d&amp;agrave;i tới tận cửa, Lạc Bắc kh&amp;ocirc;ng nhịn được m&amp;agrave; hỏi:&lt;br /&gt;
&lt;br /&gt;
- Đ&amp;acirc;y l&amp;agrave; nơi n&amp;agrave;o?&lt;br /&gt;
&lt;br /&gt;
Tuy rằng phần lớn n&amp;eacute;t mặt của Nguy&amp;ecirc;n Thi&amp;ecirc;n Y lu&amp;ocirc;n giữ sự lạnh l&amp;ugrave;ng, chẳng kh&amp;aacute;c g&amp;igrave; những pho tượng trong miếu, cho d&amp;ugrave; ch&amp;uacute;ng sinh c&amp;oacute; thế n&amp;agrave;o cũng lu&amp;ocirc;n thờ ơ. Tuy nhi&amp;ecirc;n cho d&amp;ugrave; thế n&amp;agrave;o th&amp;igrave; Nguy&amp;ecirc;n Thi&amp;ecirc;n Y v&amp;agrave; l&amp;atilde;o Triệu Nam đều tạo cho Lạc Bắc một thứ cảm gi&amp;aacute;c của gia đ&amp;igrave;nh. Hiện tại, Lạc Bắc v&amp;agrave; Nguy&amp;ecirc;n Thi&amp;ecirc;n Y đứng c&amp;aacute;ch nhau một đoạn nhưng y ch&amp;iacute;nh l&amp;agrave; độ cao m&amp;agrave; Lạc Bắc lu&amp;ocirc;n ngưỡng mộ. M&amp;agrave; quan trọng nhất, từ khi Lạc Bắc leo l&amp;ecirc;n tới đỉnh n&amp;uacute;i th&amp;igrave; Nguy&amp;ecirc;n Thi&amp;ecirc;n Y dường như chưa bao giờ kh&amp;ocirc;ng trả lời Lạc Bắc một vấn đề n&amp;agrave;o.&lt;br /&gt;
&lt;br /&gt;
Thấy Lạc Bắc nh&amp;igrave;n cảnh vật trước mặt với &amp;aacute;nh mắt ao ước, Nguy&amp;ecirc;n Thi&amp;ecirc;n Y trả lời hắn:&lt;br /&gt;
&lt;br /&gt;
- Đ&amp;acirc;y l&amp;agrave; chỗ của Dược Vương t&amp;ocirc;ng.&lt;br /&gt;
&lt;br /&gt;
- Dược Vương t&amp;ocirc;ng? - Lạc Bắc ngắm nh&amp;igrave;n đỉnh n&amp;uacute;i c&amp;ugrave;ng với những kiến tr&amp;uacute;c h&amp;igrave;nh b&amp;aacute;t gi&amp;aacute;c rộng lớn k&amp;eacute;o d&amp;agrave;i. Trong kh&amp;ocirc;ng gian đ&amp;uacute;ng l&amp;agrave; c&amp;oacute; một m&amp;ugrave;i thuốc v&amp;agrave; c&amp;ograve;n c&amp;oacute;... Lạc Bắc kh&amp;ocirc;ng tự chủ được quay lại nh&amp;igrave;n Nguy&amp;ecirc;n Thi&amp;ecirc;n Y:&lt;br /&gt;
&lt;br /&gt;
- Sư phụ! Tại sao con cảm thấy linh kh&amp;iacute; ở nơi n&amp;agrave;y so với La Ph&amp;ugrave; ch&amp;uacute;ng ta kh&amp;ocirc;ng giống nhau lắm?&lt;br /&gt;
&lt;br /&gt;
- Thật kh&amp;ocirc;ng?&lt;br /&gt;
&lt;br /&gt;
Nguy&amp;ecirc;n Thi&amp;ecirc;n Y kh&amp;ocirc;ng ngờ Lạc Bắc lại cảm nhận được điều n&amp;oacute;. Y cũng kh&amp;ocirc;ng trả lời ngay m&amp;agrave; hỏi ngược lại:&lt;br /&gt;
&lt;br /&gt;
- Ngươi cảm thấy kh&amp;aacute;c nhau như thế n&amp;agrave;o?&lt;br /&gt;
&lt;br /&gt;
Lạc Bắc như đứng trong một kỳ thi, mất một l&amp;uacute;c l&amp;acirc;u mới c&amp;oacute; thể trả lời:&lt;br /&gt;
&lt;br /&gt;
- Linh kh&amp;iacute; của La Ph&amp;ugrave; ch&amp;uacute;ng ta dường như đậm hơn ở đ&amp;acirc;y c&amp;oacute; điều so ra th&amp;igrave; ở đ&amp;acirc;y nhẹ nh&amp;agrave;ng khoan kho&amp;aacute;i...&lt;br /&gt;
&lt;br /&gt;
N&amp;oacute;i tới đ&amp;acirc;y, Lạc Bắc liền dừng lại bởi v&amp;igrave; hắn định n&amp;oacute;i tiếp tới chuyện dơ bẩn. Tuy nhi&amp;ecirc;n nghĩ nếu d&amp;ugrave;ng từ ngữ kh&amp;ocirc;ng hay để mi&amp;ecirc;u tả La Ph&amp;ugrave;, Lạc Bắc cảm thấy kh&amp;ocirc;ng ổn. Nhưng điều khiến cho hắn kinh ngạc đ&amp;oacute; l&amp;agrave; kh&amp;ocirc;ng ngờ Nguy&amp;ecirc;n Thi&amp;ecirc;n Y lại gật đầu:&lt;br /&gt;
&lt;br /&gt;
- Kh&amp;ocirc;ng tồi! Linh kh&amp;iacute; ngũ h&amp;agrave;nh ẩn chứa trong trời đất cũng giống như kh&amp;iacute; huyết trong kinh mạch của con người. Linh kh&amp;iacute; trong linh mạch của La Ph&amp;ugrave; ch&amp;uacute;ng ta đầy đủ hơn Dược Vương t&amp;ocirc;ng nhưng La Ph&amp;ugrave; ch&amp;uacute;ng ta vốn l&amp;agrave; nơi n&amp;oacute;ng ẩm n&amp;ecirc;n từ xưa ẩn chứa nhiều kh&amp;iacute; dơ bẩn. C&amp;oacute; điều giữa hỗn loạn th&amp;igrave; luận về linh kh&amp;iacute; tinh khiết th&amp;igrave; ngay cả so với Dược Vương sơn cũng kh&amp;ocirc;ng thể n&amp;agrave;o bằng được.&lt;br /&gt;
&lt;br /&gt;
- Vậy khi ch&amp;uacute;ng ta tu luyện kh&amp;ocirc;ng phải l&amp;agrave; ở nơi c&amp;oacute; linh kh&amp;iacute; đầy đủ th&amp;igrave; nhanh hơn hay sao?&lt;br /&gt;
&lt;br /&gt;
- Tất nhi&amp;ecirc;n, phần lớn c&amp;ocirc;ng ph&amp;aacute;p tr&amp;ecirc;n thế gian đều biến linh kh&amp;iacute; trong trời đất th&amp;agrave;nh của m&amp;igrave;nh, chỉ c&amp;oacute; c&amp;ocirc;ng ph&amp;aacute;p của ch&amp;uacute;ng ta mới c&amp;oacute; thể bỏ qua linh kh&amp;iacute; trong trời đất m&amp;agrave; tu luyện kh&amp;iacute; dơ bẩn. C&amp;ocirc;ng ph&amp;aacute;p b&amp;igrave;nh thường th&amp;igrave; trong qu&amp;aacute; tr&amp;igrave;nh luyện h&amp;oacute;a hoặc h&amp;agrave;nh c&amp;ocirc;ng sẽ đ&amp;agrave;o thải ra ngo&amp;agrave;i. Giống như ngươi tu luyện Ma Ha Gi&amp;agrave; La mật ph&amp;aacute;p, kh&amp;iacute; dơ bẩn kh&amp;aacute;c nhau sẽ dẫn tới ảo cảnh thực cảnh kh&amp;aacute;c nhau, mức độ tu luyện cũng kh&amp;oacute; hơn nhiều.&lt;br /&gt;
&lt;br /&gt;
- Vậy tại sao ph&amp;aacute;i La Ph&amp;ugrave; ch&amp;uacute;ng ta lại tu luyện ở La Ph&amp;ugrave; m&amp;agrave; kh&amp;ocirc;ng đi chỗ kh&amp;aacute;c? - Lạc Bắc cảm thấy kh&amp;oacute; hiểu.&lt;br /&gt;
&lt;br /&gt;
Giọng điệu của Nguy&amp;ecirc;n Thi&amp;ecirc;n Y đột nhi&amp;ecirc;n trở n&amp;ecirc;n lạnh l&amp;ugrave;ng:&lt;br /&gt;
&lt;br /&gt;
- Những ngọn n&amp;uacute;i nổi tiếng tr&amp;ecirc;n thế gian n&amp;agrave;y, hay những nơi c&amp;oacute; đầy đủ linh kh&amp;iacute; đ&amp;atilde; bị c&amp;aacute;c danh m&amp;ocirc;n đại ph&amp;aacute;i chiếm rồi, sao c&amp;oacute; thể nhường cho người kh&amp;aacute;c. - Dừng lại một ch&amp;uacute;t, Nguy&amp;ecirc;n Thi&amp;ecirc;n Y lại n&amp;oacute;i tiếp:&lt;br /&gt;
&lt;br /&gt;
- Huống chi, người kh&amp;aacute;c cảm gi&amp;aacute;c kh&amp;ocirc;ng tốt nhưng với ph&amp;aacute;i La Ph&amp;ugrave; ch&amp;uacute;ng ta chưa chắc đ&amp;atilde; phải như vậy.&lt;br /&gt;
&lt;br /&gt;
Lạc Bắc c&amp;ograve;n chưa hiểu biết nhiều n&amp;ecirc;n lắng nghe tất cả những điều đ&amp;oacute; mặc d&amp;ugrave; c&amp;ograve;n kh&amp;ocirc;ng hiểu nhiều lắm.&lt;br /&gt;
&lt;br /&gt;
- L&amp;agrave; do sư phụ n&amp;oacute;i qu&amp;aacute; mức huyền ảo hay l&amp;agrave; do ta c&amp;ograve;n biết qu&amp;aacute; &amp;iacute;t về thế giới tu đạo?&lt;br /&gt;
&lt;br /&gt;
Từng l&amp;agrave; một người nh&amp;igrave;n thấy kiếm quang th&amp;igrave; nghĩ rằng đ&amp;oacute; l&amp;agrave; thần ti&amp;ecirc;n, trong đầu Lạc Bắc xuất hiện suy nghĩ đ&amp;oacute;. Sau đ&amp;oacute;, hắn tiếp tục t&amp;ograve; m&amp;ograve; quan s&amp;aacute;t Dược Vương sơn m&amp;agrave; hỏi:&lt;br /&gt;
&lt;br /&gt;
- Y thuật của Dược Vương t&amp;ocirc;ng c&amp;oacute; phải l&amp;agrave; thi&amp;ecirc;n hạ đệ nhất kh&amp;ocirc;ng?&lt;br /&gt;
&lt;br /&gt;
- Ngươi phải nhớ kỹ, cường giả thực sự kh&amp;ocirc;ng cần c&amp;aacute;i mẽ ngo&amp;agrave;i để thể hiện sự bất ph&amp;agrave;m của m&amp;igrave;nh. Một c&amp;aacute;i trận ph&amp;aacute;p chỉ cần mất ba ng&amp;agrave;y bố tr&amp;iacute; so với bức tường n&amp;agrave;y c&amp;ograve;n thực dụng hơn nhiều. - Nguy&amp;ecirc;n Thi&amp;ecirc;n Y nở nụ cười lạnh:&lt;br /&gt;
&lt;br /&gt;
- Ta chỉ biết l&amp;agrave; Ma tộc v&amp;agrave; Sắc Lặc trong Thập Vạn đại sơn c&amp;oacute; mấy l&amp;atilde;o gi&amp;agrave; đứng đầu về mặt n&amp;agrave;y. C&amp;ograve;n về phần Dược Vương t&amp;ocirc;ng th&amp;igrave; đối với c&amp;aacute;i đ&amp;oacute; chỉ mới được một nửa, tất cả đều l&amp;agrave; nhờ Thương Dương gi&amp;aacute;c. Đ&amp;oacute; cũng l&amp;agrave; c&amp;aacute;i m&amp;agrave; h&amp;ocirc;m nay ta đứa ngươi tới đ&amp;acirc;y để lấy.&lt;br /&gt;
&lt;br /&gt;
- Thương Dương gi&amp;aacute;c l&amp;agrave; c&amp;aacute;i g&amp;igrave;? Tại sao ch&amp;uacute;ng ta lại phải vượt ng&amp;agrave;n dặm xa x&amp;ocirc;i từ La Ph&amp;ugrave; tới tận đ&amp;acirc;y để lấy Thương Dương gi&amp;aacute;c?&lt;br /&gt;
&lt;br /&gt;
Kh&amp;ocirc;ng để cho Lạc Bắc kịp hỏi xong vấn đề đ&amp;oacute;, một đ&amp;aacute;m người ngựa với kh&amp;iacute; thế kh&amp;ocirc;ng tầm thường từ từ xuất hiện trước mắt hắn. Bốn con ngựa m&amp;agrave;u trắng muốt cao to k&amp;eacute;o theo tiếng nổ vang l&amp;agrave;m cho Lạc Bắc cảm gi&amp;aacute;c bọn họ giống như ở tr&amp;ecirc;n cao. Bốn con tuấn m&amp;atilde; k&amp;eacute;o theo một c&amp;aacute;i xe ngựa trang ho&amp;agrave;ng lộng lẫy, binh sĩ hai b&amp;ecirc;n cũng thể hiện đ&amp;uacute;ng mức th&amp;acirc;n phận của người đ&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
Nếu kh&amp;ocirc;ng phải l&amp;agrave; một tướng th&amp;igrave; cũng phải l&amp;agrave; vương hầu một phương.&lt;br /&gt;
&lt;br /&gt;
Chỉ cần nh&amp;igrave;n v&amp;agrave;ng bạc trang sức tr&amp;ecirc;n chiếc xe ngựa cũng đủ để nộp mười năm thuế cho một th&amp;ocirc;n trang với trăm hộ. M&amp;agrave; đ&amp;aacute;m binh sĩ đi hai b&amp;ecirc;n mặc bộ gi&amp;aacute;p bạc, nện bước rầm rập, tản ra một sự quả quyết v&amp;agrave; kh&amp;iacute; thế s&amp;aacute;t phạt m&amp;agrave; một thế gia tầm thường kh&amp;ocirc;ng khả năng c&amp;oacute; được.&lt;br /&gt;
&lt;br /&gt;
Đo&amp;agrave;n người xếp th&amp;agrave;nh h&amp;agrave;ng ngũ tới c&amp;aacute;ch Lạc Bắc v&amp;agrave; Nguy&amp;ecirc;n Thi&amp;ecirc;n Y chừng hai trượng th&amp;igrave; dừng lại. Một thiếu ni&amp;ecirc;n c&amp;oacute; gương mặt trắng v&amp;eacute;n r&amp;egrave;m chiếc xe ngựa l&amp;ecirc;n.&lt;br /&gt;
&lt;br /&gt;
Con đường được l&amp;oacute;t bằng đ&amp;aacute; tảng đủ rộng cho cả ba chiếc xe ngựa đi song song với nhau. Nhưng trong khu vực Nam Man th&amp;igrave; người của vương phủ Trường Lưu chưa bao giờ c&amp;oacute; th&amp;oacute;i quen đi đường v&amp;ograve;ng, thậm ch&amp;iacute; l&amp;agrave; nh&amp;iacute;ch một nửa c&amp;aacute;i b&amp;aacute;nh xe cũng kh&amp;ocirc;ng.&lt;br /&gt;
&lt;br /&gt;
Thiếu ni&amp;ecirc;n mặt trắng mặt trang phục bằng lục tơ tắm đứng nh&amp;igrave;n Nguy&amp;ecirc;n Thi&amp;ecirc;n Y v&amp;agrave; Lạc Bắc. Tr&amp;ecirc;n gương mặt non nớt của y xuất hiện một sự t&amp;agrave;n nhẫn v&amp;agrave; lạnh l&amp;ugrave;ng kh&amp;ocirc;ng hợp với tuổi. Trong suy nghĩ của y th&amp;igrave; Nguy&amp;ecirc;n Thi&amp;ecirc;n Y v&amp;agrave; Lạc Bắc nh&amp;igrave;n thấy xe của m&amp;igrave;nh th&amp;igrave; đừng c&amp;oacute; n&amp;oacute;i l&amp;agrave; đứng ở đ&amp;oacute; trước, m&amp;agrave; chỉ cần đi qua trước mặt họ cũng bị chịu phạt.&lt;br /&gt;
&lt;br /&gt;
- D&amp;acirc;n đen m&amp;agrave; cũng định l&amp;ecirc;n n&amp;uacute;i xin thuốc? C&amp;ograve;n kh&amp;ocirc;ng c&amp;uacute;t ra sau?&lt;br /&gt;
&lt;br /&gt;
Y cười lạnh một tiếng m&amp;agrave; liếc mắt nh&amp;igrave;n Lạc Bắc v&amp;agrave; Nguy&amp;ecirc;n Thi&amp;ecirc;n Y. Thấy hai người vẫn đứng im, thiếu ni&amp;ecirc;n sống trong quyền lực từ nhỏ n&amp;ecirc;n c&amp;oacute; t&amp;iacute;nh ki&amp;ecirc;u ngạo bẩm sinh liền giơ ng&amp;oacute;n tay trắng l&amp;ecirc;n. Một tia lửa ch&amp;oacute;i mắt lao thẳng về ph&amp;iacute;a Lạc Bắc v&amp;agrave; Nguy&amp;ecirc;n Thi&amp;ecirc;n Y.&lt;br /&gt;
&lt;br /&gt;
- Ngươi phải nhớ kỹ, l&amp;ograve;ng người c&amp;ograve;n độc hơn cả rắn rết.&lt;br /&gt;
&lt;br /&gt;
Lạc Bắc kh&amp;ocirc;ng ngờ được thiếu ni&amp;ecirc;n kh&amp;ocirc;ng th&amp;egrave;m n&amp;oacute;i một c&amp;acirc;u liền ph&amp;aacute;t ra một tia lửa m&amp;atilde;nh liệt như vậy. Mặc d&amp;ugrave; tia lửa đ&amp;oacute; kh&amp;ocirc;ng giống những g&amp;igrave; hắn thấy trước đ&amp;acirc;y, m&amp;agrave; so với ph&amp;aacute;p thuật của đ&amp;aacute;m người Di La ho&amp;agrave;n to&amp;agrave;n kh&amp;aacute;c xa. Nhưng người thường cũng kh&amp;ocirc;ng thể n&amp;agrave;o chống lại được ngọn lửa đ&amp;oacute;. Trong nh&amp;aacute;y mắt, quả cầu kim dịch trong Thức Hải của hắn tỏa ra &amp;aacute;nh s&amp;aacute;ng. Nhưng kh&amp;ocirc;ng để cho hắn kịp phản xạ, Nguy&amp;ecirc;n Thi&amp;ecirc;n Y đứng b&amp;ecirc;n cạnh đ&amp;atilde; l&amp;ecirc;n tiếng. M&amp;agrave; hắn cũng kh&amp;ocirc;ng nh&amp;igrave;n thấy động t&amp;aacute;c của sư phụ ra l&amp;agrave;m sao để cho tia lửa kia biến mất c&amp;aacute;ch m&amp;igrave;nh mấy thước.&lt;br /&gt;
&lt;br /&gt;
&amp;quot;L&amp;ograve;ng người độc c&amp;ograve;n hơn cả rắn rết.&amp;quot; Lạc Bắc lẩm bẩm c&amp;acirc;u n&amp;oacute;i đ&amp;oacute; m&amp;agrave; ghi nhớ trong l&amp;ograve;ng. C&amp;ograve;n người thiếu ni&amp;ecirc;n mặt cẩm y tr&amp;ecirc;n xe ngựa cũng biến sắc.&lt;br /&gt;
&lt;br /&gt;
Thiếu ni&amp;ecirc;n mặc cẩm y chuẩn bị ra tay tiếp th&amp;igrave; bị một đạo sĩ mặt d&amp;agrave;i như ngựa mặc đạo b&amp;agrave;o xanh giữ chặt. L&amp;agrave; l&amp;atilde;o sư của nhị c&amp;ocirc;ng tử Trường Lưu vương, c&amp;oacute; thể n&amp;oacute;i y l&amp;agrave; nh&amp;acirc;n vật được cung phụng số một trong vương phủ. C&amp;aacute;i thứ đạo thuật nho nhỏ đ&amp;oacute; y cũng c&amp;oacute; thể trong nh&amp;aacute;y mắt l&amp;agrave;m cho n&amp;oacute; biến mất. Nhưng điều khiến cho y kinh ngạc đ&amp;oacute; l&amp;agrave; kh&amp;ocirc;ng biết đối phương d&amp;ugrave;ng ph&amp;aacute;p thuật g&amp;igrave; để ngăn cản. Mang theo nghi hoặc, y v&amp;eacute;n r&amp;egrave;m l&amp;ecirc;n nh&amp;igrave;n ra ngo&amp;agrave;i th&amp;igrave; chỉ thấy một người thanh ni&amp;ecirc;n v&amp;agrave; một thiếu ni&amp;ecirc;n chừng mười tuổi. Hơn nữa cả hai đều mặc &amp;aacute;o bố, tr&amp;ecirc;n người kh&amp;ocirc;ng hề c&amp;oacute; dấu hiệu ph&amp;aacute;p lực của ph&amp;aacute;p bảo dao động. Thấy vậy, vị cung phụng của vương phủ liền nổi giận.&lt;br /&gt;
&lt;br /&gt;
- Cũng lắm cũng chỉ l&amp;agrave; t&amp;aacute;n tu qu&amp;ecirc; m&amp;ugrave;a kh&amp;ocirc;ng m&amp;ocirc;n ph&amp;aacute;i m&amp;agrave; cũng d&amp;aacute;m đấu ph&amp;eacute;p trước mặt ta?&lt;br /&gt;
&lt;br /&gt;
T&amp;ecirc;n đạo sĩ ngồi trong xe lấy ra một c&amp;aacute;i ch&amp;eacute;n gỗ m&amp;agrave;u xanh. Tr&amp;ecirc;n c&amp;aacute;i ch&amp;eacute;n, ngoại trừ những đường v&amp;acirc;n gỗ ra th&amp;igrave; kh&amp;ocirc;ng c&amp;ograve;n g&amp;igrave; đặc sắc. Nhưng y mới đưa tay tr&amp;aacute;i sờ c&amp;aacute;i ch&amp;eacute;n th&amp;igrave; n&amp;oacute; liền tản ra &amp;aacute;nh s&amp;aacute;ng xanh, bao phủ cả c&amp;aacute;i xe v&amp;agrave;o b&amp;ecirc;n trong. C&amp;ugrave;ng l&amp;uacute;c đ&amp;oacute;, tay phải y mở c&amp;aacute;i t&amp;uacute;i tơ b&amp;ecirc;n h&amp;ocirc;ng rồi bắt ph&amp;aacute;p quyết. Từ trong t&amp;uacute;i tơ đột nhi&amp;ecirc;n bắn ra hơn mười điểm s&amp;aacute;ng m&amp;agrave;u v&amp;agrave;ng sẫm k&amp;ecirc;u ong ong. Con ngươi của Lạc Bắc co lại khi thấy những điểm s&amp;aacute;ng đ&amp;oacute; ch&amp;iacute;nh l&amp;agrave; những con rết to bằng ng&amp;oacute;n &amp;uacute;t c&amp;oacute; c&amp;aacute;nh mỏng như c&amp;aacute;nh ve tỏa ra &amp;aacute;nh s&amp;aacute;ng m&amp;agrave;u v&amp;agrave;ng. Tr&amp;ecirc;n lưng mỗi con c&amp;oacute; một đường chỉ m&amp;agrave;u đen k&amp;eacute;o từ đầu tới đu&amp;ocirc;i.&lt;br /&gt;
&lt;br /&gt;
Phải n&amp;oacute;i t&amp;ecirc;n đạo sĩ đ&amp;oacute; c&amp;ocirc;ng thủ rất tốt. Trước ti&amp;ecirc;n y lấy ph&amp;aacute;p bảo để bảo vệ m&amp;igrave;nh, rồi sau đ&amp;oacute; ph&amp;aacute;t động c&amp;ocirc;ng k&amp;iacute;ch. D&amp;ugrave;ng ph&amp;aacute;p giống hệt một c&amp;aacute;ch b&amp;agrave;i bản như vậy chứng tỏ t&amp;ecirc;n đạo sĩ l&amp;agrave; cao thủ của một ph&amp;aacute;i lớn n&amp;agrave;o đ&amp;oacute;. M&amp;agrave; mỗi một con rết c&amp;oacute; uy lực chẳng kh&amp;aacute;c g&amp;igrave; một phi kiếm, mức độ linh hoạt cũng hơn chứ kh&amp;ocirc;ng hề k&amp;eacute;m.&lt;br /&gt;
&lt;br /&gt;
- Lạc Bắc! Ngươi phải nhớ kỹ, quy tắc vận h&amp;agrave;nh của thi&amp;ecirc;n đạo đ&amp;oacute; l&amp;agrave; c&amp;aacute; lớn nuốt c&amp;aacute; b&amp;eacute;.&lt;br /&gt;
&lt;br /&gt;
Tuy nhi&amp;ecirc;n Nguy&amp;ecirc;n Thi&amp;ecirc;n Y vẫn thản nhi&amp;ecirc;n m&amp;agrave; n&amp;oacute;i với Lạc Bắc một c&amp;acirc;u như vậy. Trong nh&amp;aacute;y mắt khi t&amp;ecirc;n đạo sĩ thả ra con rết, y liền kết mười c&amp;aacute;i ấn huyền ảo. Trong ph&amp;uacute;t chốc, kh&amp;ocirc;ng trung ng&amp;agrave;n dặm xung quanh vốn kh&amp;ocirc;ng c&amp;oacute; m&amp;acirc;y liền vang l&amp;ecirc;n tiếng s&amp;eacute;t. M&amp;acirc;y đen k&amp;eacute;o tới &amp;ugrave;n &amp;ugrave;n, c&amp;ugrave;ng với s&amp;aacute;u c&amp;aacute;i cột lửa từ dưới đất lao thẳng l&amp;ecirc;n trời cao khiến cho cả kh&amp;ocirc;ng trung đang tối sầm lại nhuốm m&amp;agrave;u đỏ. Mấy con rết so với đường k&amp;iacute;nh của mấy cột lửa đ&amp;oacute; chẳng kh&amp;aacute;c g&amp;igrave; mấy con muỗi, liền bị đốt ch&amp;aacute;y th&amp;agrave;nh mấy đốm lửa nhỏ.&lt;br /&gt;
&lt;br /&gt;
&amp;Aacute;p lực v&amp;ocirc; c&amp;ugrave;ng v&amp;ocirc; tận nhanh ch&amp;oacute;ng tản ra.&lt;br /&gt;
&lt;br /&gt;
&amp;quot;Đ&amp;acirc;y l&amp;agrave; c&amp;aacute;i g&amp;igrave;?&amp;quot;&lt;br /&gt;
&lt;br /&gt;
Tất cả đo&amp;agrave;n người của phủ Trường Lưu vương nh&amp;igrave;n thấy cột lửa tản ra kh&amp;iacute; thế hủy thi&amp;ecirc;n diệt địa th&amp;igrave; v&amp;ocirc; c&amp;ugrave;ng kinh h&amp;atilde;i.&lt;br /&gt;
&lt;br /&gt;
Quả thực, s&amp;aacute;u c&amp;aacute;i cột lửa x&amp;ocirc;ng thẳng l&amp;ecirc;n trời chẳng kh&amp;aacute;c g&amp;igrave; s&amp;aacute;u con hỏa long.&lt;br /&gt;
&lt;br /&gt;
C&amp;aacute;i cảnh tượng đ&amp;oacute; cũng kh&amp;ocirc;ng cho nguy&amp;ecirc;n thần của t&amp;ecirc;n đạo sĩ trong xe ngựa bị tr&amp;uacute;ng đ&amp;ograve;n nặng. Dưới &amp;aacute;p lực khủng bố như vậy, kh&amp;oacute;e miệng của y xuất hiện một đường m&amp;aacute;u. Y chỉ biết cuộn m&amp;igrave;nh trong xe ngựa m&amp;agrave; run rẩy, theo bản năng khống chế chặt c&amp;aacute;i ch&amp;eacute;n gỗ kia, cố gẳng ph&amp;aacute;t ra &amp;aacute;nh s&amp;aacute;ng m&amp;agrave;u xanh.&lt;br /&gt;
&lt;br /&gt;
Tất cả người d&amp;acirc;n trăm dặm quanh đ&amp;oacute; đều nh&amp;igrave;n l&amp;ecirc;n s&amp;aacute;u c&amp;aacute;i cột lửa chọc trời c&amp;ugrave;ng với m&amp;acirc;y đen cuồn cuộn xung quanh tạo th&amp;agrave;nh cảnh tượng quỷ dị m&amp;agrave; đẹp đẽ.&lt;br /&gt;
&lt;br /&gt;
M&amp;aacute;i t&amp;oacute;c của Nguy&amp;ecirc;n Thi&amp;ecirc;n Y kh&amp;ocirc;ng gi&amp;oacute; m&amp;agrave; bay, th&amp;acirc;n h&amp;igrave;nh y từ từ lơ lửng tr&amp;ecirc;n kh&amp;ocirc;ng trung.&lt;br /&gt;
&lt;br /&gt;
Lạc Bắc ngẩng đầu l&amp;ecirc;n. Trong tầm mắt của hắn, Nguy&amp;ecirc;n Thi&amp;ecirc;n Y dang hai tay ra, cuồng phong v&amp;agrave; ngọn lửa bay xung quanh th&amp;acirc;n thể y. &amp;Aacute;nh lửa đỏ rực chiếu l&amp;ecirc;n bộ quần &amp;aacute;o của Nguy&amp;ecirc;n Thi&amp;ecirc;n Y khiến cho g&amp;atilde; giống hệt như một ma thần.&lt;br /&gt;
&lt;br /&gt;
S&amp;aacute;u c&amp;aacute;i cột lửa khổng lồ giống như b&amp;ocirc;ng hoa sen nở rộng trong truyền thuyết từ thủa thi&amp;ecirc;n địa c&amp;ograve;n sơ khai.&lt;br /&gt;
&lt;br /&gt;
Chỉ c&amp;oacute; điều tr&amp;ecirc;n mỗi c&amp;aacute;nh hoa lại c&amp;oacute; ngọn lửa li&amp;ecirc;n tục l&amp;oacute;e l&amp;ecirc;n. T&amp;ecirc;n đạo sĩ ở trong xe ngựa của phủ Trường Lưu vương chật vật ph&amp;aacute;t ra &amp;aacute;nh s&amp;aacute;ng m&amp;agrave;u xanh nhưng tất cả đều h&amp;oacute;a th&amp;agrave;nh v&amp;ocirc; h&amp;igrave;nh.&lt;br /&gt;
&lt;br /&gt;
C&amp;aacute;i xe ngựa đẹp đẽ c&amp;ugrave;ng với t&amp;ecirc;n đạo sĩ &amp;aacute;o xanh trong nh&amp;aacute;y mắt biến mất trong ngọn lửa. C&amp;ograve;n t&amp;ecirc;n c&amp;ocirc;ng tử c&amp;oacute; n&amp;eacute;t mặt t&amp;agrave;n nhẫn th&amp;igrave; quần &amp;aacute;o ch&amp;aacute;y hết, lăn lộn tr&amp;ecirc;n mặt đất m&amp;agrave; k&amp;ecirc;u la thảm thiết.&lt;br /&gt;
&lt;br /&gt;
Nhưng to&amp;agrave;n bộ đ&amp;aacute;m người hầu của vương phủ kh&amp;ocirc;ng hề c&amp;oacute; một ai d&amp;aacute;m tới gi&amp;uacute;p y dập lửa. Bởi v&amp;igrave; chỉ cần đứng c&amp;aacute;ch t&amp;ecirc;n đạo sĩ v&amp;agrave; thiếu ni&amp;ecirc;n mặc cẩm y chừng một bước th&amp;igrave; ngọn lửa đ&amp;oacute; lại kh&amp;ocirc;ng hề ảnh hưởng tới họ.&lt;br /&gt;
&lt;br /&gt;
- S&amp;aacute;o đạo Phật nghiệp hỏa Hồng li&amp;ecirc;n!&lt;br /&gt;
&lt;br /&gt;
- Người n&amp;agrave;y l&amp;agrave; ai?&lt;br /&gt;
&lt;br /&gt;
Tr&amp;ecirc;n đỉnh n&amp;uacute;i xa xa, tại một ng&amp;ocirc;i lầu c&amp;oacute; mười hai tầng của Dược Vương t&amp;ocirc;ng, một l&amp;atilde;o nh&amp;acirc;n mặc trang phục m&amp;agrave;u t&amp;iacute;m, kinh h&amp;atilde;i nh&amp;igrave;n hỏa li&amp;ecirc;n nở rộ tr&amp;ecirc;n bầu trời. Ngay cả ba quả cầu trơn b&amp;oacute;ng trong tay l&amp;atilde;o cũng rơi xuống đất l&amp;uacute;c n&amp;agrave;o kh&amp;ocirc;ng biết.&lt;br /&gt;
&lt;br /&gt;
- S&amp;aacute;u đạo phật nghiệp Hỏa hồng li&amp;ecirc;n.&lt;br /&gt;
&lt;br /&gt;
Một thứ ph&amp;aacute;p thuật của Lu&amp;acirc;n Bố tự từ ng&amp;agrave;n năm nay chỉ mới xuất hiện v&amp;agrave;i lần, vậy m&amp;agrave; được Nguy&amp;ecirc;n Thi&amp;ecirc;n Y d&amp;ugrave;ng để đối ph&amp;oacute; với một người tu đạo hạng ba th&amp;igrave; đ&amp;uacute;ng l&amp;agrave; giết g&amp;agrave; d&amp;ugrave;ng dao mổ tr&amp;acirc;u. Tuy nhi&amp;ecirc;n đối với đ&amp;aacute;m người của phủ Trường Lưu vương th&amp;igrave; đ&amp;oacute; đ&amp;uacute;ng l&amp;agrave; lực lượng tuyệt đối v&amp;agrave; l&amp;agrave; minh chứng tốt nhất cho lời n&amp;oacute;i của Nguy&amp;ecirc;n Thi&amp;ecirc;n Y.&lt;br /&gt;
&lt;br /&gt;
Lạc Bắc lần đầu ti&amp;ecirc;n nh&amp;igrave;n thấy ph&amp;aacute;p thuật c&amp;oacute; uy lực hủy thi&amp;ecirc;n diệt địa như vậy cũng rung động. L&amp;uacute;c nh&amp;igrave;n Nguy&amp;ecirc;n Thi&amp;ecirc;n Y chỉ tiện tay ph&amp;aacute;t ra một thứ ph&amp;aacute;p thuật kinh thế h&amp;atilde;i tục như vậy, Lạc Bắc thở d&amp;agrave;i:&amp;quot; Lạc Bắc! Ngươi muốn vĩnh viễn chỉ biết c&amp;oacute; sự ngưỡng mộ như ng&amp;agrave;y h&amp;ocirc;m nay hay l&amp;agrave; c&amp;oacute; một ng&amp;agrave;y để cho tất cả mọi người phải ngưỡng một sự tồn tại của ngươi?&amp;quot;&lt;br /&gt;
&lt;br /&gt;
Thương Dương gi&amp;aacute;c.&lt;br /&gt;
&lt;br /&gt;
Thương Dương l&amp;agrave; một loại thần điểu c&amp;oacute; thể điều khiển mưa gi&amp;oacute;, khi trưởng th&amp;agrave;nh c&amp;oacute; lực lượng m&amp;agrave; rất nhiều người tu đạo ao ước. Căn cứ v&amp;agrave;o điển tịch trong thế gian ghi lại th&amp;igrave; đan của n&amp;oacute; c&amp;oacute; thể trị được b&amp;aacute;ch bệnh, người chết sống lại. Thương Dương gi&amp;aacute;c ch&amp;iacute;nh l&amp;agrave; một nh&amp;aacute;nh đan của n&amp;oacute;. Trong thế gian từng ghi lại rất nhiều những thứ rực rỡ trong giới tu đạo cũng giống như c&amp;aacute;c m&amp;ocirc;n ph&amp;aacute;i. C&amp;oacute; điều Thương Dương biến mất đ&amp;atilde; l&amp;acirc;u, n&amp;ecirc;n cho d&amp;ugrave; l&amp;agrave; l&amp;atilde;o Triệu Nam đối mặt với c&amp;acirc;u hỏi của Lạc Bắc cũng chỉ c&amp;oacute; thể biết được qua một số ghi ch&amp;eacute;p trong điển tịch m&amp;agrave; th&amp;ocirc;i.&lt;/p&gt;
', 1, CAST(0x0000ADEF01137B4E AS DateTime), CAST(0x0000ADEF01137B4E AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (3121, 4101, 2042, N'Chương 13: Thương Dương giác', N'&lt;p&gt;Nh&amp;igrave;n Thương Dương gi&amp;aacute;c giống như c&amp;aacute;i sừng tr&amp;acirc;u bằng ngọc b&amp;iacute;ch m&amp;agrave;u xanh biếc, cao hơn một thước, l&amp;atilde;o Triệu Nam kh&amp;ocirc;ng nhịn được m&amp;agrave; hỏi Nguy&amp;ecirc;n Thi&amp;ecirc;n Y đang ngồi đối diện với m&amp;igrave;nh:&lt;br /&gt;
&lt;br /&gt;
- Đ&amp;acirc;y c&amp;oacute; phải l&amp;agrave; Thương Dương gi&amp;aacute;c trong truyền thuyết c&amp;oacute; thể trị được b&amp;aacute;ch bệnh, cho du chỉ c&amp;ograve;n xương cốt cũng c&amp;oacute; thể sống lại kh&amp;ocirc;ng?&lt;br /&gt;
&lt;br /&gt;
- C&amp;aacute;i chuyện trị b&amp;aacute;ch bệnh v&amp;agrave; thần phật đều l&amp;agrave; v&amp;ocirc; căn cứ. - Nguy&amp;ecirc;n Thi&amp;ecirc;n Y lắc đầu:&lt;br /&gt;
&lt;br /&gt;
- C&amp;oacute; điều chỉ cần một ch&amp;uacute;t bột phấn của n&amp;oacute; th&amp;igrave; c&amp;oacute; thể giải được trăm thứ độc, c&amp;oacute; khả năng sinh m&amp;aacute;u. Ngay cả cổ độc của B&amp;aacute;ch Độc t&amp;ocirc;ng cũng c&amp;oacute; thể giải.&lt;br /&gt;
&lt;br /&gt;
L&amp;atilde;o Triệu Nam nh&amp;igrave;n Thương Dương gi&amp;aacute;c đang tản ra &amp;aacute;nh s&amp;aacute;ng m&amp;agrave;u xanh biếc m&amp;agrave; khẽ thở d&amp;agrave;i. Nh&amp;igrave;n Thương Dương gi&amp;aacute;c, l&amp;atilde;o kh&amp;ocirc;ng thể tưởng tượng được c&amp;aacute;i loại động vật từ nhỏ đ&amp;atilde; nắm mưa gi&amp;oacute; trong tay, bay lượn tr&amp;ecirc;n bầu trời m&amp;agrave; lại c&amp;oacute; thể đứng tr&amp;ecirc;n mặt đất chỉ bằng một ch&amp;acirc;n?&lt;br /&gt;
&lt;br /&gt;
Nguy&amp;ecirc;n Thi&amp;ecirc;n Y thấy l&amp;atilde;o Triệu Nam nh&amp;igrave;n Thương Dương gi&amp;aacute;c m&amp;agrave; khẽ thở d&amp;agrave;i th&amp;igrave; hiểu ngay được suy nghĩ trong l&amp;ograve;ng l&amp;atilde;o:&lt;br /&gt;
&lt;br /&gt;
- C&amp;oacute; lẽ Thương Dương l&amp;agrave; thần th&amp;uacute; trời sinh đ&amp;atilde; si&amp;ecirc;u tho&amp;aacute;t ph&amp;agrave;m trần, người trần thế kh&amp;ocirc;ng thể nh&amp;igrave;n thấy n&amp;oacute; cho n&amp;ecirc;n cũng chẳng đặt ch&amp;acirc;n dưới đất.&lt;br /&gt;
&lt;br /&gt;
- C&amp;oacute; phải cũng giống như Thương Dương m&amp;agrave; những người si&amp;ecirc;u ph&amp;agrave;m tho&amp;aacute;t tục đều kh&amp;ocirc;ng gặp người trần thế? - Trong đ&amp;ocirc;i mắt đục ngầu của l&amp;atilde;o Triệu Nam như l&amp;oacute;e l&amp;ecirc;n tia s&amp;aacute;ng. Trong t&amp;iacute;ch tắc đ&amp;oacute;, l&amp;atilde;o liền hỏi vấn đề m&amp;agrave; m&amp;igrave;nh muốn hỏi từ l&amp;acirc;u:&lt;br /&gt;
&lt;br /&gt;
- Chủ nh&amp;acirc;n! Người th&amp;ocirc;ng hiểu nhiều ph&amp;aacute;p quyết lợi hại như vậy, tại sao lại cố t&amp;igrave;nh truyền bộ Ma Ha Gi&amp;agrave; La mật ph&amp;aacute;p cho Lạc Bắc?&lt;br /&gt;
&lt;br /&gt;
L&amp;atilde;o Triệu Nam nh&amp;igrave;n Nguy&amp;ecirc;n Thi&amp;ecirc;n Y th&amp;igrave; ph&amp;aacute;t hiện trong mắt y như đang nhớ lại điều g&amp;igrave; đ&amp;oacute;. Tuy nhi&amp;ecirc;n trong nh&amp;aacute;y mắt, &amp;aacute;nh mắt của Nguy&amp;ecirc;n Thi&amp;ecirc;n Y cũng trở lại b&amp;igrave;nh thường. Y l&amp;ecirc;n tiếng trả lời l&amp;atilde;o Triệu Nam:&lt;br /&gt;
&lt;br /&gt;
- Bởi v&amp;igrave; chỉ c&amp;oacute; tu luyện Ma Ha Gi&amp;agrave; La mật ph&amp;aacute;p rồi sau đ&amp;oacute; mới c&amp;oacute; thể tu luyện Vọng Niệm Thi&amp;ecirc;n TSnh kinh m&amp;agrave; kh&amp;ocirc;ng bị t&amp;acirc;m ma t&amp;aacute;c động.&lt;br /&gt;
&lt;br /&gt;
- Vọng Niệm Thi&amp;ecirc;n TSnh kinh? - L&amp;atilde;o Triệu Nam giật m&amp;igrave;nh, &amp;aacute;nh mắt c&amp;agrave;ng th&amp;ecirc;m ngời s&amp;aacute;ng.&lt;br /&gt;
&lt;br /&gt;
- Chủ nh&amp;acirc;n...&lt;br /&gt;
&lt;br /&gt;
- Cơ duy&amp;ecirc;n nh&amp;acirc;n quả, qu&amp;aacute; khứ vị lai. Cho d&amp;ugrave; tu vi c&amp;oacute; cao đến đ&amp;acirc;u th&amp;igrave; cũng chỉ như ếch ngồi đ&amp;aacute;y giếng m&amp;agrave; kh&amp;ocirc;ng thể nh&amp;igrave;n r&amp;otilde; được. - Nguy&amp;ecirc;n Thi&amp;ecirc;n Y n&amp;oacute;i một c&amp;aacute;ch thản nhi&amp;ecirc;n:&lt;br /&gt;
&lt;br /&gt;
- L&amp;uacute;c trước dẫn hắn tới ch&amp;acirc;n n&amp;uacute;i, ai ngờ hắn c&amp;oacute; thể leo l&amp;ecirc;n nhanh như vậy m&amp;agrave; lại c&amp;ograve;n c&amp;oacute; thể nhanh ch&amp;oacute;ng l&amp;agrave;m cho kim dịch ngưng đan. L&amp;atilde;o Triệu Nam! Ngươi n&amp;oacute;i đ&amp;uacute;ng. Tư chất của hắn mặc d&amp;ugrave; b&amp;igrave;nh thường nhưng c&amp;oacute; lẽ c&amp;oacute; ch&amp;uacute;t đặc biệt.&lt;br /&gt;
&lt;br /&gt;
- Huống chi.... - Nh&amp;igrave;n c&amp;aacute;i Thương Dương gi&amp;aacute;c trước mặt, &amp;acirc;m thanh của Nguy&amp;ecirc;n Thi&amp;ecirc;n Y chợt thay đổi, trở n&amp;ecirc;n lạnh lẽo v&amp;agrave; ngạo nghễ:&lt;br /&gt;
&lt;br /&gt;
- Ph&amp;aacute;i La Ph&amp;ugrave; ch&amp;uacute;ng ta phải cho thế nh&amp;acirc;n thấy rằng cho d&amp;ugrave; tư chất ti&amp;ecirc;n thi&amp;ecirc;n kh&amp;ocirc;ng đủ th&amp;igrave; c&amp;oacute; sao?&lt;br /&gt;
&lt;br /&gt;
- L&amp;atilde;o Triệu Nam. - &amp;Acirc;m thanh của Nguy&amp;ecirc;n Thi&amp;ecirc;n Y chợt dịu đi:&lt;br /&gt;
&lt;br /&gt;
- Người c&amp;ograve;n nhớ khi ta hỏi Lạc Bắc rằng hắn cầu c&amp;aacute;i g&amp;igrave; kh&amp;ocirc;ng?&lt;br /&gt;
&lt;br /&gt;
L&amp;atilde;o Triệu Nam gật đầu.&lt;br /&gt;
&lt;br /&gt;
- Mặc d&amp;ugrave; hắn chưa trả lời nhưng ta c&amp;oacute; thể thấy được đ&amp;aacute;p &amp;aacute;n trong mắt của hắn đ&amp;oacute; l&amp;agrave; nắm giữ được vận mệnh của m&amp;igrave;nh.&lt;br /&gt;
&lt;br /&gt;
L&amp;uacute;c đ&amp;oacute;, đ&amp;aacute;p &amp;aacute;n trong l&amp;ograve;ng Lạc Bắc cũng kh&amp;ocirc;ng phải c&amp;aacute;i g&amp;igrave; kh&amp;aacute;c m&amp;agrave; l&amp;agrave; th&amp;aacute;i độ l&amp;agrave;m người v&amp;agrave; nắm giữ được vận mệnh của m&amp;igrave;nh.&lt;br /&gt;
&lt;br /&gt;
- Kiếp nạn của ta sắp tới, chưa chắc c&amp;oacute; thể đ&amp;atilde; vượt qua. Nhưng nếu hắn lựa chọn Vọng Niệm Thi&amp;ecirc;n TSnh kinh th&amp;igrave; c&amp;oacute; lẽ một ng&amp;agrave;y c&amp;oacute; thể thực sự giữ được vận mệnh của m&amp;igrave;nh.&lt;br /&gt;
&lt;br /&gt;
Vọng Niệm Thi&amp;ecirc;n TSnh kinh l&amp;agrave; thứ ph&amp;aacute;p quyết thế n&amp;agrave;o? Nghe Nguy&amp;ecirc;n Thi&amp;ecirc;n Y n&amp;oacute;i th&amp;igrave; chẳng lẽ so với Kh&amp;ocirc;ng Sanh Diệt Hải Lưu Ly quyết c&amp;ograve;n huyền ảo v&amp;agrave; h&amp;ugrave;ng mạnh hơn?&lt;br /&gt;
&lt;br /&gt;
Hay l&amp;agrave; n&amp;oacute;i cho d&amp;ugrave; Nguy&amp;ecirc;n Thi&amp;ecirc;n Y cũng kh&amp;ocirc;ng thể nắm giữ được ho&amp;agrave;n to&amp;agrave;n vận mệnh của m&amp;igrave;nh?&lt;br /&gt;
&lt;br /&gt;
Nguy&amp;ecirc;n Thi&amp;ecirc;n Y đưa tay về ph&amp;iacute;a l&amp;atilde;o Triệu Nam, trong l&amp;ograve;ng b&amp;agrave;n tay của y c&amp;oacute; một đoạn thước ngắn c&amp;ograve;n xanh hơn cả Thương Dương gi&amp;aacute;c.&lt;br /&gt;
&lt;br /&gt;
Một tiếng động vang l&amp;ecirc;n, chậu than trước mặt l&amp;atilde;o Triệu Nam đang bốc lửa đột nhi&amp;ecirc;n ngọn lửa bị đẩy dạt sang một b&amp;ecirc;n, giống như đang quỳ lạy trước &amp;aacute;nh s&amp;aacute;ng của c&amp;acirc;y thước ngắn.&lt;br /&gt;
&lt;br /&gt;
Dường như ngọn lửa kh&amp;ocirc;ng c&amp;oacute; linh hồn cũng cảm nhận được kh&amp;iacute; Ly Hỏa trong đ&amp;oacute; ch&amp;iacute;nh l&amp;agrave; vương giả của lửa.&lt;br /&gt;
&lt;br /&gt;
- Thi&amp;ecirc;n Đ&amp;ocirc; Minh H&amp;agrave; kiếm? - L&amp;atilde;o Triệu Nam thốt l&amp;ecirc;n một tiếng kinh h&amp;atilde;i.&lt;br /&gt;
&lt;br /&gt;
Nh&amp;igrave;n bề ngo&amp;agrave;i r&amp;otilde; r&amp;agrave;ng đ&amp;oacute; l&amp;agrave; một c&amp;acirc;y thước ngắn vậy tại sao L&amp;atilde;o Triệu Nam lại n&amp;oacute;i đ&amp;oacute; l&amp;agrave; một thanh kiếm?&lt;br /&gt;
&lt;br /&gt;
Nhưng Nguy&amp;ecirc;n Thi&amp;ecirc;n Y lại gật đầu:&lt;br /&gt;
&lt;br /&gt;
- Đ&amp;uacute;ng vậy! Đ&amp;acirc;y ch&amp;iacute;nh l&amp;agrave; thanh phi kiếm Thi&amp;ecirc;n Đ&amp;ocirc; Minh H&amp;agrave; m&amp;agrave; L&amp;yacute; Phật của Thanh Th&amp;agrave;nh đ&amp;atilde; ở tr&amp;ecirc;n miệng n&amp;uacute;i lửa, dưới &amp;aacute;nh trăng nhờ v&amp;agrave;o kh&amp;iacute; Ly Hỏa m&amp;agrave; luyện chế ra.&lt;br /&gt;
&lt;br /&gt;
Nh&amp;igrave;n thanh Thi&amp;ecirc;n Đ&amp;ocirc; minh h&amp;agrave; kiếm trong tay Nguy&amp;ecirc;n Thi&amp;ecirc;n Y đang tỏa ra &amp;aacute;nh s&amp;aacute;ng, n&amp;eacute;t mặt l&amp;atilde;o Triệu Nam c&amp;oacute; ch&amp;uacute;t g&amp;igrave; đ&amp;oacute; kh&amp;ocirc;ng n&amp;oacute;i được n&amp;ecirc;n lời:&lt;br /&gt;
&lt;br /&gt;
- Tại sao n&amp;oacute; lại rơi v&amp;agrave;o tay chủ nh&amp;acirc;n?&lt;br /&gt;
&lt;br /&gt;
- Đ&amp;oacute; l&amp;agrave; do ta lấy được từ tay một kẻ tu luyện Thập Nhị Đ&amp;ocirc; Thi&amp;ecirc;n S&amp;aacute;t Thần ph&amp;aacute;p ở trong La Ph&amp;ugrave; ch&amp;uacute;ng ta. - Nguy&amp;ecirc;n Thi&amp;ecirc;n Y lạnh l&amp;ugrave;ng n&amp;oacute;i:&lt;br /&gt;
&lt;br /&gt;
- L&amp;atilde;o n&amp;oacute;i xem tại sao La Ph&amp;ugrave; lại đột nhi&amp;ecirc;n xuất hiện một t&amp;ecirc;n tu luyện Thập nhị đ&amp;ocirc; thi&amp;ecirc;n s&amp;aacute;t thần ph&amp;aacute;p m&amp;agrave; trong tay y lại c&amp;oacute; ph&amp;aacute;p bảo uy lực thế n&amp;agrave;y?&lt;br /&gt;
&lt;br /&gt;
&amp;Aacute;nh mắt của l&amp;atilde;o Triệu Nam nhanh ch&amp;oacute;ng tối đi, lặng y&amp;ecirc;n kh&amp;ocirc;ng n&amp;oacute;i. Tuy nhi&amp;ecirc;n tấm lưng của l&amp;atilde;o so với trước như c&amp;ograve;ng hơn:&lt;br /&gt;
&lt;br /&gt;
- Cũng đ&amp;atilde; mười năm l&amp;atilde;o chưa ra khỏi La Ph&amp;ugrave;, c&amp;oacute; thể đi chơi được rồi.&lt;br /&gt;
&lt;br /&gt;
Nguy&amp;ecirc;n Thi&amp;ecirc;n Y cầm thanh kiếm Thi&amp;ecirc;n Đ&amp;ocirc; Minh H&amp;agrave; đạt v&amp;agrave;o tay l&amp;atilde;o Triệu Nam:&lt;br /&gt;
&lt;br /&gt;
- Cũng vừa l&amp;uacute;c l&amp;atilde;o c&amp;ograve;n thiếu một thanh phi kiếm th&amp;iacute;ch hợp. Thật ra ta phải cảm hơn họ đa tặng Thi&amp;ecirc;n Đ&amp;ocirc; Minh H&amp;agrave; cho ch&amp;uacute;ng ta.&lt;br /&gt;
&lt;br /&gt;
Trong ph&amp;uacute;t chốc, thanh Thi&amp;ecirc;n Đ&amp;ocirc; Minh H&amp;agrave; nằm trong tay L&amp;atilde;o Triệu Nam th&amp;igrave; kh&amp;ocirc;ng c&amp;ograve;n tỏa s&amp;aacute;ng. Đ&amp;oacute; l&amp;agrave; v&amp;igrave; tu vi của l&amp;atilde;o Triệu Nam cũng ẩn dấu, hay l&amp;agrave; v&amp;igrave; Thi&amp;ecirc;n Đ&amp;ocirc; Minh H&amp;agrave; tức giận chủ nh&amp;acirc;n bỏ rơi m&amp;igrave;nh?&lt;br /&gt;
&lt;br /&gt;
Cũng chỉ c&amp;oacute; thứ ph&amp;aacute;p bảo như Thi&amp;ecirc;n Đ&amp;ocirc; Minh H&amp;agrave; mới c&amp;oacute; được linh hồn v&amp;agrave; sự ki&amp;ecirc;u ngạo đ&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
Tuy nhi&amp;ecirc;n, &amp;aacute;nh s&amp;aacute;ng của Thi&amp;ecirc;n Đ&amp;ocirc; Minh H&amp;agrave; đột nhi&amp;ecirc;n thu lại bởi v&amp;igrave; trong tay của Nguy&amp;ecirc;n Thi&amp;ecirc;n Y chợt xuất hiện th&amp;ecirc;m một thanh trường kiếm trong suốt.&lt;br /&gt;
&lt;br /&gt;
Thanh kiếm đ&amp;oacute; m&amp;agrave;u hồng nhạt, mỏng manh như một b&amp;ocirc;ng tuyết, kh&amp;ocirc;ng hề c&amp;oacute; mũi nhọn hay c&amp;aacute;i cảm gi&amp;aacute;c sắc b&amp;eacute;n.&lt;br /&gt;
&lt;br /&gt;
Tuy nhi&amp;ecirc;n đối diện với thanh kiếm đ&amp;oacute;, Thi&amp;ecirc;n Đ&amp;ocirc; minh h&amp;agrave; vốn ki&amp;ecirc;u ngạo như vậy m&amp;agrave; cũng phải k&amp;iacute;nh sợ.&lt;br /&gt;
&lt;br /&gt;
Nguy&amp;ecirc;n Thi&amp;ecirc;n Y như kh&amp;aacute;m ph&amp;aacute; ra điều g&amp;igrave; đ&amp;oacute; m&amp;agrave; mỉm cười:&lt;br /&gt;
&lt;br /&gt;
- Thanh kiếm n&amp;agrave;y...đặt cho n&amp;oacute; t&amp;ecirc;n l&amp;agrave; Thương Nguyệt đi. Nếu lần n&amp;agrave;y ta c&amp;oacute; thể vượt qua được kiếp nạn th&amp;igrave; th&amp;ocirc;i. M&amp;agrave; nếu ta kh&amp;ocirc;ng vượt qua được th&amp;igrave; tới ng&amp;agrave;y n&amp;agrave;o đ&amp;oacute; Lạc Bắc trở lại La Ph&amp;ugrave;, l&amp;atilde;o gi&amp;uacute;p ta đưa cho hắn.&lt;br /&gt;
&lt;br /&gt;
- Chủ nh&amp;acirc;n... - L&amp;atilde;o Triệu Nam theo bản năng khom người nhưng kh&amp;ocirc;ng k&amp;igrave;m chế được sự run rẩy.&lt;br /&gt;
&lt;br /&gt;
- L&amp;atilde;o Triệu Nam! L&amp;atilde;o theo ta l&amp;acirc;u như vậy chẳng lẽ c&amp;ograve;n kh&amp;ocirc;ng hiểu được chuyện sống chết như thế n&amp;agrave;o hay sao? - Nguy&amp;ecirc;n Thi&amp;ecirc;n Y nh&amp;igrave;n l&amp;atilde;o Triệu Nam với ảnh mắt thản nhi&amp;ecirc;n. &amp;quot;Bản th&amp;acirc;n m&amp;igrave;nh đưa Lạc Bắc tới La Ph&amp;ugrave; l&amp;agrave; để gi&amp;uacute;p hắn hay l&amp;agrave; nhờ hắn gi&amp;uacute;p La Ph&amp;ugrave;?&amp;quot; Nguy&amp;ecirc;n Thi&amp;ecirc;n Y nh&amp;igrave;n quanh to&amp;agrave;n bộ d&amp;atilde;y n&amp;uacute;i La Ph&amp;ugrave;, mất một l&amp;uacute;c, y mới n&amp;oacute;i với l&amp;atilde;o Triệu Nam:&lt;br /&gt;
&lt;br /&gt;
- Huống chi, cho d&amp;ugrave; l&amp;agrave; ai nếu muốn động tới La Ph&amp;ugrave; ta th&amp;igrave; sẽ phải trả một c&amp;aacute;i gi&amp;aacute; kh&amp;ocirc;ng thể tưởng tượng được.&lt;br /&gt;
&lt;br /&gt;
..........&lt;br /&gt;
&lt;br /&gt;
- Ph&amp;aacute;p quyết tu luyện trong thế gian được chia th&amp;agrave;nh ba loại. Nhiều nhất l&amp;agrave; đạo ph&amp;aacute;p kim đan, d&amp;ugrave;ng bản th&amp;acirc;n m&amp;igrave;nh l&amp;agrave; đỉnh l&amp;ocirc;, h&amp;uacute;t lấy linh kh&amp;iacute; m&amp;agrave; tạo ra kim đan. Sau khi kim đan đại th&amp;agrave;nh th&amp;igrave; h&amp;oacute;a th&amp;agrave;nh Nguy&amp;ecirc;n Anh. Nguy&amp;ecirc;n Anh đại th&amp;agrave;nh th&amp;igrave; c&amp;oacute; thể sử dụng được n&amp;oacute; như ph&amp;aacute;p bảo. Cho d&amp;ugrave; th&amp;acirc;n thể c&amp;oacute; chết nhưng Nguy&amp;ecirc;n Anh vẫn c&amp;ograve;n th&amp;igrave; c&amp;oacute; thể đoạt lấy một c&amp;aacute;i th&amp;acirc;n thể kh&amp;aacute;c m&amp;agrave; sống lại. C&amp;ograve;n Nguy&amp;ecirc;n Anh bị diệt, cho d&amp;ugrave; th&amp;acirc;n thể vẫn c&amp;ograve;n th&amp;igrave; cũng chết. Đối với những người tu luyện Kim đan, một khi c&amp;oacute; được Nguy&amp;ecirc;n Anh th&amp;igrave; gần như tiếp cận với sự trường sinh bất diệt. Khi đối đầu với kẻ địch, Nguy&amp;ecirc;n Anh rất nhẹ, tốc độ lại nhanh, giống như c&amp;oacute; th&amp;ecirc;m một c&amp;aacute;i mạng.&lt;br /&gt;
&lt;br /&gt;
- C&amp;ograve;n c&amp;oacute; một loại nữa l&amp;agrave; tu luyện nguy&amp;ecirc;n thần t&amp;iacute;nh mạng, kh&amp;ocirc;ng tu luyện th&amp;acirc;n thể. Coi th&amp;acirc;n thể như một c&amp;aacute;i t&amp;uacute;i da, l&amp;agrave;m cho nguy&amp;ecirc;n thần v&amp;agrave; linh kh&amp;iacute; trong trời đất dung hợp, h&amp;oacute;a th&amp;agrave;nh thực thể rồi cuối c&amp;ugrave;ng tiến tới việc Nguy&amp;ecirc;n Thần hiển h&amp;oacute;a, tho&amp;aacute;t ra khỏi th&amp;acirc;n thể. Nguy&amp;ecirc;n thần một khi ngưng đọng bất tử bất diệt. Một khi tu luyện tới đỉnh, bản th&amp;acirc;n Nguy&amp;ecirc;n Thần c&amp;oacute; uy lực ph&amp;aacute;p thuật kh&amp;ocirc;ng phải l&amp;agrave; thứ m&amp;agrave; th&amp;acirc;n thể b&amp;igrave;nh thường c&amp;oacute; thể bằng được. Trong truyền thuyết, phật đ&amp;agrave; phần lớn l&amp;agrave; tu luyện tới cảnh giới như vậy. Phương ph&amp;aacute;p tu luyện n&amp;agrave;y chủ yếu nằm ở phật m&amp;ocirc;n. Ta đưa Ma Ha Gi&amp;agrave; La mật ph&amp;aacute;p cho ngươi cũng thuộc nh&amp;oacute;m n&amp;agrave;y.&lt;br /&gt;
&lt;br /&gt;
M&amp;agrave;n đ&amp;ecirc;m bu&amp;ocirc;ng xuống, b&amp;oacute;ng đ&amp;ecirc;m bao phủ to&amp;agrave;n bộ La Ph&amp;ugrave;. Giữa những rặng n&amp;uacute;i l&amp;agrave;n sương m&amp;ugrave; bắt đầu bốc l&amp;ecirc;n. Trước cửa sổ của gian nh&amp;agrave; gỗ, Lạc Bắc kh&amp;ocirc;ng hiểu tại sao Nguy&amp;ecirc;n Thi&amp;ecirc;n Y lại n&amp;oacute;i với m&amp;igrave;nh nhiều như vậy. Hắn chỉ hỏi lại cẩn thận:&lt;br /&gt;
&lt;br /&gt;
- Sư phụ! Vậy người tu luyện thuộc về loại n&amp;agrave;o?&lt;br /&gt;
&lt;br /&gt;
- Ph&amp;aacute;p thuật của La Ph&amp;ugrave; ch&amp;uacute;ng ta l&amp;agrave; loại thứ ba, d&amp;ugrave;ng nguy&amp;ecirc;n kh&amp;iacute; trong trời đất để r&amp;egrave;n luyện th&amp;acirc;n thể, nguy&amp;ecirc;n thần. Một khi ch&amp;uacute;ng hợp lại l&amp;agrave;m một, tu luyện tới đỉnh cao th&amp;igrave; ch&amp;iacute;nh l&amp;agrave; th&amp;acirc;n thể th&amp;agrave;nh th&amp;aacute;nh, ph&amp;aacute;p thuật chỉ cần phất tay cũng kh&amp;ocirc;ng thua g&amp;igrave; ph&amp;aacute;p bảo lợi hại.&lt;br /&gt;
&lt;br /&gt;
Nguy&amp;ecirc;n Thi&amp;ecirc;n Y nh&amp;igrave;n Lạc Bắc rồi nhấc ly nước tr&amp;ecirc;n b&amp;agrave;n:&lt;br /&gt;
&lt;br /&gt;
- Con người v&amp;agrave; ph&amp;aacute;p bảo cũng giống như một c&amp;aacute;i b&amp;aacute;t đựng nước được c&amp;oacute; hạn. V&amp;igrave; vậy m&amp;agrave; một số &amp;iacute;t ph&amp;aacute;p quyết dẫn oai lực của trời đất để đ&amp;aacute;nh với kẻ địch chứ kh&amp;ocirc;ng tu luyện bản th&amp;acirc;n th&amp;igrave; kh&amp;ocirc;ng được xếp v&amp;agrave;o loại n&amp;agrave;o.&lt;br /&gt;
&lt;br /&gt;
- Con hiểu rồi thưa sư phụ. - Lạc Bắc nghĩ một ch&amp;uacute;t rồi gật đầu:&lt;br /&gt;
&lt;br /&gt;
- Ph&amp;aacute;p quyết m&amp;agrave; ch&amp;uacute;ng ta tu luyện ch&amp;iacute;nh l&amp;agrave; l&amp;agrave;m cho c&amp;aacute;i b&amp;aacute;t đ&amp;oacute; trở n&amp;ecirc;n to hơn đ&amp;uacute;ng kh&amp;ocirc;ng?&lt;br /&gt;
&lt;br /&gt;
Sự so s&amp;aacute;nh của Lạc Bắc mặc d&amp;ugrave; rất th&amp;ocirc; nhưng lại dễ hiểu. Nguy&amp;ecirc;n Thi&amp;ecirc;n Y cười cười, nh&amp;igrave;n &amp;aacute;nh sao trời trong b&amp;oacute;ng đ&amp;ecirc;m:&lt;br /&gt;
&lt;br /&gt;
- C&amp;aacute;i b&amp;aacute;t cho d&amp;ugrave; c&amp;oacute; to đến mấy th&amp;igrave; cảnh giới cuối c&amp;ugrave;ng cũng phải l&amp;agrave; v&amp;ocirc;.&lt;br /&gt;
&lt;br /&gt;
- V&amp;ocirc;?&lt;br /&gt;
&lt;br /&gt;
- Cảnh giới Thi&amp;ecirc;n nh&amp;acirc;n hợp nhất tuy hai m&amp;agrave; l&amp;agrave; một c&amp;oacute; thể sự dụng t&amp;ugrave;y t&amp;acirc;m linh kh&amp;iacute; trong trời dất. - Nguy&amp;ecirc;n Thi&amp;ecirc;n Y nh&amp;igrave;n Lạc Bắc:&lt;br /&gt;
&lt;br /&gt;
- Ngươi c&amp;oacute; nghĩ tới việc tại sao ta kh&amp;ocirc;ng cho ngươi tu luyện Kh&amp;ocirc;ng Sanh diệt hải Lưu Ly quyết m&amp;agrave; lại cho ngươi tu luyện Ma Ha Gi&amp;agrave; La mật ph&amp;aacute;p kh&amp;ocirc;ng?&lt;br /&gt;
&lt;br /&gt;
Lạc Bắc lặng đi một ch&amp;uacute;t rồi nở nụ cười:&lt;br /&gt;
&lt;br /&gt;
- Kh&amp;ocirc;ng c&amp;oacute;. Sư phụ đ&amp;atilde; n&amp;oacute;i, tu luyện c&amp;ocirc;ng ph&amp;aacute;p của La Ph&amp;ugrave; ch&amp;iacute;nh l&amp;agrave; cửu tử nhất sinh. Con mang to&amp;agrave;n bộ mạng số của m&amp;igrave;nh đặt trong tay người. V&amp;igrave; vậy con kh&amp;ocirc;ng hề l&amp;agrave;m tr&amp;aacute;i, thậm ch&amp;iacute; m&amp;agrave; một ch&amp;uacute;t nghi ngờ cũng kh&amp;ocirc;ng c&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
- Xem ra ngươi vẫn c&amp;ograve;n nhớ r&amp;otilde; lời hứa khi lựa chọn l&amp;agrave;m đệ tử của La Ph&amp;ugrave; ta.&lt;br /&gt;
&lt;br /&gt;
Nguy&amp;ecirc;n Thi&amp;ecirc;n Y nh&amp;igrave;n Lạc Băc:&lt;br /&gt;
&lt;br /&gt;
- Hiện tại ta sẽ phế bỏ tu vi của ngươi. Hơn nữa từ nay trở đi, ngươi phải qu&amp;ecirc;n hết to&amp;agrave;n bộ ph&amp;aacute;p quyết Ma Ha Gi&amp;agrave; La mật ph&amp;aacute;p.&lt;/p&gt;
', 1, CAST(0x0000ADEF0113988B AS DateTime), CAST(0x0000ADEF0113988B AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (3122, 4101, 2042, N'Chương 14: Tử Uyên cấm kỵ, thoát thai hoán cốt', N'&lt;p&gt;Một c&amp;aacute;i th&amp;aacute;c nước giống như một con rồng m&amp;agrave;u trắng từ tr&amp;ecirc;n cao đổ xuống giống như vạn m&amp;atilde; mất cương đang lao đi.&lt;br /&gt;
&lt;br /&gt;
Đứng trước khung cảnh tự nhi&amp;ecirc;n h&amp;ugrave;ng vĩ, con người rất dễ d&amp;agrave;ng sinh ra cảm kh&amp;aacute;i bản th&amp;acirc;n thật nhỏ b&amp;eacute;. Nhưng c&amp;agrave;ng như vậy, một số người lại c&amp;agrave;ng muốn vượt l&amp;ecirc;n, nắm lấy thi&amp;ecirc;n uy trong tay.&lt;br /&gt;
&lt;br /&gt;
Nắm lấy sinh tử của m&amp;igrave;nh.&lt;br /&gt;
&lt;br /&gt;
Lạc Bắc nh&amp;igrave;n c&amp;aacute;i th&amp;aacute;c nước ở xa, c&amp;oacute; thể thấy được dưới c&amp;aacute;i th&amp;aacute;c nước l&amp;agrave; một c&amp;aacute;i hồ s&amp;acirc;u, tr&amp;ocirc;ng giống như một c&amp;aacute;i miệng khổng lồ bất cứ l&amp;uacute;c n&amp;agrave;o cũng c&amp;oacute; thể h&amp;aacute; miệng m&amp;agrave; nuốt chửng c&amp;ograve;n người, so với c&amp;aacute;i th&amp;aacute;c nước kia c&amp;ograve;n hiểm &amp;aacute;c hơn nhiều.&lt;br /&gt;
&lt;br /&gt;
Chỗ của hắn đứng nằm b&amp;ecirc;n cạnh một c&amp;aacute;i v&amp;aacute;ch n&amp;uacute;i, c&amp;aacute;ch th&amp;aacute;c nước kh&amp;ocirc;ng xa lắm. Trước mặt c&amp;oacute; một c&amp;aacute;i vực s&amp;acirc;u kh&amp;ocirc;ng thấy đ&amp;aacute;y.&lt;br /&gt;
&lt;br /&gt;
Đối với con người m&amp;agrave; n&amp;oacute;i th&amp;igrave; điều đ&amp;aacute;ng sợ nhất kh&amp;ocirc;ng phải l&amp;agrave; c&amp;aacute;i nh&amp;igrave;n thấy được m&amp;agrave; l&amp;agrave; c&amp;aacute;i m&amp;agrave; m&amp;igrave;nh kh&amp;ocirc;ng thể nh&amp;igrave;n thấy, kh&amp;ocirc;ng thể chạm v&amp;agrave;o được n&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
Hiện tại, c&amp;aacute;i vực s&amp;acirc;u trước mặt Lạc Bắc ch&amp;iacute;nh l&amp;agrave; như thế.&lt;br /&gt;
&lt;br /&gt;
Nh&amp;igrave;n b&amp;oacute;ng tối dưới s&amp;acirc;u khiến cho Lạc Bắc kh&amp;ocirc;ng biết được c&amp;aacute;i v&amp;aacute;ch n&amp;uacute;i n&amp;agrave;y cao tới bao nhi&amp;ecirc;u. C&amp;aacute;i vực s&amp;acirc;u bị b&amp;oacute;ng tối bao phủ chẳng kh&amp;aacute;c g&amp;igrave; một con qu&amp;aacute;i th&amp;uacute; đang ngủ đ&amp;ocirc;ng. M&amp;agrave; c&amp;agrave;ng khiến cho con người ta run sợ đ&amp;oacute; l&amp;agrave; vực s&amp;acirc;u trước mặt lại c&amp;oacute; một l&amp;agrave;n sương m&amp;ugrave; m&amp;agrave;u v&amp;agrave;ng. Đ&amp;oacute; ch&amp;iacute;nh l&amp;agrave; biểu hiện chướng kh&amp;iacute; c&amp;oacute; độc của La Ph&amp;ugrave;. V&amp;igrave; vậy m&amp;agrave; Lạc Bắc kh&amp;ocirc;ng biết được c&amp;aacute;i vực n&amp;agrave;y s&amp;acirc;u bao nhi&amp;ecirc;u.&lt;br /&gt;
&lt;br /&gt;
Gi&amp;oacute; n&amp;uacute;i thổi qua người khiến cho bộ quần &amp;aacute;o mỏng manh bay phần phật c&amp;ograve;n Lạc Bắc th&amp;igrave; r&amp;eacute;t tun.&lt;br /&gt;
&lt;br /&gt;
Kh&amp;ocirc;ng thể ngăn được sự sợ h&amp;atilde;i một phần cũng l&amp;agrave; do tu vi của Lạc Bắc đ&amp;atilde; bị Nguy&amp;ecirc;n Thi&amp;ecirc;n Y phế bỏ to&amp;agrave;n bộ.&lt;br /&gt;
&lt;br /&gt;
Kim Dịch Ngưng đan do Lạc Bắc đ&amp;atilde; trải qua thử th&amp;aacute;ch sinh tử m&amp;agrave; tu th&amp;agrave;nh đ&amp;atilde; kh&amp;ocirc;ng c&amp;ograve;n lại một ch&amp;uacute;t g&amp;igrave;. Ngay cả ch&amp;uacute;t dược lực của cỏ Ti&amp;ecirc;u T&amp;acirc;y cũng biến mất. Hiện tại, Lạc Bắc c&amp;oacute; thể n&amp;oacute;i l&amp;agrave; một thiếu ni&amp;ecirc;n tr&amp;oacute;i g&amp;agrave; kh&amp;ocirc;ng chặt. V&amp;igrave; vậy khiến cho hắn kh&amp;ocirc;ng chịu nổi với gi&amp;oacute; n&amp;uacute;i La Ph&amp;ugrave;.&lt;br /&gt;
&lt;br /&gt;
Nhưng Nguy&amp;ecirc;n Thi&amp;ecirc;n Y vẫn thản nhi&amp;ecirc;n đứng b&amp;ecirc;n v&amp;aacute;ch n&amp;uacute;i m&amp;agrave; hỏi Lạc Bắc:&lt;br /&gt;
&lt;br /&gt;
- Lạc Bắc! Ngươi c&amp;oacute; biết v&amp;igrave; sao người tu đạo c&amp;oacute; h&amp;agrave;ng ngh&amp;igrave;n h&amp;agrave;ng vạn nhưng kh&amp;ocirc;ng c&amp;oacute; mấy người c&amp;oacute; thể đạt tới độ cao như ta kh&amp;ocirc;ng?&lt;br /&gt;
&lt;br /&gt;
Nếu người kh&amp;aacute;c m&amp;agrave; n&amp;oacute;i những lời n&amp;agrave;y th&amp;igrave; chắc chắn sẽ bị hiểu th&amp;agrave;nh hai chữ tự sướng nhưng Nguy&amp;ecirc;n Thi&amp;ecirc;n Y th&amp;igrave; kh&amp;ocirc;ng li&amp;ecirc;n quan. Lạc Bắc hơi r&amp;ugrave;ng m&amp;igrave;nh rồi trả lời:&lt;br /&gt;
&lt;br /&gt;
- Bởi v&amp;igrave; do c&amp;ocirc;ng ph&amp;aacute;p tu luyện v&amp;agrave; cơ duy&amp;ecirc;n?&lt;br /&gt;
&lt;br /&gt;
- Kh&amp;ocirc;ng. - Nguy&amp;ecirc;n Thi&amp;ecirc;n Y đứng trong cơn gi&amp;oacute; đ&amp;ecirc;m lạnh thấu xương m&amp;agrave; lắc đầu:&lt;br /&gt;
&lt;br /&gt;
- Bởi v&amp;igrave; chỉ c&amp;oacute; rất &amp;iacute;t người d&amp;aacute;m khi&amp;ecirc;u chiến với sinh tử. Con đường tu đạo vốn l&amp;agrave; chuyện nghịch thi&amp;ecirc;n để nắm vận mệnh của m&amp;igrave;nh trong tay. Nếu kh&amp;ocirc;ng d&amp;aacute;m khi&amp;ecirc;u chiến với giới hạn sinh tử th&amp;igrave; l&amp;agrave;m sao c&amp;oacute; thể ngộ được đạo một c&amp;aacute;ch thực sự, c&amp;oacute; thể nắm được lực lượng ch&amp;acirc;n ch&amp;iacute;nh? Đ&amp;oacute; cũng l&amp;agrave; l&amp;yacute; do m&amp;agrave; những người mơ ước tới ph&amp;aacute;p bảo v&amp;agrave; c&amp;ocirc;ng ph&amp;aacute;p của La Ph&amp;ugrave; ch&amp;uacute;ng ta kh&amp;ocirc;ng thể hiểu nổi tại sao La Ph&amp;ugrave; ch&amp;uacute;ng ta lại đứng ph&amp;iacute;a tr&amp;ecirc;n bọn họ.&lt;br /&gt;
&lt;br /&gt;
Nguy&amp;ecirc;n Thi&amp;ecirc;n Y từ từ đưa một c&amp;aacute;i b&amp;igrave;nh cổ d&amp;agrave;i trong tay cho Lạc Bắc:&lt;br /&gt;
&lt;br /&gt;
- Uống xong c&amp;aacute;i b&amp;igrave;nh nước thuốc n&amp;agrave;y, ngươi từ đ&amp;acirc;y nhảy xuống dưới đi.&lt;br /&gt;
&lt;br /&gt;
Lạc Bắc nh&amp;igrave;n Nguy&amp;ecirc;n Thi&amp;ecirc;n Y rồi gật đầu, kh&amp;ocirc;ng hề do dự ngửa cổ uống hết chỗ nước thuốc m&amp;agrave;u hồng xanh đan tản ra m&amp;ugrave;i thơm, sau đ&amp;oacute; tung người nhảy xuống dưới vực s&amp;acirc;u kh&amp;ocirc;ng thấy đ&amp;aacute;y.&lt;br /&gt;
&lt;br /&gt;
V&amp;agrave;o l&amp;uacute;c n&amp;agrave;y, mặc d&amp;ugrave; trong mắt Lạc Bắc c&amp;oacute; ch&amp;uacute;t sợ h&amp;atilde;i, nhưng vẫn ẩn chứa cả sự cứng cỏi quyết đo&amp;aacute;n m&amp;agrave; kh&amp;ocirc;ng hề c&amp;oacute; lấy một ch&amp;uacute;t nghi ngờ. Chỉ c&amp;oacute; người như vậy mới c&amp;oacute; tư c&amp;aacute;ch trở th&amp;agrave;nh truyền nh&amp;acirc;n của La Ph&amp;ugrave;.&lt;br /&gt;
&lt;br /&gt;
- L&amp;atilde;o Triệu Nam! C&amp;oacute; lẽ hắn c&amp;oacute; thể vượt qua được ta.&lt;br /&gt;
&lt;br /&gt;
Nh&amp;igrave;n Lạc Bắc rơi v&amp;agrave;o trong chướng kh&amp;iacute;, &amp;aacute;nh mắt của Nguy&amp;ecirc;n Thi&amp;ecirc;n Y hiện l&amp;ecirc;n một sự ki&amp;ecirc;u ngạo. Quan s&amp;aacute;t b&amp;oacute;ng đ&amp;ecirc;m đang bao phủ La Ph&amp;ugrave;, Nguy&amp;ecirc;n Thi&amp;ecirc;n Y khẽ thở d&amp;agrave;i. Bởi v&amp;igrave; y biết cứ như vậy, Lạc Bắc kh&amp;ocirc;ng biết sẽ phải gặp được sự đau khổ kh&amp;ocirc;ng thể tưởng tượng được, c&amp;oacute; thể n&amp;oacute;i l&amp;agrave; cửu tử nhất sinh.&lt;br /&gt;
&lt;br /&gt;
Lạc Bắc từ tr&amp;ecirc;n cao rơi xuống với tốc độ cực nhanh l&amp;agrave;m cho hồn ph&amp;aacute;ch của hắn tưởng chừng như tho&amp;aacute;t ra ngo&amp;agrave;i. C&amp;ograve;n chưa chạm đất, mới chỉ chạm v&amp;agrave;o l&amp;agrave;n chướng kh&amp;iacute; kia, cơ thể của Lạc Bắc đ&amp;atilde; cảm nhận được sự tổn thương s&amp;acirc;u sắc.&lt;br /&gt;
&lt;br /&gt;
C&amp;agrave;ng rơi xuống dưới, kh&amp;ocirc;ng ngờ chướng kh&amp;iacute; lại c&amp;agrave;ng dầy th&amp;ecirc;m.&lt;br /&gt;
&lt;br /&gt;
Nơi đ&amp;acirc;y ch&amp;iacute;nh l&amp;agrave; Tử Uy&amp;ecirc;n cấm kỵ, l&amp;agrave; chỗ dơ bẩn nhất của La Ph&amp;ugrave;, tuy nhi&amp;ecirc;n cũng l&amp;agrave; chỗ m&amp;agrave; linh kh&amp;iacute; đậm nhất.&lt;br /&gt;
&lt;br /&gt;
Linh kh&amp;iacute; của trời dất tẩm bổ vạn vật. Linh kh&amp;iacute; đậm như thế n&amp;agrave;y, lại kh&amp;ocirc;ng c&amp;oacute; dấu hiệu của con người khiến cho bốn ph&amp;iacute;a v&amp;aacute;ch n&amp;uacute;i xuất hiện rất nhiều loại c&amp;acirc;y thuốc. Trăm ng&amp;agrave;n năm qua, kh&amp;ocirc;ng biết c&amp;oacute; bao nhi&amp;ecirc;u loại dược thảo nếu người kh&amp;aacute;c nh&amp;igrave;n thấy sẽ đi&amp;ecirc;n cuồng lại bị thối rữa ở đ&amp;acirc;y. Nếu l&amp;agrave; một nơi kh&amp;aacute;c, th&amp;igrave; một c&amp;aacute;i nơi đầy linh dược như thế n&amp;agrave;y chắc chắn phải gọi n&amp;oacute; l&amp;agrave; ti&amp;ecirc;n cảnh. Tuy nhi&amp;ecirc;n La Ph&amp;ugrave; vốn l&amp;agrave; một nơi n&amp;oacute;ng ẩm, hơn nữa dưới vực s&amp;acirc;u lại kh&amp;ocirc;ng c&amp;oacute; lối tho&amp;aacute;t khiến cho kh&amp;iacute; bẩn t&amp;iacute;ch tụ trong n&amp;agrave;y kh&amp;ocirc;ng ra ngo&amp;agrave;i được l&amp;agrave;m cho đ&amp;aacute;m cỏ thuốc kia vừa c&amp;oacute; đặc t&amp;iacute;nh như cỏ ti&amp;ecirc;u t&amp;acirc;y lại c&amp;oacute; ch&amp;uacute;t độc t&amp;iacute;nh. Chỉ cần tiếp x&amp;uacute;c với m&amp;aacute;u thịt đ&amp;atilde; khiến cho con người ta gục xuống, phi đi&amp;ecirc;u rơi xuống đất. Nơi đ&amp;acirc;y thực sự trở th&amp;agrave;nh v&amp;ugrave;ng đất chết.&lt;br /&gt;
&lt;br /&gt;
Linh kh&amp;iacute; dầy đặc trong trời đất v&amp;agrave; kh&amp;iacute; dơ bản, hai c&amp;aacute;i thứ đối lập nhau lại quyện c&amp;ugrave;ng một chỗ, tạo th&amp;agrave;nh sự độc đ&amp;aacute;o của La Ph&amp;ugrave;.&lt;br /&gt;
&lt;br /&gt;
M&amp;agrave; to&amp;agrave;n bộ đ&amp;aacute;y vực th&amp;igrave; do dược thảo thối rữa m&amp;agrave; tạo th&amp;agrave;nh một lớp b&amp;ugrave;n. C&amp;aacute;i lớp b&amp;ugrave;n do v&amp;ocirc; số linh dược, c&amp;acirc;y cối v&amp;agrave; chim ch&amp;oacute;c thối rữa tạo th&amp;agrave;nh đ&amp;oacute; mặc d&amp;ugrave; ẩn chứa v&amp;ocirc; số dược lực nhưng tốt qu&amp;aacute; lại h&amp;oacute;a hại. Cho d&amp;ugrave; l&amp;agrave; nh&amp;acirc;n s&amp;acirc;m hay chu quả th&amp;igrave; dược lực cũng chỉ tới một mức độ nhất định, nếu kh&amp;ocirc;ng c&amp;oacute; khả năng chịu được th&amp;igrave; đối với cơ thể con người m&amp;agrave; n&amp;oacute;i đ&amp;oacute; ch&amp;iacute;nh l&amp;agrave; kịch độc. Hu&amp;ocirc;ng chi trong đ&amp;oacute; c&amp;ograve;n c&amp;oacute; v&amp;ocirc; số dược lực của c&amp;aacute;c loại cỏ độc m&amp;agrave; c&amp;aacute;c vị đại sư chế độc ao ước.&lt;br /&gt;
&lt;br /&gt;
C&amp;oacute; thể n&amp;oacute;i b&amp;ecirc;n dưới chẳng kh&amp;aacute;c g&amp;igrave; một b&amp;aacute;t ch&amp;aacute;o n&amp;oacute;ng đang lục bục, nổi l&amp;ecirc;n hững bọt kh&amp;iacute;, tuy nhi&amp;ecirc;n lại độc v&amp;ocirc; c&amp;ugrave;ng.&lt;br /&gt;
&lt;br /&gt;
Cho d&amp;ugrave; l&amp;agrave; Lạc Bắc c&amp;oacute; t&amp;iacute;nh c&amp;aacute;ch cực kỳ cứng cỏi th&amp;igrave; khi rơi xuống, vừa mới chạm v&amp;agrave;o lớp b&amp;ugrave;n đ&amp;oacute; cũng phải k&amp;ecirc;u l&amp;ecirc;n thảm thiết.&lt;br /&gt;
&lt;br /&gt;
Hai ch&amp;acirc;n của hắn vừa mới chạm v&amp;agrave;o lớp b&amp;ugrave;n gần như lập tức thối rữa, chỉ c&amp;ograve;n xương trắng. Rồi to&amp;agrave;n th&amp;acirc;n Lạc Bắc lập tức ch&amp;igrave;m xuống lớp b&amp;ugrave;n. Nước b&amp;ugrave;n tản ra m&amp;ugrave;i tanh tưởi nhanh ch&amp;oacute;ng tr&amp;agrave;n v&amp;agrave;o miệng mũi của hắn.&lt;br /&gt;
&lt;br /&gt;
Trong nh&amp;aacute;y mắt, da thịt tr&amp;ecirc;n người Lạc Bắc, thậm ch&amp;iacute; l&amp;agrave; nội tạng b&amp;ecirc;n trong cũng bắt đầu thối rữa, nhưng c&amp;ugrave;ng l&amp;uacute;c đ&amp;oacute; thứ nước thuốc m&amp;agrave;u hồng lục m&amp;agrave; Lạc Bắc đ&amp;atilde; uống tước đ&amp;oacute; cũng bắt đầu ph&amp;aacute;t huy t&amp;aacute;c dụng.&lt;br /&gt;
&lt;br /&gt;
Thương Dương gi&amp;aacute;c l&amp;agrave; thần th&amp;uacute; thượng cổ, chỉ cần một ch&amp;uacute;t bột phấn của n&amp;oacute; l&amp;agrave; c&amp;oacute; thể giải được b&amp;aacute;ch độc, tạo m&amp;aacute;u v&amp;agrave; sự sống.&lt;br /&gt;
&lt;br /&gt;
Hải Vương huyết ngọc l&amp;agrave; tủy của giao trong trong biển, chỉ cần một &amp;iacute;t l&amp;agrave; c&amp;oacute; thể k&amp;eacute;o d&amp;agrave;i tuổi thọ, khiến cho th&amp;acirc;n thể c&amp;oacute; được khả năng chữa trị kinh người.&lt;br /&gt;
&lt;br /&gt;
Hiện tại một c&amp;aacute;i Thương Dương gi&amp;aacute;c v&amp;agrave; đầy đủ Hải Vương huyết ngọc được điều chế th&amp;agrave;nh thuốc trong c&amp;aacute;i b&amp;igrave;nh nhỏ đ&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
Ngo&amp;agrave;i ra b&amp;ecirc;n trong đ&amp;oacute; c&amp;ograve;n c&amp;oacute; v&amp;ocirc; số những thứ m&amp;agrave; con người kh&amp;ocirc;ng biết nhưng lại c&amp;oacute; hiệu quả cực lớn của b&amp;iacute; thuật mi&amp;ecirc;u cương.&lt;br /&gt;
&lt;br /&gt;
Khi tử kh&amp;iacute; v&amp;agrave; dược lực kịch độc trong cấm kỵ tử uy&amp;ecirc;n bắt đầu khiến cho th&amp;acirc;n thể v&amp;agrave; xương cốt của Lạc Bắc thối rữa th&amp;igrave; b&amp;iacute; thuốc nghịch thi&amp;ecirc;n cũng bắt đầu nhanh ch&amp;oacute;ng đẩy kịch độc ra khỏi cơ thể của Lạc Bắc c&amp;ugrave;ng với kh&amp;iacute; dơ bẩn, loại trừ dược lực v&amp;ocirc; &amp;iacute;ch, h&amp;oacute;a th&amp;agrave;nh dược lực c&amp;oacute; &amp;iacute;ch cho m&amp;igrave;nh d&amp;ugrave;ng. Bằng mắt thường c&amp;oacute; thể thấy được n&amp;oacute; đang từ từ cải tạo th&amp;acirc;n thể, cốt c&amp;aacute;ch, huyết mạch v&amp;agrave; da thịt của Lạc Bắc.&lt;br /&gt;
&lt;br /&gt;
Đ&amp;acirc;y l&amp;agrave; cảnh tượng v&amp;ocirc; c&amp;ugrave;ng th&amp;ecirc; thảm, cho d&amp;ugrave; l&amp;agrave; ở luyện ngục cũng kh&amp;ocirc;ng thể nh&amp;igrave;n thấy.&lt;br /&gt;
&lt;br /&gt;
Bằng với tốc độ thối của da thịt rồi lại như sinh ra từ trong mộng. M&amp;agrave; kinh mạch thường thường vừa mới được sinh ra th&amp;igrave; lại bị dược lực x&amp;acirc;m nhập khiến cho thối rữa.&lt;br /&gt;
&lt;br /&gt;
Cảnh tượng n&amp;agrave;y giống như một người đang đau khổ gi&amp;atilde;y dụa trong bể khổ.&lt;br /&gt;
&lt;br /&gt;
Đ&amp;acirc;y mới thực sự l&amp;agrave; thứ đau khổ nơi luyện ngục.&lt;br /&gt;
&lt;br /&gt;
Tại sao hắn lại lựa chọn sự đau khổ như vậy? Hơn nữa nếu hắn đ&amp;atilde; lựa chọn như vậy th&amp;igrave; sau n&amp;agrave;y c&amp;oacute; khả năng c&amp;ograve;n phải chịu đựng sự đau khổ nhiều hơn nữa.&lt;br /&gt;
&lt;br /&gt;
Kh&amp;ocirc;ng ai biết được trong t&amp;acirc;m của thiếu ni&amp;ecirc;n cứng cỏi đ&amp;oacute; đang nghĩ g&amp;igrave;.&lt;br /&gt;
&lt;br /&gt;
Hay l&amp;agrave; cũng giống như con ch&amp;oacute; hoang kh&amp;ocirc;ng hề cầu xin người kh&amp;aacute;c thương hại m&amp;agrave; chỉ muốn nắm lấy mạng sống của m&amp;igrave;nh?&lt;br /&gt;
&lt;br /&gt;
Kh&amp;ocirc;ng một ai c&amp;oacute; được c&amp;acirc;u trả lời.&lt;br /&gt;
&lt;br /&gt;
Sau khi h&amp;eacute;t l&amp;ecirc;n một tiếng thảm thiết rồi bị b&amp;ugrave;n đen bao phủ, Lạc Bắc kh&amp;ocirc;ng chịu nổi nữa m&amp;agrave; ngất đi.&lt;br /&gt;
&lt;br /&gt;
Tuy nhi&amp;ecirc;n ở trong vũng b&amp;ugrave;n đầy chướng kh&amp;iacute;, hai loại dược lực vẫn c&amp;ograve;n đang giằng co với nhau.&lt;br /&gt;
&lt;br /&gt;
Bởi v&amp;igrave; trong thế gian gần như kh&amp;ocirc;ng c&amp;oacute; người n&amp;agrave;o c&amp;oacute; thể t&amp;igrave;m được Thương Dương gi&amp;aacute;c v&amp;agrave; Hải Vương huyết ngọc giống như Nguy&amp;ecirc;n Thi&amp;ecirc;n Y, v&amp;igrave; vậy m&amp;agrave; thứ thuốc b&amp;iacute; truyền của người Mi&amp;ecirc;u từ l&amp;acirc;u đ&amp;atilde; kh&amp;ocirc;ng xuất hiện. C&amp;ograve;n tr&amp;ecirc;n văn tự bằng chữ thổ ngữ độc đ&amp;aacute;o của người Mi&amp;ecirc;u th&amp;igrave; chỉ ghi lại một lời dẫn. Sau khi chế được th&amp;agrave;nh c&amp;ocirc;ng loại thuốc n&amp;agrave;y c&amp;oacute; thể t&amp;igrave;m tới nơi ẩn chứa dược lực c&amp;agrave;ng nhiều th&amp;igrave; kinh mạch của người đ&amp;oacute; được cải tạo lại c&amp;agrave;ng th&amp;ecirc;m nghịch thi&amp;ecirc;n.&lt;/p&gt;
', 1, CAST(0x0000ADEF0113B6D4 AS DateTime), CAST(0x0000ADEF0113B6D4 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (3123, 4101, 2042, N'Chương 15: Nhập thế, thụ kinh', N'&lt;p&gt;Cho d&amp;ugrave; l&amp;agrave; dốc hết sức, Nguy&amp;ecirc;n Thi&amp;ecirc;n Y tự m&amp;igrave;nh ra tay th&amp;igrave; c&amp;oacute; thể t&amp;igrave;m được linh dược với dược lực kh&amp;ocirc;ng thể so được với cấm kỵ Tử Uy&amp;ecirc;n của La Ph&amp;ugrave;. Lớp b&amp;ugrave;n d&amp;agrave;y ng&amp;agrave;n thước dưới đ&amp;oacute; l&amp;agrave; do dược lực t&amp;iacute;ch tụ m&amp;agrave; th&amp;agrave;nh.&lt;br /&gt;
&lt;br /&gt;
- Cho d&amp;ugrave; tư chất b&amp;igrave;nh b&amp;igrave;nh th&amp;igrave; thời gian kh&amp;ocirc;ng nhiều lắm cũng c&amp;oacute; nghĩa l&amp;yacute; g&amp;igrave; đ&amp;acirc;u. - Nguy&amp;ecirc;n Thi&amp;ecirc;n Y đứng tr&amp;ecirc;n v&amp;aacute;ch n&amp;uacute;i nh&amp;igrave;n chướng kh&amp;iacute; bao phủ dưới vực s&amp;acirc;u m&amp;agrave; trong mắt hiện l&amp;ecirc;n h&amp;agrave;o quang m&amp;atilde;nh liệt.&lt;br /&gt;
&lt;br /&gt;
C&amp;aacute;i m&amp;ocirc;n ph&amp;aacute;i b&amp;igrave;nh thường tr&amp;ecirc;n thế gian khi t&amp;igrave;m đệ tử đều lựa chọn người c&amp;oacute; cốt c&amp;aacute;ch kinh mạch th&amp;iacute;ch hợp với việc tu đạo. Rồi sau đ&amp;oacute; trước ti&amp;ecirc;n dậy c&amp;aacute;c loại ph&amp;aacute;p quyết r&amp;egrave;n luyện th&amp;acirc;n thể nhằm cường kiện kinh mạch, luyện thể để Tr&amp;uacute;c Cơ. Qu&amp;aacute; tr&amp;igrave;nh đ&amp;oacute; cũng phải mất tới mười năm. Nhưng Nguy&amp;ecirc;n Thi&amp;ecirc;n Y lại d&amp;ugrave;ng b&amp;iacute; thuật cải tạo kinh mạch của Lạc Bắc, sử dụng ngoại lực cực mạch gi&amp;uacute;p Lạc Bắc Tr&amp;uacute;c Cơ.&lt;br /&gt;
&lt;br /&gt;
Hơn nữa Nguy&amp;ecirc;n Thi&amp;ecirc;n Y cũng từ những g&amp;igrave; m&amp;agrave; tổ sư ghi lại biết được b&amp;iacute; thuốc của người Mi&amp;ecirc;u tr&amp;ecirc;n thực tế kh&amp;ocirc;ng phải khiến cho th&amp;acirc;n thể của con người giống như kim cương m&amp;agrave; l&amp;agrave; khiến cho n&amp;oacute; tho&amp;aacute;t thai ho&amp;aacute;n cốt, th&amp;iacute;ch hợp với việc tu đạo. V&amp;igrave; vậy m&amp;agrave; cho d&amp;ugrave; l&amp;agrave; Nguy&amp;ecirc;n Thi&amp;ecirc;n Y cũng kh&amp;ocirc;ng biết thứ thuốc b&amp;iacute; truyền đ&amp;oacute; c&amp;oacute; hiệu quả như thế n&amp;agrave;o, m&amp;agrave; cũng kh&amp;ocirc;ng biết t&amp;ecirc;n đệ tử sau khi được cải tạo sẽ ra l&amp;agrave;m sao.&lt;br /&gt;
&lt;br /&gt;
Qu&amp;aacute; tr&amp;igrave;nh cải tạo li&amp;ecirc;n tục diễn ra một c&amp;aacute;ch tuần ho&amp;agrave;n trong Tử uy&amp;ecirc;n, Lạc Bắc mặc d&amp;ugrave; đang h&amp;ocirc;n m&amp;ecirc; nhưng th&amp;acirc;n thể, da thịt huyết mạch vẫn li&amp;ecirc;n tục thối rữa rối lại sinh ra.&lt;br /&gt;
&lt;br /&gt;
Dược lực m&amp;agrave;u đen hội tụ trong b&amp;ugrave;n bằng m&amp;aacute;t thường c&amp;oacute; thể thấy được ch&amp;uacute;ng như một d&amp;ograve;ng khi li&amp;ecirc;n tục x&amp;acirc;m nhập v&amp;agrave;o th&amp;acirc;n thể của Lạc Bắc. M&amp;agrave; trong th&amp;acirc;n thể của Lạc Bắc lại tr&amp;agrave;n ngập một l&amp;agrave;n &amp;aacute;nh s&amp;aacute;ng m&amp;agrave;u xanh đậm.&lt;br /&gt;
&lt;br /&gt;
Một v&amp;agrave;i thứ từ da thịt thối rữa của Lạc Bắc đi ra ngo&amp;agrave;i, chỉ để lại d&amp;ograve;ng kh&amp;iacute; m&amp;agrave;u trắng ng&amp;agrave; li&amp;ecirc;n tục hợp lại v&amp;agrave;o trong &amp;aacute;nh h&amp;agrave;o quan m&amp;agrave;u xanh trong cơ thể hắn.&lt;br /&gt;
&lt;br /&gt;
Đ&amp;acirc;y cũng l&amp;agrave; sự thần kỳ của thứ thuốc b&amp;iacute; truyền. Nếu chỉ dựa v&amp;agrave;o dược lực th&amp;igrave; cũng kh&amp;ocirc;ng thể n&amp;agrave;o chống lại dược lực t&amp;iacute;ch tụ trong vũng b&amp;ugrave;n của Tử Uy&amp;ecirc;n. Thứ thuốc b&amp;iacute; truyền n&amp;agrave;y đẩy kịch độc v&amp;agrave; dược lực kh&amp;ocirc;ng tốt với cơ thể ra ngo&amp;agrave;i, hấp thu dược lực c&amp;oacute; &amp;iacute;ch v&amp;agrave;o trong th&amp;acirc;n thể của Lạc Bắc.&lt;br /&gt;
&lt;br /&gt;
L&amp;agrave;n kh&amp;iacute; kịch độc v&amp;agrave; thối rữa tản ra tr&amp;ecirc;n người Lạc Bắc c&amp;agrave;ng l&amp;uacute;c c&amp;agrave;ng mạnh bao phủ lấy người hắn giống như một c&amp;aacute;i k&amp;eacute;n to. Tho&amp;aacute;ng c&amp;aacute;i, thứ kh&amp;iacute; độc v&amp;agrave; &amp;ocirc; uế tản ra từ người Lạc Bắc kh&amp;ocirc;ng ngờ so với chướng kh&amp;iacute; tr&amp;agrave;n ngập nơi đ&amp;aacute;y vực c&amp;ograve;n đậm hơn. Thứ kh&amp;iacute; độc đ&amp;oacute; tản ra khiến cho chướng kh&amp;iacute; nơi đ&amp;aacute;y vực c&amp;agrave;ng l&amp;uacute;c c&amp;agrave;ng d&amp;agrave;y, chẳng kh&amp;aacute;c g&amp;igrave; Lạc Bắc l&amp;agrave; nguồn gốc của n&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
Trong c&amp;aacute;i k&amp;eacute;n được l&amp;agrave;m từ thứ kh&amp;iacute; m&amp;agrave;u v&amp;agrave;ng đ&amp;oacute; &amp;aacute;nh s&amp;aacute;ng m&amp;agrave;u xanh hồng tr&amp;ecirc;n người Lạc Bắc c&amp;agrave;ng l&amp;uacute;c c&amp;agrave;ng mạnh. M&amp;agrave; dược lực m&amp;agrave; đen ở đ&amp;aacute;y đầm chui v&amp;agrave;o trong cơ thể hắn với tốc độ c&amp;agrave;ng l&amp;uacute;c c&amp;agrave;ng nhanh.&lt;br /&gt;
&lt;br /&gt;
Từ từ, th&amp;acirc;n thể của Lạc Bắc giống như c&amp;oacute; một thứ sức h&amp;uacute;t, khiến cho dược lực m&amp;agrave;u đen lấy hắn l&amp;agrave;m trung t&amp;acirc;m m&amp;agrave; tạo th&amp;agrave;nh một cơn lốc xo&amp;aacute;y.&lt;br /&gt;
&lt;br /&gt;
M&amp;agrave; cốt c&amp;aacute;ch v&amp;agrave; m&amp;aacute;u thịt của Lạc Bắc được chữa trị c&amp;agrave;ng l&amp;uacute;c c&amp;agrave;ng nhanh, từ chỗ th&amp;acirc;n thể thối rữa m&amp;agrave; từ từ hồi phục lại h&amp;igrave;nh người.&lt;br /&gt;
&lt;br /&gt;
Da thịt hắn vẫn tản ra &amp;aacute;nh s&amp;aacute;ng m&amp;agrave;u hồng xanh như trước. Qu&amp;aacute; tr&amp;igrave;nh thối rữa v&amp;agrave; chữa trị lu&amp;acirc;n hồi chấm dứt nhưng dược lực m&amp;agrave;u đen vẫn tr&amp;agrave;n v&amp;agrave;o người hắn như trước.&lt;br /&gt;
&lt;br /&gt;
Chướng kh&amp;iacute; c&amp;agrave;ng l&amp;uacute;c c&amp;agrave;ng đậm tuy nhi&amp;ecirc;n dược lực dưới vũng b&amp;ugrave;n m&amp;agrave;u đen lại c&amp;agrave;ng l&amp;uacute;c c&amp;agrave;ng nhạt cuối c&amp;ugrave;ng biến mất.&lt;br /&gt;
&lt;br /&gt;
M&amp;agrave; tr&amp;ecirc;n &amp;aacute;nh s&amp;aacute;ng m&amp;agrave;u hồng xanh tr&amp;ecirc;n da thịt của Lạc Bắc cũng giống như lửa than từ từ nhạt dần rồi biến mất.&lt;br /&gt;
&lt;br /&gt;
Lạc Bắc giống như đ&amp;atilde; chết, lập lờ tr&amp;ecirc;n mặt vũng b&amp;ugrave;n. Da thịt của hắn t&amp;aacute;i nhợt như kh&amp;ocirc;ng c&amp;oacute; &amp;aacute;nh nắng mặt trời. Tuy nhi&amp;ecirc;n tr&amp;ecirc;n mắt hắn lại dường như c&amp;oacute; một ch&amp;uacute;t hơi thở của Nguy&amp;ecirc;n Thi&amp;ecirc;n Y. Nếu như c&amp;oacute; người n&amp;agrave;o nh&amp;igrave;n thấy sẽ thầm nghĩ cho hắn mặc th&amp;ecirc;m bộ cẩm y chắc chắn sẽ l&amp;agrave; một thiếu ni&amp;ecirc;n anh tuấn.&lt;br /&gt;
&lt;br /&gt;
Chướng kh&amp;iacute; dầy đặc chợt t&amp;aacute;ch ra, rồi một c&amp;aacute;i b&amp;oacute;ng trắng từ tr&amp;ecirc;n cao giống như lưu tinh hạ xuống, lơ lửng b&amp;ecirc;n cạnh Lạc Bắc. Rồi sau đ&amp;oacute;, Nguy&amp;ecirc;n Thi&amp;ecirc;n Y lại lao l&amp;ecirc;n. V&amp;agrave;o l&amp;uacute;c n&amp;agrave;y, vầng mặt trời đỏ như lửa cũng từ tr&amp;ecirc;n đỉnh n&amp;uacute;i cao nhất của La Ph&amp;ugrave; nh&amp;ocirc; l&amp;ecirc;n chiếu rọi to&amp;agrave;n bộ La Ph&amp;ugrave;.&lt;br /&gt;
&lt;br /&gt;
- Sư phụ! Người đang do dự chuyện g&amp;igrave;?&lt;br /&gt;
&lt;br /&gt;
Tr&amp;ecirc;n đỉnh n&amp;uacute;i v&amp;ocirc; danh, Lạc Bắc thật th&amp;agrave; đứng hỏi Nguy&amp;ecirc;n Thi&amp;ecirc;n Y.&lt;br /&gt;
&lt;br /&gt;
V&amp;agrave;o l&amp;uacute;c n&amp;agrave;y, Lạc Bắc đ&amp;atilde; rửa sạch hết dơ bẩn tr&amp;ecirc;n người, kho&amp;aacute;c v&amp;agrave;o một bộ &amp;aacute;o m&amp;agrave;u xanh mới tinh. Mặc d&amp;ugrave; nước da của hắn vẫn trắng nhợt như trước nhưng dưới &amp;aacute;nh dương quang chiếu rọi, th&amp;acirc;n thể khu&amp;ocirc;n mặt đều tr&amp;agrave;n ngập sức sống. So với l&amp;uacute;c trước, mặc d&amp;ugrave; khu&amp;ocirc;n mặt kh&amp;ocirc;ng c&amp;oacute; nhiều thay đổi nhưng đủ d&amp;ugrave;ng bốn chứ tho&amp;aacute;i thai ho&amp;aacute;n cốt để h&amp;igrave;nh dung.&lt;br /&gt;
&lt;br /&gt;
Sau khi thức tỉnh, Lạc Bắc ph&amp;aacute;t hiện sức lực của bản th&amp;acirc;n mặc d&amp;ugrave; kh&amp;ocirc;ng giống như khi ăn cỏ Ti&amp;ecirc;u T&amp;acirc;y tuy nhi&amp;ecirc;n lại trở n&amp;ecirc;n thong thả, kh&amp;ocirc;ng dễ cảm thấy mệt nhọc m&amp;agrave; cũng kh&amp;ocirc;ng c&amp;ograve;n như trước hay thấy đ&amp;oacute;i bụng nữa. Ngoại trừ điều đ&amp;oacute; Ra, Lạc Bắc ph&amp;aacute;t hiện những vết sẹo tr&amp;ecirc;n người m&amp;igrave;nh đ&amp;atilde; nhạt tới mức kh&amp;ocirc;ng c&amp;ograve;n nhận ra được nữa. Tuy nhi&amp;ecirc;n quan trọng nhất l&amp;agrave; sự cảm gi&amp;aacute;c của hắn trở n&amp;ecirc;n nhạy b&amp;eacute;n, dường như c&amp;oacute; thể cảm nhận được r&amp;otilde; r&amp;agrave;ng hoa cỏ xung quanh đang nảy mầm, sương m&amp;ugrave; trong sơn cốc đang bốc l&amp;ecirc;n. Mặc d&amp;ugrave; bản th&amp;acirc;n đ&amp;atilde; cố gắng nhưng Lạc Bắc vẫn chưa ho&amp;agrave;n to&amp;agrave;n qu&amp;ecirc;n được Ma Ha Gi&amp;agrave; La mật ph&amp;aacute;p, thậm ch&amp;iacute; hắn c&amp;ograve;n cảm nhận được linh kh&amp;iacute; ẩn chứa trong thi&amp;ecirc;n địa c&amp;oacute; thấp tho&amp;aacute;ng b&amp;oacute;ng d&amp;aacute;ng của Th&amp;aacute;i Dương ch&amp;acirc;n hỏa. Dường như hắn chỉ cần kết ấn Ma Ha Gi&amp;agrave; La mật ph&amp;aacute;p l&amp;agrave; c&amp;oacute; thể h&amp;uacute;t linh kh&amp;iacute; của th&amp;aacute;i dương ch&amp;acirc;n hỏa v&amp;agrave;o trong Thức Hải của m&amp;igrave;nh.&lt;br /&gt;
&lt;br /&gt;
Sau khi tho&amp;aacute;t thai ho&amp;aacute;n cốt, gi&amp;aacute;c quan thứ s&amp;aacute;u của hắn c&amp;agrave;ng th&amp;ecirc;m nhạy b&amp;eacute;n. Hiện tại bất cứ một người tu đạo n&amp;agrave;o m&amp;agrave; nh&amp;igrave;n thấy Lạc Bắc sẽ nhận ra tư chất của hắn v&amp;ocirc; c&amp;ugrave;ng cao. M&amp;agrave; cũng đ&amp;uacute;ng như vậy, bởi v&amp;igrave; Lạc Bắc c&amp;oacute; thể cảm nhận được trước mặt m&amp;igrave;nh, Nguy&amp;ecirc;n Thi&amp;ecirc;n Y như h&amp;ograve;a tan v&amp;agrave;o với trời đất, kh&amp;ocirc;ng hề c&amp;oacute; lấy một tia cảm x&amp;uacute;c.&lt;br /&gt;
&lt;br /&gt;
- Kh&amp;ocirc;ng c&amp;oacute; g&amp;igrave;. - Khi Nguy&amp;ecirc;n Thi&amp;ecirc;n Y quay đầu lại, Lạc Bắc cảm nhận được một ch&amp;uacute;t do dự của sư phụ đ&amp;atilde; biến mất:&lt;br /&gt;
&lt;br /&gt;
- C&amp;aacute;i thứ thuốc b&amp;iacute; truyền của Mi&amp;ecirc;u Cương đ&amp;uacute;ng l&amp;agrave; đoạt c&amp;ocirc;ng tạo h&amp;oacute;a. Hiện tại cũng tới l&amp;uacute;c ngươi rời khỏi La Ph&amp;ugrave; rồi.&lt;br /&gt;
&lt;br /&gt;
&amp;quot;Tới l&amp;uacute;c rời khỏi La Ph&amp;ugrave;?&amp;quot;&lt;br /&gt;
&lt;br /&gt;
Ch&amp;uacute;t do dự kia của sư phụ hắn kh&amp;ocirc;ng ngờ l&amp;agrave; v&amp;igrave;... &amp;quot;Ly biệt.&amp;quot;&lt;br /&gt;
&lt;br /&gt;
Lạc Bắc l&amp;agrave;m sao c&amp;oacute; thể ngờ được Nguy&amp;ecirc;n Thi&amp;ecirc;n Y đột nhi&amp;ecirc;n lại n&amp;oacute;i một c&amp;acirc;u đ&amp;oacute; m&amp;agrave; ngẩn người. Hắn kh&amp;ocirc;ng nhịn được thất thanh k&amp;ecirc;u l&amp;ecirc;n:&lt;br /&gt;
&lt;br /&gt;
- Sư phụ! Tại sao?&lt;br /&gt;
&lt;br /&gt;
- La Ph&amp;ugrave; ch&amp;uacute;ng ta kh&amp;ocirc;ng theo khu&amp;ocirc;n ph&amp;eacute;p, đ&amp;oacute; cũng l&amp;agrave; quy tắc của La Ph&amp;ugrave;.&lt;br /&gt;
&lt;br /&gt;
Nh&amp;igrave;n Lạc Bắc mặc d&amp;ugrave; đ&amp;atilde; tho&amp;aacute;t thai ho&amp;aacute;n cốt nhưng vẫn c&amp;ograve;n ch&amp;acirc;n chất, Nguy&amp;ecirc;n Thi&amp;ecirc;n Y khẽ thở d&amp;agrave;i rồi thuận miệng n&amp;oacute;i một l&amp;yacute; do:&lt;br /&gt;
&lt;br /&gt;
- Sau khi đệ tử của La Ph&amp;ugrave; ch&amp;uacute;ng ta Tr&amp;uacute;c Cơ th&amp;agrave;nh c&amp;ocirc;ng th&amp;igrave; được truyền thụ một bộ c&amp;ocirc;ng ph&amp;aacute;p La Ph&amp;ugrave; ch&amp;iacute;nh thức sẽ nhập thế để r&amp;egrave;n luyện. Chờ sau khi tu h&amp;agrave;nh tới một mức độ sẽ trở lại La Ph&amp;ugrave;, gặp sư t&amp;ocirc;n để tiếp tục tu luyện.&lt;br /&gt;
&lt;br /&gt;
- Nhập thế r&amp;egrave;n luyện?&lt;br /&gt;
&lt;br /&gt;
- Nếu kh&amp;ocirc;ng nhập thế th&amp;igrave; tu đạo cũng giống như bế m&amp;ocirc;n m&amp;agrave; th&amp;ocirc;i. Chỉ c&amp;oacute; trải qua v&amp;ocirc; số cuộc sống trong hồng trần th&amp;igrave; bản t&amp;acirc;m mới c&amp;agrave;ng th&amp;ecirc;m vững chắc.&lt;br /&gt;
&lt;br /&gt;
Từ sau khi lựa chọn trở th&amp;agrave;nh đệ tử của La Ph&amp;ugrave;, Lạc Bắc chưa hề nghi ngờ Nguy&amp;ecirc;n Thi&amp;ecirc;n Y.&lt;br /&gt;
&lt;br /&gt;
- Sư phụ! Vậy con phải l&amp;agrave;m như thế n&amp;agrave;o?&lt;br /&gt;
&lt;br /&gt;
- Trước ti&amp;ecirc;n người theo ta tới đ&amp;acirc;y.&lt;br /&gt;
&lt;br /&gt;
Nguy&amp;ecirc;n Thi&amp;ecirc;n Y kh&amp;ocirc;ng trả lời c&amp;acirc;u hỏi của Lạc Bắc ngay m&amp;agrave; hai tay vẽ một c&amp;aacute;i ph&amp;aacute;p trận. C&amp;aacute;i ph&amp;aacute;p trận huyền ảo đ&amp;oacute; cũng ch&amp;iacute;nh l&amp;agrave; thứ m&amp;agrave; Nguy&amp;ecirc;n Thi&amp;ecirc;n Y d&amp;ugrave;ng để cho Lạc Bắc nhớ được quy luật vận h&amp;agrave;nh của trời đất, đồng thời cũng l&amp;agrave;m cho Dược Vương t&amp;ocirc;ng kinh sợ m&amp;agrave; kh&amp;ocirc;ng d&amp;aacute;m t&amp;igrave;m cớ phải n&amp;ocirc;n Thương Dương gi&amp;aacute;c ra.&lt;br /&gt;
&lt;br /&gt;
Đầu ti&amp;ecirc;n, Lạc Bắc cảm nhận được một l&amp;agrave;n hơi thở m&amp;ecirc;nh m&amp;ocirc;ng bao phủ lấy bản th&amp;acirc;n v&amp;agrave; Nguy&amp;ecirc;n Thi&amp;ecirc;n Y v&amp;agrave;o b&amp;ecirc;n trong. Hắn hoảng sợ nh&amp;igrave;n Nguy&amp;ecirc;n Thi&amp;ecirc;n Y v&amp;agrave; dưới ch&amp;acirc;n m&amp;igrave;nh đột nhi&amp;ecirc;n tản ra &amp;aacute;nh s&amp;aacute;ng ch&amp;oacute;i mắt, tựa như to&amp;agrave;n bộ ngọn n&amp;uacute;i từ tr&amp;ecirc;n xuống dưới bị bao phủ bởi &amp;aacute;nh h&amp;agrave;o quang m&amp;agrave;u bạc. &amp;Aacute;nh s&amp;aacute;ng l&amp;oacute;e l&amp;ecirc;n, Lạc Bắc giống như rơi v&amp;agrave;o trong vũ trụ, c&amp;ograve;n Nguy&amp;ecirc;n Thi&amp;ecirc;n Y th&amp;igrave; giống như một vị thần. Lạc Bắc c&amp;oacute; cảm gi&amp;aacute;c như kh&amp;ocirc;ng gian v&amp;agrave; thời gian bị xuy&amp;ecirc;n thủng. Trong t&amp;iacute;ch tắc đ&amp;oacute;, Lạc Bắc ph&amp;aacute;t hiện bản th&amp;acirc;n v&amp;agrave; Nguy&amp;ecirc;n Thi&amp;ecirc;n Y đứng dưới c&amp;aacute;i th&amp;aacute;c nước h&amp;ugrave;ng vĩ. Một tia s&amp;aacute;ng từ trong tay Nguy&amp;ecirc;n Thi&amp;ecirc;n Y nở rộ. Trong khoảng khắc đ&amp;oacute;, ch&amp;iacute;n tầng trời như c&amp;oacute; thi&amp;ecirc;n l&amp;ocirc;i xuất hiện. C&amp;aacute;i th&amp;aacute;c nước h&amp;ugrave;ng vĩ cộng với thế n&amp;uacute;i kh&amp;ocirc;ng ngờ bị ph&amp;aacute; vỡ s&amp;acirc;u tới mấy trăm trượng trong l&amp;ograve;ng n&amp;uacute;i. Ở đ&amp;oacute; xuất hiện một c&amp;aacute;i đền khổng lồ, c&amp;oacute; m&amp;agrave;u giống với m&amp;agrave;u của n&amp;uacute;i đ&amp;aacute;. Tr&amp;ecirc;n tường của ng&amp;ocirc;i đền c&amp;oacute; khắc những hoa văn v&amp;agrave; h&amp;igrave;nh th&amp;ugrave; cổ xưa, nh&amp;igrave;n cũng kh&amp;ocirc;ng huy ho&amp;agrave;ng lắm tuy nhi&amp;ecirc;n lại ẩn chứa kh&amp;iacute; thế to lớn c&amp;ugrave;ng năm th&amp;aacute;ng.&lt;br /&gt;
&lt;br /&gt;
- Đ&amp;acirc;y l&amp;agrave; nơi n&amp;agrave;o?&lt;br /&gt;
&lt;br /&gt;
Đứng trước đại điện, mặc d&amp;ugrave; Lạc Bắc lớn gan như vậy, bản th&amp;acirc;n l&amp;agrave; người ứng cỏi nhưng cũng gần như nghẹt thở. C&amp;aacute;i điện đ&amp;oacute; quả thật qu&amp;aacute; cao, chỉ ri&amp;ecirc;ng c&amp;aacute;i v&amp;ograve;m nơi cửa lớn th&amp;igrave; đừng k&amp;iacute;nh cũng vượt qu&amp;aacute; năm trượng. Tr&amp;ecirc;n c&amp;aacute;nh cửa c&amp;oacute; một tảng đ&amp;aacute; khắc chữ. Lạc Bắc kh&amp;ocirc;ng biết được chữ đ&amp;oacute; l&amp;agrave; g&amp;igrave;, bởi v&amp;igrave; n&amp;oacute; l&amp;agrave; chữ cổ. Tuy nhi&amp;ecirc;n mỗi chữ cũng to gần một trượng.&lt;br /&gt;
&lt;br /&gt;
Đứng trước cửa, Lạc Bắc cảm nhận c&amp;oacute; một l&amp;agrave;n &amp;aacute;p lực m&amp;ecirc;nh m&amp;ocirc;ng ập tới khiến cho hắn c&amp;oacute; cảm gi&amp;aacute;c bản th&amp;acirc;n giống như một người t&amp;iacute; hon lọt v&amp;agrave;o một quốc gia của những người khổng lồ.&lt;br /&gt;
&lt;br /&gt;
- Đ&amp;acirc;y ch&amp;iacute;nh l&amp;agrave; chỗ m&amp;agrave; c&amp;aacute;c đời tổ sư truyền lại kinh điển. N&amp;oacute; ti&amp;ecirc;u ph&amp;iacute; mất tới mười năm của vị tổ sư đời thứ ba của La Ph&amp;ugrave; ch&amp;uacute;ng ta. Sự kế thừa ng&amp;agrave;n năm của ph&amp;aacute;i La Ph&amp;ugrave; ch&amp;uacute;ng ta kh&amp;ocirc;ng như những m&amp;ocirc;n ph&amp;aacute;i kh&amp;aacute;c được cất giữ ở b&amp;ecirc;n ngo&amp;agrave;i. - &amp;Acirc;m thanh của Nguy&amp;ecirc;n Thi&amp;ecirc;n Y hết sức trang nhi&amp;ecirc;m. Một tia s&amp;aacute;ng bạc l&amp;oacute;e l&amp;ecirc;n, chẳng kh&amp;aacute;c g&amp;igrave; một c&amp;aacute;i cầu vồng quấn quanh người Lạc Bắc m&amp;agrave; bay v&amp;agrave;o trong điện.&lt;br /&gt;
&lt;br /&gt;
Lạc Bắc bị cuốn v&amp;agrave;o trong điện, kh&amp;ocirc;ng nhịn được một thốt l&amp;ecirc;n một tiếng. Trước mắt hắn l&amp;agrave; c&amp;aacute;i thềm đ&amp;aacute; tới mấy ng&amp;agrave;n bậc nối thẳng v&amp;agrave;o một ng&amp;ocirc;i đền rất cao. Hai b&amp;ecirc;n thềm đ&amp;aacute; đều l&amp;agrave; vực s&amp;acirc;u kh&amp;ocirc;ng thấy đ&amp;aacute;y, thấp tho&amp;aacute;ng c&amp;oacute; &amp;aacute;nh nước lưu chuyển. M&amp;agrave; tr&amp;ecirc;n đỉnh đầu lại giống như bầu trời, kh&amp;ocirc;ng ngờ c&amp;oacute; một quầng s&amp;aacute;ng đang chớp động.&lt;br /&gt;
&lt;br /&gt;
Điều khiến cho Lạc Bắc kinh ngạc kh&amp;ocirc;ng phải l&amp;agrave; &amp;aacute;p lực từ c&amp;aacute;i điện m&amp;agrave; l&amp;agrave; quầng s&amp;aacute;ng tr&amp;ecirc;n đỉnh đầu.&lt;br /&gt;
&lt;br /&gt;
Tr&amp;ecirc;n quầng s&amp;aacute;ng đ&amp;oacute; kh&amp;ocirc;ng ngờ c&amp;oacute; mấy c&amp;aacute;i b&amp;oacute;ng đang chuyển động.&lt;br /&gt;
&lt;br /&gt;
B&amp;ecirc;n trong đ&amp;oacute;, Lạc Bắc nh&amp;igrave;n thấy rất nhiều loại mu&amp;ocirc;ng cầm, dị th&amp;uacute; m&amp;agrave; bản th&amp;acirc;n chưa bao giờ nghe thấy. Lạc Bắc lại giật m&amp;igrave;nh khi nh&amp;igrave;n thấy c&amp;oacute; rất nhiều người ăn mặc kh&amp;aacute;c nhau đang giảng kinh luận đạo, lại thấy c&amp;oacute; v&amp;ocirc; số người đang thi triển ph&amp;aacute;p ấn đấu ph&amp;eacute;p. Đ&amp;aacute;m mu&amp;ocirc;ng cầm dị th&amp;uacute; v&amp;agrave; những người đ&amp;oacute; đấu ph&amp;eacute;p, ph&amp;oacute;ng ra ph&amp;aacute;p thuật đều kinh thế h&amp;atilde;i tục. M&amp;agrave; b&amp;ecirc;n tr&amp;ecirc;n vầng s&amp;aacute;ng đ&amp;oacute; li&amp;ecirc;n tục hiện l&amp;ecirc;n một số vầng s&amp;aacute;ng giống như điển tịch Ma Ha Gi&amp;agrave; La mật ph&amp;aacute;p.&lt;br /&gt;
&lt;br /&gt;
- Kh&amp;ocirc;ng cần phải nh&amp;igrave;n nhiều. Tất cả đều l&amp;agrave; những thứ m&amp;agrave; c&amp;aacute;c vị tổ sư của ph&amp;aacute;i La Ph&amp;ugrave; ch&amp;uacute;ng ta nh&amp;igrave;n thấy. Nhưng nếu ngươi nhớ ch&amp;uacute;ng th&amp;igrave; sau khi nhập thế sẽ th&amp;ecirc;m phần nguy hiểm. Sau n&amp;agrave;y khi c&amp;oacute; cơ duy&amp;ecirc;n, ngươi sẽ c&amp;oacute; cơ hội để nh&amp;igrave;n lại.&lt;br /&gt;
&lt;br /&gt;
L&amp;uacute;c Lạc Bắc kh&amp;ocirc;ng k&amp;igrave;m được nh&amp;igrave;n l&amp;ecirc;n tr&amp;ecirc;n th&amp;igrave; &amp;acirc;m thanh của Nguy&amp;ecirc;n Thi&amp;ecirc;n Y vang l&amp;ecirc;n trong tai của hắn.&lt;br /&gt;
&lt;br /&gt;
Mặc d&amp;ugrave; kh&amp;ocirc;ng biết nguy&amp;ecirc;n nh&amp;acirc;n, nhưng Nguy&amp;ecirc;n Thi&amp;ecirc;n Y đ&amp;atilde; n&amp;oacute;i vậy th&amp;igrave; Lạc Bắc liền c&amp;uacute;i đầu, kh&amp;ocirc;ng hề nh&amp;igrave;n tới những vầng s&amp;aacute;ng l&amp;agrave;m cho hắn phải rung động đ&amp;oacute; nữa.&lt;br /&gt;
&lt;br /&gt;
Sau khi đi hết mấy ng&amp;agrave;n bậc thang, Lạc Bắc c&amp;oacute; thể nh&amp;igrave;n thấy một ng&amp;ocirc;i đền đang lơ lửng, kh&amp;ocirc;ng hề c&amp;oacute; lấy một ch&amp;uacute;t h&amp;igrave;nh vẽ hay đi&amp;ecirc;u khắc, tuy nhi&amp;ecirc;n kh&amp;iacute; thế của n&amp;oacute; lại c&amp;agrave;ng mạnh. Đi v&amp;agrave;o trong điện, hai b&amp;ecirc;n tường c&amp;aacute;ch hắn &amp;iacute;t nhất l&amp;agrave; mười trượng c&amp;ograve;n c&amp;aacute;i n&amp;oacute;c th&amp;igrave; c&amp;aacute;ch đỉnh đầu hắn cũng hơn mười trượng.&lt;br /&gt;
&lt;br /&gt;
Đứng ở trong đ&amp;oacute;, tinh thần Lạc Bắc chấn động, cảm nhận bản th&amp;acirc;n thật nhỏ b&amp;eacute; giống như con kiến.&lt;br /&gt;
&lt;br /&gt;
Cho d&amp;ugrave; kẻ n&amp;agrave;o đứng ở đ&amp;acirc;y, đối diện với trời đất th&amp;igrave; cũng c&amp;oacute; cảm gi&amp;aacute;c đ&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
C&amp;aacute;i điện lớn n&amp;agrave;y giống như nối liền giữa trời v&amp;agrave; đất.&lt;br /&gt;
&lt;br /&gt;
Tổ sư x&amp;acirc;y dựng một c&amp;aacute;i điện lớn như vậy trong l&amp;ograve;ng n&amp;uacute;i kh&amp;ocirc;ng biết l&amp;agrave; c&amp;oacute; &amp;yacute; ch&amp;iacute; tới mức độ n&amp;agrave;o.&lt;br /&gt;
&lt;br /&gt;
Tr&amp;ecirc;n đỉnh điện c&amp;oacute; bố tr&amp;iacute; rất nhiều điểm s&amp;aacute;ng. Những vi&amp;ecirc;n minh ch&amp;acirc;u được sắp xếp căn cứ theo nhật nguyệt, ngũ h&amp;agrave;nh m&amp;agrave; tản ra &amp;aacute;nh s&amp;aacute;ng xanh rực rỡ.&lt;br /&gt;
&lt;br /&gt;
Trong điện ho&amp;agrave;n to&amp;agrave;n trống kh&amp;ocirc;ng, chỉ c&amp;oacute; những pho tượng tr&amp;ocirc;ng v&amp;ocirc; c&amp;ugrave;ng sống động. Mỗi pho tượng đều cao tới mười trượng, được chạm trổ một c&amp;aacute;ch tinh vi, kh&amp;ocirc;ng hề thấy c&amp;oacute; ch&amp;uacute;t dấu vết cắt gọt. M&amp;agrave; mỗi pho tượng lại c&amp;oacute; một d&amp;aacute;ng vẻ kh&amp;aacute;c nhau. C&amp;oacute; pho tượng mặc gi&amp;aacute;p trụ, trong tay cầm ph&amp;aacute;p bảo kỳ qu&amp;aacute;i. Hoặc c&amp;oacute; pho tượng th&amp;igrave; hai tay kh&amp;ocirc;ng c&amp;oacute; g&amp;igrave; nhưng lại cưỡi một con qu&amp;aacute;i vật kỳ lạ nh&amp;igrave;n rất dữ tợn. C&amp;oacute; pho tượng th&amp;igrave; mặt mũi lại hiền l&amp;agrave;nh. Lạc Bắc đếm th&amp;igrave; tổng cộng c&amp;oacute; tất cả mười lăm pho tượng cả thảy.&lt;br /&gt;
&lt;br /&gt;
- Đ&amp;acirc;y l&amp;agrave; mười lăm pho tượng của c&amp;aacute;c đời tổ sư ph&amp;aacute;i La Ph&amp;ugrave; ch&amp;uacute;ng ta. - Nguy&amp;ecirc;n Thi&amp;ecirc;n Y đứng ở giữa điện m&amp;agrave; n&amp;oacute;i với Lạc Bắc một c&amp;aacute;ch chậm r&amp;atilde;i.&lt;br /&gt;
&lt;br /&gt;
Lạc Bắc giật m&amp;igrave;nh. Mặc d&amp;ugrave; khi Nguy&amp;ecirc;n Thi&amp;ecirc;n Y thu hắn l&amp;agrave;m đồ đệ đ&amp;atilde; n&amp;oacute;i La Ph&amp;ugrave; kh&amp;ocirc;ng c&amp;acirc;u nệ nghi lễ rắc rồi của thế gian nhưng v&amp;agrave;o l&amp;uacute;c n&amp;agrave;y, Lạc Bắc kh&amp;ocirc;ng tự chủ được m&amp;agrave; quỳ xuống.&lt;br /&gt;
&lt;br /&gt;
- C&amp;aacute;c vị tổ sư chứng kiến. Đại đệ tử thứ mười lăm của La Ph&amp;ugrave; l&amp;agrave; Nguy&amp;ecirc;n Thi&amp;ecirc;n Y b&amp;acirc;y giờ ch&amp;iacute;nh thức truyền kinh điển cho Lạc Bắc.&lt;br /&gt;
&lt;br /&gt;
Nguy&amp;ecirc;n Thi&amp;ecirc;n Y nh&amp;igrave;n mười lăm pho tượng khổng lồ rồi đặt nhẹ b&amp;agrave;n tay l&amp;ecirc;n đỉnh đầu Lạc Bắc m&amp;agrave; n&amp;oacute;i:&lt;br /&gt;
&lt;br /&gt;
- Tiếp nhận Vọng Niệm Thi&amp;ecirc;n TSnh kinh.&lt;br /&gt;
&lt;br /&gt;
Một bộ ph&amp;aacute;p quyết huyền ảo đột nhi&amp;ecirc;n kh&amp;ocirc;ng một ch&amp;uacute;t dấu vết xuất hiện trong đầu Lạc Bắc.&lt;br /&gt;
&lt;br /&gt;
Tại nơi cực Bắc, bầu trời v&amp;agrave; mặt đất giống hết nhau, ph&amp;iacute;a tr&amp;ecirc;n v&amp;ugrave;ng đất lạnh c&amp;oacute; một ngọn n&amp;uacute;i h&amp;ugrave;ng vĩ đứng sừng sững tr&amp;ecirc;n băng tuyết chẳng kh&amp;aacute;c g&amp;igrave; một ngọn n&amp;uacute;i băng. Tr&amp;ecirc;n đỉnh n&amp;uacute;i c&amp;oacute; một c&amp;aacute;i miếu thờ tường ng&amp;oacute;i m&amp;agrave;u v&amp;agrave;ng. L&amp;aacute; cờ được dệt bằng l&amp;ocirc;ng b&amp;ograve; T&amp;acirc;y Tạng trải qua hơn một ng&amp;agrave;n năm gi&amp;aacute; lạnh m&amp;agrave; v&amp;ocirc; c&amp;ugrave;ng r&amp;aacute;ch rưới. Khoảng thời gian chừng nửa n&amp;eacute;n nhang trước, khi ngọn n&amp;uacute;i v&amp;agrave; th&amp;aacute;c nước t&amp;aacute;ch ra để lộ c&amp;aacute;i điện lớn n&amp;agrave;y th&amp;igrave; ở một nơi c&amp;aacute;ch xa La Ph&amp;ugrave; mấy ng&amp;agrave;n dặm c&amp;oacute; một vị Lạt Ma khổ tu mặc phật b&amp;agrave;o m&amp;agrave;u đỏ, để trần một nửa người, đầu đội một c&amp;aacute;i mũ bằng nhung. Nước da của l&amp;atilde;o đen thui, h&amp;igrave;nh dung tiều tụy. L&amp;atilde;o chợt ngẩng đầu l&amp;ecirc;n:&lt;br /&gt;
&lt;br /&gt;
- Đ&amp;acirc;y l&amp;agrave; &amp;yacute; trời hay sao?&lt;br /&gt;
&lt;br /&gt;
Một tiếng thở d&amp;agrave;i vang l&amp;ecirc;n tới tận kh&amp;ocirc;ng trung.&lt;br /&gt;
&lt;br /&gt;
Nguy&amp;ecirc;n Thi&amp;ecirc;n Y điểm nhẹ một c&amp;aacute;i v&amp;agrave;o mi t&amp;acirc;m của Lạc Bắc.&lt;br /&gt;
&lt;br /&gt;
Một tia s&amp;aacute;ng m&amp;agrave;u v&amp;agrave;ng l&amp;oacute;e l&amp;ecirc;n nơi mi t&amp;acirc;m của hắn rồi biến mất.&lt;br /&gt;
&lt;br /&gt;
- Ta đ&amp;atilde; gieo một c&amp;aacute;i Kh&amp;ocirc;ng Sanh Diệt Hải Vọng T&amp;acirc;m ch&amp;uacute; v&amp;agrave;o trong cơ thể của ngươi. Nếu ngươi l&amp;agrave;m tr&amp;aacute;i lời ta ắt sẽ bị h&amp;igrave;nh thần c&amp;acirc;u diệt.&lt;br /&gt;
&lt;br /&gt;
- Sau khi nhập thế ham muốn những việc kh&amp;ocirc;ng thể sẽ bị giết.&lt;br /&gt;
&lt;br /&gt;
- Kh&amp;ocirc;ng thể tiết lộ bất cứ ph&amp;aacute;p quyết n&amp;agrave;o của La Ph&amp;ugrave; ch&amp;uacute;ng ta. Trước khi trở về La Ph&amp;ugrave; kh&amp;ocirc;ng được cho người n&amp;agrave;o biết ngươi l&amp;agrave; đệ tử của La Ph&amp;ugrave;, nếu kh&amp;ocirc;ng sẽ chết.&lt;br /&gt;
&lt;br /&gt;
- Tu luyện Vọng Niệm Thi&amp;ecirc;n TSnh kinh trải qua cửu tử nhất sinh, chịu sự đau khổ so với Ma Ha Gi&amp;agrave; La mật ph&amp;aacute;p gấp trăm lần. Sau khi ngươi nhập thế c&amp;oacute; thể lựa chọn kh&amp;ocirc;ng tu luyện nhưng cũng kh&amp;ocirc;ng được n&amp;oacute;i với người kh&amp;aacute;c, thậm ch&amp;iacute; kh&amp;ocirc;ng được ho&amp;agrave;i nghi về ph&amp;aacute;p quyết n&amp;agrave;y, nếu kh&amp;ocirc;ng sẽ chết.&lt;br /&gt;
&lt;br /&gt;
Trong đại điện, Lạc Bắc cố gắng ghi nhỡ kỹ tất cả những điều đ&amp;oacute; v&amp;agrave;o trong l&amp;ograve;ng.&lt;br /&gt;
&lt;br /&gt;
Mặc d&amp;ugrave; kh&amp;ocirc;ng biết mỗi một đệ tử của La Ph&amp;ugrave; c&amp;oacute; phải trải qua việc r&amp;egrave;n luyện như vậy v&amp;agrave; chịu những quy tắc đ&amp;oacute; hay kh&amp;ocirc;ng nhưng Lạc Bắc lại thấy được Nguy&amp;ecirc;n Thi&amp;ecirc;n Y kh&amp;ocirc;ng hề c&amp;oacute; &amp;yacute; hại m&amp;igrave;nh, đồng thời cũng cảm nhận được Nguy&amp;ecirc;n Thi&amp;ecirc;n Y cho m&amp;igrave;nh Vọng Niệm Thi&amp;ecirc;n TSnh kinh đ&amp;uacute;ng l&amp;agrave; kh&amp;ocirc;ng tầm thường.&lt;br /&gt;
&lt;br /&gt;
Ch&amp;uacute;ng sanh b&amp;igrave;nh đẳng.&lt;br /&gt;
&lt;br /&gt;
Mặc d&amp;ugrave; mang tới cho hắn nhiều sự thử th&amp;aacute;ch gian khổ như vậy nhưng từ ng&amp;agrave;y sư phụ đưa hắn tới La Ph&amp;ugrave; cũng chưa hề v&amp;igrave; tư chất của hắn thấp m&amp;agrave; coi thường hắn, thậm ch&amp;iacute; l&amp;agrave; tỏ th&amp;aacute;i độ của người đứng tr&amp;ecirc;n cao với hắn.&lt;br /&gt;
&lt;br /&gt;
- Sư phụ! Khi n&amp;agrave;o con mới c&amp;oacute; thể trở về? - Đứng tr&amp;ecirc;n đỉnh n&amp;uacute;i v&amp;ocirc; danh, nh&amp;igrave;n ngọn n&amp;uacute;i lớn kh&amp;eacute;p lại, Lạc Bắc liền hỏi Nguy&amp;ecirc;n Thi&amp;ecirc;n Y.&lt;br /&gt;
&lt;br /&gt;
- C&amp;oacute; lẽ mười năm, hoặc hai mươi năm. - Nguy&amp;ecirc;n Thi&amp;ecirc;n Y trả lời Lạc Bắc:&lt;br /&gt;
&lt;br /&gt;
- C&amp;ocirc;ng ph&amp;aacute;p của La Ph&amp;ugrave; ch&amp;uacute;ng ta c&amp;oacute; thể n&amp;oacute;i l&amp;agrave; hơn người, nhưng muốn đạt tới cảnh giới đại th&amp;agrave;nh th&amp;igrave; lại kh&amp;oacute; như l&amp;ecirc;n trời. Phi kiếm của Thục Sơn sử dụng vật b&amp;ecirc;n ngo&amp;agrave;i cũng l&amp;agrave; thứ lợi hại. Nếu như c&amp;oacute; thể tu th&amp;agrave;nh kiếm nguy&amp;ecirc;n th&amp;igrave; c&amp;oacute; thể tự bảo vệ m&amp;igrave;nh. Chờ khi ngươi c&amp;oacute; được bản mệnh kiếm nguy&amp;ecirc;n th&amp;igrave; ngươi c&amp;oacute; thể trở về La Ph&amp;ugrave; gặp ta.&lt;br /&gt;
&lt;br /&gt;
- Bản mệnh kiếm nguy&amp;ecirc;n l&amp;agrave; g&amp;igrave;? - Lạc Bắc cảm thấy kh&amp;oacute; hiểu.&lt;br /&gt;
&lt;br /&gt;
Nguy&amp;ecirc;n Thi&amp;ecirc;n Y kh&amp;ocirc;ng n&amp;oacute;i. Vốn hiểu t&amp;iacute;nh t&amp;igrave;nh của Nguy&amp;ecirc;n Thi&amp;ecirc;n Y, Lạc Bắc đột nhi&amp;ecirc;n l&amp;ecirc;n tiếng:&lt;br /&gt;
&lt;br /&gt;
- Sư phụ! Khoan đ&amp;atilde;.&lt;br /&gt;
&lt;br /&gt;
- C&amp;oacute; chuyện g&amp;igrave;? - Nguy&amp;ecirc;n Thi&amp;ecirc;n Y giật m&amp;igrave;nh ph&amp;aacute;t hiện Lạc Bắc đang nh&amp;igrave;n quanh như muốn t&amp;igrave;m kiếm c&amp;aacute;i g&amp;igrave; đ&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
- L&amp;atilde;o Triệu Nam đ&amp;acirc;u? Con muốn ch&amp;agrave;o từ biệt l&amp;atilde;o. - Lạc Bắc nh&amp;igrave;n xuống bộ quần &amp;aacute;o bằng vải th&amp;ocirc; của m&amp;igrave;nh. Bộ quần &amp;aacute;o n&amp;agrave;y mặc d&amp;ugrave; đơn sơ nhưng cũng l&amp;agrave; lần đầu ti&amp;ecirc;n tr&amp;ecirc;n đời c&amp;oacute; người tự kh&amp;acirc;u cho hắn.&lt;br /&gt;
&lt;br /&gt;
Trong mắt Nguy&amp;ecirc;n Thi&amp;ecirc;n Y c&amp;oacute; ch&amp;uacute;t g&amp;igrave; đ&amp;oacute; ấm &amp;aacute;p:&lt;br /&gt;
&lt;br /&gt;
- L&amp;atilde;o c&amp;oacute; chuyện rời n&amp;uacute;i n&amp;ecirc;n kh&amp;ocirc;ng thể trở về được. C&amp;oacute; điều chờ khi con trở lại La Ph&amp;ugrave;, c&amp;aacute;c ngươi sẽ gặp nhau.&lt;br /&gt;
&lt;br /&gt;
Lạc Bắc ngẩn người. Mỗi đ&amp;ecirc;m, l&amp;atilde;o Triệu Nam từng đắp chăn cho hắn, vậy m&amp;agrave; kh&amp;ocirc;ng ngờ vừa mới cảm nhận được bầu kh&amp;ocirc;ng kh&amp;iacute; ấm &amp;aacute;p của gia đ&amp;igrave;nh th&amp;igrave; đ&amp;atilde; phải chia ly như vậy.&lt;br /&gt;
&lt;br /&gt;
- Người tu đạo sẽ chịu được sự c&amp;ocirc; quạnh. - Nguy&amp;ecirc;n Thi&amp;ecirc;n Y khẽ thở d&amp;agrave;i nh&amp;igrave;n l&amp;ecirc;n kh&amp;ocirc;ng trung. Một c&amp;aacute;i lồng trong suốt v&amp;ocirc; h&amp;igrave;nh lập tức bao v&amp;acirc;y lấy y v&amp;agrave; Lạc Bắc v&amp;agrave;o b&amp;ecirc;n trong rồi với tốc độ cực nhanh m&amp;agrave; lướt tr&amp;ecirc;n bầu trời. Do đ&amp;atilde; th&amp;agrave;nh th&amp;oacute;i quen về tu vi v&amp;agrave; tốc độ của Nguy&amp;ecirc;n Thi&amp;ecirc;n Y, nhưng điều khiến cho Lạc Bắc kinh ngạc đ&amp;oacute; l&amp;agrave; ngọn n&amp;uacute;i khổng lồ xuất hiện trước mặt.&lt;br /&gt;
&lt;br /&gt;
Từ nơi n&amp;agrave;o đến lại quay về nơi đ&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
Kh&amp;ocirc;ng ngờ Nguy&amp;ecirc;n Thi&amp;ecirc;n Y lại mang Lạc Bắc quay trở về Ba Thục. C&amp;aacute;i b&amp;atilde;i tha ma n&amp;agrave;y, nghe Kh&amp;ocirc;ng Đồng v&amp;agrave; Di La n&amp;oacute;i th&amp;igrave; chỉ c&amp;aacute;ch c&amp;aacute;nh cổng của Thục Sơn chừng trăm dặm.&lt;br /&gt;
&lt;br /&gt;
D&amp;atilde;y n&amp;uacute;i như trước, chỉ c&amp;oacute; điều những ng&amp;ocirc;i mộ trong b&amp;atilde;i tha ma như nhiều hơn, nhưng Lạc Bắc cũng kh&amp;ocirc;ng r&amp;otilde; lắm rằng trước đ&amp;acirc;y m&amp;igrave;nh gặp Kh&amp;ocirc;ng Đồng ở đ&amp;acirc;u. M&amp;agrave; l&amp;uacute;c n&amp;agrave;y, mặc d&amp;ugrave; mặt trời vẫn c&amp;ograve;n đỏ nhưng tiếng quạ k&amp;ecirc;u c&amp;ugrave;ng với quang cảnh của b&amp;atilde;i tha ma khiến cho bầu kh&amp;ocirc;ng kh&amp;iacute; lại c&amp;agrave;ng th&amp;ecirc;m th&amp;ecirc; lương.&lt;/p&gt;
', 1, CAST(0x0000ADEF0113D4A4 AS DateTime), CAST(0x0000ADEF0113D4A4 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (3124, 4101, 2042, N'Chương 16: Chó dữ. Thanh Hư đạo nhân', N'&lt;p&gt;- Từ đ&amp;acirc;y đi về ph&amp;iacute;a Nam mười dặm c&amp;oacute; một c&amp;aacute;i trấn. Ở đ&amp;oacute; c&amp;oacute; một m&amp;ocirc;n ph&amp;aacute;i t&amp;ecirc;n l&amp;agrave; Tử Huy đạo quan. Ngươi kh&amp;ocirc;ng cần l&amp;agrave;m g&amp;igrave;, chỉ cần tới trấn đ&amp;oacute; th&amp;igrave; người của Tử Huy đạo quan sẽ thu ngươi l&amp;agrave;m đồ đệ. La Ph&amp;ugrave; ch&amp;uacute;ng ta l&amp;agrave;m việc cũng kh&amp;ocirc;ng theo khu&amp;ocirc;n ph&amp;eacute;p, người kh&amp;aacute;c muốn thu người l&amp;agrave;m đồ đệ, ngươi chỉ cần đồng &amp;yacute; l&amp;agrave; được.&lt;br /&gt;
&lt;br /&gt;
Nguy&amp;ecirc;n Thi&amp;ecirc;n Y cũng chẳng để &amp;yacute; tới cảm x&amp;uacute;c của Lạc Bắc, cũng giống như l&amp;uacute;c đưa hắn tới ngọn n&amp;uacute;i v&amp;ocirc; danh m&amp;agrave; n&amp;oacute;i tiếp:&lt;br /&gt;
&lt;br /&gt;
- Hiện tại trong thi&amp;ecirc;n hạ, giặc cỏ nổi l&amp;ecirc;n khắp nơi. C&amp;oacute; người hỏi ngươi th&amp;igrave; ngươi n&amp;oacute;i l&amp;agrave; th&amp;ocirc;n d&amp;acirc;n bản địa, bị giặc cỏ tập k&amp;iacute;ch m&amp;agrave; lưu lạc. Sau n&amp;agrave;y, cho d&amp;ugrave; gặp phải chuyện g&amp;igrave; th&amp;igrave; ngươi chỉ cần nhỡ r&amp;otilde; mấy điều ta n&amp;oacute;i, rồi ngươi sẽ từ từ biết thế n&amp;agrave;o l&amp;agrave; bản mệnh kiếm nguy&amp;ecirc;n.&lt;br /&gt;
&lt;br /&gt;
H&amp;oacute;a ra m&amp;ocirc;n ph&amp;aacute;i tu đạo m&amp;agrave; những người thường vẫn hằng ao ước, c&amp;aacute;i gọi l&amp;agrave; động phủ của ti&amp;ecirc;n nh&amp;acirc;n chỉ c&amp;oacute; thể ngộ m&amp;agrave; kh&amp;ocirc;ng thể cầu đ&amp;oacute; chỉ c&amp;aacute;ch nơi n&amp;agrave;y c&amp;oacute; mười dặm. Hiện tại biết được điều n&amp;agrave;y Lạc Bắc chẳng hề c&amp;oacute; ch&amp;uacute;t ngạc nhi&amp;ecirc;n hay vui mừng. Cho d&amp;ugrave; chưa từng thấy đại điện truyền kinh của La Ph&amp;ugrave;, th&amp;igrave; chỉ cần sống với Nguy&amp;ecirc;n Thi&amp;ecirc;n Y một thời gian như vậy, Lạc Bắc cũng biết c&amp;aacute;i m&amp;ocirc;n ph&amp;aacute;i ngay cả việc đấu ph&amp;eacute;p ở nơi đ&amp;oacute; m&amp;agrave; kh&amp;ocirc;ng d&amp;aacute;m tới xem th&amp;igrave; kh&amp;ocirc;ng thể l&amp;agrave; một ph&amp;aacute;i đứng đầu.&lt;br /&gt;
&lt;br /&gt;
Tuy nhi&amp;ecirc;n Nguy&amp;ecirc;n Thi&amp;ecirc;n Y lại n&amp;oacute;i th&amp;ecirc;m một c&amp;acirc;u:&lt;br /&gt;
&lt;br /&gt;
- Từ h&amp;ocirc;m nay trở đi, ngươi cố gắng qu&amp;ecirc;n được c&amp;aacute;i g&amp;igrave; về La Ph&amp;ugrave; th&amp;igrave; qu&amp;ecirc;n. Nhớ c&amp;agrave;ng nhiều th&amp;igrave; ngươi c&amp;agrave;ng nguy hiểm. Ngoại trừ việc ta từng truyền kinh văn cho th&amp;igrave; tốt nhất ngươi như ng&amp;agrave;y đ&amp;oacute; chưa từng biết ta.&lt;br /&gt;
&lt;br /&gt;
&amp;quot;Giống như ng&amp;agrave;y đ&amp;oacute;, ho&amp;agrave;n to&amp;agrave;n ng&amp;acirc;y thở, chỉ cầu no bụng m&amp;agrave; kh&amp;ocirc;ng biết g&amp;igrave; kh&amp;aacute;c sao?&amp;quot;&lt;br /&gt;
&lt;br /&gt;
Lạc Bắc ghi nhớ từng lời của Nguy&amp;ecirc;n Thi&amp;ecirc;n Y v&amp;agrave;o trong l&amp;ograve;ng. Bởi v&amp;igrave; hắn biết mỗi c&amp;acirc;u của sư phụ chắc chắn l&amp;agrave; c&amp;oacute; dụng &amp;yacute;. Tuy nhi&amp;ecirc;n khi nh&amp;igrave;n sư phụ trước mặt, Lạc Bắc thầm nhủ m&amp;igrave;nh c&amp;oacute; thể qu&amp;ecirc;n được sao?&lt;br /&gt;
&lt;br /&gt;
Lạc Bắc đột nhi&amp;ecirc;n quỳ xuống m&amp;agrave; dập đầu ch&amp;iacute;n c&amp;aacute;i với Nguy&amp;ecirc;n Thi&amp;ecirc;n Y.&lt;br /&gt;
&lt;br /&gt;
Ng&amp;agrave;y trước, Lạc Bắc v&amp;igrave; kinh sợ quỷ thần m&amp;agrave; dập đầu ch&amp;iacute;n c&amp;aacute;i, c&amp;ograve;n b&amp;acirc;y giờ th&amp;igrave; hắn kh&amp;ocirc;ng sợ nữa. Hắn cũng biết con đường tu đạo cửu tử nhất sinh, bản th&amp;acirc;n chưa chắc đ&amp;atilde; trở lại được La Ph&amp;ugrave;. Nhưng ch&amp;iacute;n c&amp;aacute;i lạy n&amp;agrave;y của hắn cũng l&amp;agrave; thể hiện sự t&amp;ocirc;n k&amp;iacute;nh của m&amp;igrave;nh với sư phụ, cũng v&amp;igrave; Nguy&amp;ecirc;n Thi&amp;ecirc;n Y cho hắn cơ hội để nắm vận mệnh của m&amp;igrave;nh trong tay.&lt;br /&gt;
&lt;br /&gt;
Sau khi dập đầu ch&amp;iacute;n c&amp;aacute;i, Lạc Bắc đừng dậy đi về c&amp;aacute;i trấn ở ph&amp;iacute;a Nam theo lời Nguy&amp;ecirc;n Thi&amp;ecirc;n Y.&lt;br /&gt;
&lt;br /&gt;
Nguy&amp;ecirc;n Thi&amp;ecirc;n Y đứng im tại đ&amp;oacute; c&amp;ograve;n Lạc Bắc th&amp;igrave; c&amp;agrave;ng l&amp;uacute;c c&amp;agrave;ng xa. Hắn bước đi m&amp;agrave; kh&amp;ocirc;ng hề quay đầu lại.&lt;br /&gt;
&lt;br /&gt;
Lạc Bắc qua lời Nguy&amp;ecirc;n Thi&amp;ecirc;n Y chỉ biết đệ tử của La Ph&amp;ugrave; đều phải ra ngo&amp;agrave;i r&amp;egrave;n luyện. Lạc Bắc với bản t&amp;iacute;nh chất ph&amp;aacute;c thậm ch&amp;iacute; c&amp;ograve;n tưởng tượng những b&amp;iacute; tịch của La Ph&amp;ugrave; đều l&amp;agrave; do c&amp;aacute;c vị tổ sư ra ngo&amp;agrave;i r&amp;egrave;n luyện như hắn m&amp;agrave; c&amp;oacute; được.&lt;br /&gt;
&lt;br /&gt;
Nhưng hắn kh&amp;ocirc;ng ngờ rằng Nguy&amp;ecirc;n Thi&amp;ecirc;n Y để cho hắn rời khỏi La Ph&amp;ugrave; cũng l&amp;agrave; v&amp;igrave; La Ph&amp;ugrave; sắp đ&amp;oacute;n một c&amp;aacute;i kiếp nạn chưa từng c&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
M&amp;agrave; Nguy&amp;ecirc;n Thi&amp;ecirc;n Y truyền cho hắn Vọng Niệm Thi&amp;ecirc;n TSnh kinh lại l&amp;agrave; một thứ thần quyết kh&amp;oacute; tu luyện nhất nhưng uy lực lớn nhất của La Ph&amp;ugrave;.&lt;br /&gt;
&lt;br /&gt;
Cho d&amp;ugrave; với t&amp;acirc;m t&amp;iacute;nh của Nguy&amp;ecirc;n Thi&amp;ecirc;n Y c&amp;oacute; được th&amp;agrave;nh tựu như vậy, sư phụ của y cũng kh&amp;ocirc;ng d&amp;aacute;m truyền cho y Vọng Niệm Thi&amp;ecirc;n TSnh kinh m&amp;agrave; chỉ truyền cho Nguy&amp;ecirc;n Thi&amp;ecirc;n Y bộ Kh&amp;ocirc;ng Sanh Diệt hải lưu ly quyết.&lt;br /&gt;
&lt;br /&gt;
Bởi vậy c&amp;oacute; thể thấy Nguy&amp;ecirc;n Thi&amp;ecirc;n Y mặc d&amp;ugrave; chưa bao giờ c&amp;oacute; một c&amp;acirc;u thừa nhận Lạc Bắc nhưng trong t&amp;acirc;m của y đối với t&amp;ecirc;n đệ tử tư chất b&amp;igrave;nh b&amp;igrave;nh n&amp;agrave;y c&amp;oacute; một sự coi trọng m&amp;agrave; thậm ch&amp;iacute; c&amp;ograve;n tự h&amp;agrave;o.&lt;br /&gt;
&lt;br /&gt;
Nhưng tương lai vốn hư v&amp;ocirc; mờ mịt, thay đổi li&amp;ecirc;n tục. Cho d&amp;ugrave; Nguy&amp;ecirc;n Thi&amp;ecirc;n Y c&amp;oacute; tu vi thần th&amp;ocirc;ng như vậy cũng kh&amp;ocirc;ng thể nh&amp;igrave;n được số mệnh thay đổi thế n&amp;agrave;o.&lt;br /&gt;
&lt;br /&gt;
C&amp;agrave;ng l&amp;agrave; ph&amp;aacute;p quyết c&amp;oacute; uy lực m&amp;ecirc;nh m&amp;ocirc;ng th&amp;igrave; tu luyện c&amp;agrave;ng c&amp;oacute; thể n&amp;oacute;i l&amp;agrave; cửu tử nhất sinh. Kh&amp;ocirc;ng n&amp;oacute;i tới hồng trần trong thế gian, cho d&amp;ugrave; l&amp;agrave; giới tu đạo vượt l&amp;ecirc;n tr&amp;ecirc;n ch&amp;uacute;ng sinh cũng vậy.&lt;br /&gt;
&lt;br /&gt;
C&amp;oacute; ai biết sau lần từ biệt n&amp;agrave;y, một người c&amp;oacute; t&amp;acirc;m t&amp;iacute;nh hồn nhi&amp;ecirc;n như Lạc Bắc trong tương lai sẽ thay đổi như thế n&amp;agrave;o?&lt;br /&gt;
&lt;br /&gt;
Lạc Bắc v&amp;agrave; Nguy&amp;ecirc;n Thi&amp;ecirc;n Y ở chung với nhau l&amp;acirc;u ng&amp;agrave;y, b&amp;acirc;y giờ đột ngột chia tay khiến cho hắn cảm thấy buồn b&amp;atilde;.&lt;br /&gt;
&lt;br /&gt;
Mặc d&amp;ugrave; xung quanh c&amp;oacute; rất nhiều nh&amp;agrave; cửa, hơn nữa từ nhỏ hắn đang lang thang ở gần những nơi như vậy nhưng c&amp;aacute;i th&amp;oacute;i quen sống trong nơi hoang vu, tĩnh mịch, ng&amp;agrave;n dặm kh&amp;ocirc;ng c&amp;oacute; một b&amp;oacute;ng người vẫn l&amp;agrave;m cho Lạc Bắc cảm thấy lạc l&amp;otilde;ng.&lt;br /&gt;
&lt;br /&gt;
- Chẳng tr&amp;aacute;ch m&amp;agrave; ra ngo&amp;agrave;i r&amp;egrave;n luyện lại gọi l&amp;agrave; nhập thế.&lt;br /&gt;
&lt;br /&gt;
- Nơi n&amp;agrave;y chẳng lẽ l&amp;agrave; Tử Huy đạo quan?&lt;br /&gt;
&lt;br /&gt;
Sơn trấn cũng kh&amp;ocirc;ng rộng lắm, trong phạm vi v&amp;agrave;i dặm cũng chỉ c&amp;oacute; mấy trăm hộ d&amp;acirc;n. Tuy nhi&amp;ecirc;n nh&amp;igrave;n thấy những ng&amp;ocirc;i nh&amp;agrave; san s&amp;aacute;t, kh&amp;oacute;i bếp bốc l&amp;ecirc;n khắp nơi, người tới rồi người đi khiến cho Lạc Bắc c&amp;oacute; cảm gi&amp;aacute;c như rơi v&amp;agrave;o một thế giới kh&amp;aacute;c. Sau khi dạo một v&amp;ograve;ng trong sơn trấn, Lạc Bắc ph&amp;aacute;t hiện ở ph&amp;iacute;a T&amp;acirc;y Bắc của trấn c&amp;oacute; một c&amp;aacute;i đạo qu&amp;aacute;n, ph&amp;iacute;a trước đạo qu&amp;aacute;n c&amp;oacute; một c&amp;aacute;nh cửa cao tới mấy trượng l&amp;agrave;m bằng đ&amp;aacute;, hai b&amp;ecirc;n c&amp;oacute; hai pho tượng kỳ l&amp;acirc;n. Ph&amp;iacute;a sau điện thờ l&amp;agrave; một c&amp;aacute;nh cổng c&amp;oacute; ba cửa, được sơn m&amp;agrave;u đen, b&amp;ecirc;n tr&amp;ecirc;n c&amp;oacute; vẽ h&amp;igrave;nh ầm dương. Tr&amp;ecirc;n đền thờ v&amp;agrave; c&amp;aacute;i c&amp;aacute;nh cổng đạo quan đều c&amp;oacute; bảng đề t&amp;ecirc;n, chỉ c&amp;oacute; điều hiện giờ Lạc Bắc mới chỉ biết viết t&amp;ecirc;n của m&amp;igrave;nh, ngay cả chữ c&amp;ograve;n kh&amp;ocirc;ng biết n&amp;ecirc;n cũng chẳng hiểu đ&amp;oacute; c&amp;oacute; phải l&amp;agrave; c&amp;aacute;i đạo qu&amp;aacute;n m&amp;agrave; Nguy&amp;ecirc;n Thi&amp;ecirc;n Y n&amp;oacute;i hay kh&amp;ocirc;ng.&lt;br /&gt;
&lt;br /&gt;
Bởi v&amp;igrave; Nguy&amp;ecirc;n Thi&amp;ecirc;n Y n&amp;oacute;i với Lạc Bắc chẳng cần phải l&amp;agrave;m g&amp;igrave; cho n&amp;ecirc;n Lạc Bắc cũng chẳng t&amp;igrave;m hỏi người xem đ&amp;acirc;y c&amp;oacute; phải l&amp;agrave; Tử Huy đạo qu&amp;aacute;n hay kh&amp;ocirc;ng m&amp;agrave; chỉ đứng c&amp;aacute;ch đ&amp;oacute; một trăm m&amp;eacute;t xem x&amp;eacute;t.&lt;br /&gt;
&lt;br /&gt;
Tho&amp;aacute;ng c&amp;aacute;i, mặt trời đ&amp;atilde; ngả về t&amp;acirc;y. C&amp;ograve;n Lạc Bắc do đ&amp;atilde; tu luyện Ma Ha Gi&amp;agrave; La mật ph&amp;aacute;p kh&amp;ocirc;ng ngờ tiến v&amp;agrave;o trong trạng th&amp;aacute;i nhập tĩnh cảm nhận được xung quanh c&amp;oacute; những điểm Th&amp;aacute;i Dương ch&amp;acirc;n hỏa đầy sức n&amp;oacute;ng. Tới l&amp;uacute;c n&amp;agrave;y, Lạc Bắc mới chợt bừng tỉnh, nghĩ m&amp;igrave;nh phải nhớ cho kỹ kinh văn ph&amp;aacute;p quyết m&amp;agrave; Nguy&amp;ecirc;n Thi&amp;ecirc;n Y đ&amp;atilde; truyền cho hắn.&lt;br /&gt;
&lt;br /&gt;
Nhưng đ&amp;uacute;ng v&amp;agrave;o l&amp;uacute;c n&amp;agrave;y, Lạc Bắc lại nghe c&amp;oacute; tiếng ch&amp;oacute; sủa vọng đến, nghe &amp;acirc;m thanh phải c&amp;oacute; tới năm, s&amp;aacute;u con.&lt;br /&gt;
&lt;br /&gt;
Lạc Bắc tho&amp;aacute;ng kinh ngạc đứng dậy nh&amp;igrave;n th&amp;igrave; thấy ở g&amp;oacute;c đường c&amp;oacute; v&amp;agrave;i đứa b&amp;eacute; đang chạy trối chết. Một thằng b&amp;eacute; chạy vội qu&amp;aacute; m&amp;agrave; ng&amp;atilde; ra đất, khi đứng dậy th&amp;igrave; hai tay v&amp;agrave; đầu gối chảy đầy m&amp;aacute;u tươi.&lt;br /&gt;
&lt;br /&gt;
Năm s&amp;aacute;u con ch&amp;oacute; dữ từ trong g&amp;oacute;c khuất c&amp;ugrave;ng l&amp;uacute;c lao ra.&lt;br /&gt;
&lt;br /&gt;
Đứa b&amp;eacute; đ&amp;oacute; quần &amp;aacute;o tả tơi, khu&amp;ocirc;n mặt xanh xao, cơ thể gần như chỉ c&amp;oacute; xương bọc da, tưởng như chỉ cần một trận gi&amp;oacute; l&amp;agrave; c&amp;oacute; thể l&amp;agrave;m cho n&amp;oacute; bị thổi bay. N&amp;oacute; nh&amp;igrave;n xuống hai tay c&amp;ograve;n cầm c&amp;aacute;i b&amp;aacute;nh m&amp;igrave; đ&amp;atilde; bị gặm v&amp;agrave; một ch&amp;uacute;t đồ ăn nguội cơ bản chỉ c&amp;oacute; một &amp;iacute;t xương gần như kh&amp;ocirc;ng c&amp;oacute; thịt.&lt;br /&gt;
&lt;br /&gt;
L&amp;uacute;c n&amp;agrave;y, mấy đứa b&amp;eacute; gần như đ&amp;atilde; đuối sức, hơi thở của ch&amp;uacute;ng chẳng kh&amp;aacute;c n&amp;agrave;o c&amp;aacute;i bễ của người thợ r&amp;egrave;n. C&amp;ograve;n đứa b&amp;eacute; vừa mới ng&amp;atilde; th&amp;igrave; kh&amp;ocirc;ng biết l&amp;agrave; v&amp;igrave; đau đớn hay sợ h&amp;atilde;i m&amp;agrave; run rẩy, &amp;aacute;nh mắt chỉ c&amp;oacute; một sự cầu xin thương x&amp;oacute;t v&amp;agrave; sợ h&amp;atilde;i.&lt;br /&gt;
&lt;br /&gt;
- Mấy t&amp;ecirc;n tiểu khất c&amp;aacute;i kh&amp;ocirc;ng ngờ d&amp;aacute;m tới ăn trộm thức ăn ch&amp;oacute; của ta. - Từ tr&amp;ecirc;n đường phố chợt vang l&amp;ecirc;n một tiếng qu&amp;aacute;t.&lt;br /&gt;
&lt;br /&gt;
Người gi&amp;agrave;u bất nh&amp;acirc;n.&lt;br /&gt;
&lt;br /&gt;
Từ khi Lạc Bắc lang thang ở gần c&amp;aacute;i trần n&amp;agrave;y l&amp;agrave;m sao m&amp;agrave; kh&amp;ocirc;ng biết những đứa trẻ trạc tuổi m&amp;igrave;nh đi xin chẳng qua cũng l&amp;agrave; v&amp;igrave; sự sống, thậm ch&amp;iacute; chấp nhận đi ăn trộm đồ ăn của ch&amp;oacute; nh&amp;agrave; gi&amp;agrave;u. M&amp;agrave; c&amp;oacute; l&amp;agrave;m như vậy th&amp;igrave; cho d&amp;ugrave; mười bữa cũng chưa chắc c&amp;oacute; được một bữa n&amp;oacute;. Mắt nh&amp;igrave;n thấy mấy con ch&amp;oacute; dữ với bộ l&amp;ocirc;ng b&amp;oacute;ng mượt đang nhe răng lao tới, Lạc Bắc chợt bốc hỏa.&lt;br /&gt;
&lt;br /&gt;
- Ch&amp;oacute; dữ c&amp;uacute;t mau. - Lạc Bắc gầm l&amp;ecirc;n rồi vung tay chắn trước đứa b&amp;eacute; kia.&lt;br /&gt;
&lt;br /&gt;
L&amp;uacute;c n&amp;agrave;y mặc d&amp;ugrave; Lạc Bắc kh&amp;ocirc;ng c&amp;ograve;n một ch&amp;uacute;t tu vi nhưng thời gian ở La Ph&amp;ugrave; đ&amp;atilde; luyện cho hắn một t&amp;iacute;nh t&amp;igrave;nh cứng cỏi. B&amp;acirc;y giờ hắn vọt l&amp;ecirc;n cũng chẳng hề sợ h&amp;atilde;i m&amp;agrave; c&amp;ograve;n c&amp;oacute; ch&amp;uacute;t uy phong. Đ&amp;aacute;m ch&amp;oacute; dữ cũng coi thường người kh&amp;aacute;c, từ trước tới giờ ch&amp;uacute;ng chỉ thấy người ta bỏ chạy c&amp;ograve;n chưa thấy ai d&amp;aacute;m bước ra ngăn cản. C&amp;oacute; điều l&amp;uacute;c n&amp;agrave;y, ch&amp;uacute;ng bị kh&amp;iacute; thế của Lạc Bắc l&amp;agrave;m cho đứng lại, chỉ biết nhe răng ra m&amp;agrave; sủa, kh&amp;ocirc;ng d&amp;aacute;m tới gần.&lt;br /&gt;
&lt;br /&gt;
- c&amp;aacute;i g&amp;igrave;?&lt;br /&gt;
&lt;br /&gt;
Từ g&amp;oacute;c đường c&amp;oacute; một người đ&amp;agrave;n &amp;ocirc;ng đi ra, ho&amp;agrave;n to&amp;agrave;n giống với tr&amp;iacute; tưởng tưởng của Lạc Bắc. Người đ&amp;oacute; kho&amp;aacute;c một chiếc &amp;aacute;o bằng tơ lụa, b&amp;ecirc;n h&amp;ocirc;ng c&amp;oacute; đeo chiếc khuy&amp;ecirc;n ngọc rất to, bụng phệ nh&amp;ocirc; ra ngo&amp;agrave;i c&amp;ugrave;ng với đ&amp;ocirc;i mắt h&amp;iacute;p tr&amp;ecirc;n khu&amp;ocirc;n mặt nung n&amp;uacute;c to&amp;agrave;n thịt. Nh&amp;igrave;n Lạc Bắc chặn mấy con ch&amp;oacute; dữ, t&amp;ecirc;n địa chủ đ&amp;oacute; ngẩn người nhưng chợt thấy Lạc Bắc mặc &amp;aacute;o bằng vải bố th&amp;igrave; l&amp;ecirc;n tiếng:&lt;br /&gt;
&lt;br /&gt;
- C&amp;aacute;i g&amp;igrave; đ&amp;acirc;y? Đ&amp;atilde; ăn trộm thức ăn ch&amp;oacute; của ta lại c&amp;ograve;n d&amp;aacute;m đ&amp;aacute;nh ch&amp;uacute;ng phải kh&amp;ocirc;ng? - T&amp;ecirc;n b&amp;eacute;o cười lạnh một tiếng rồi nh&amp;igrave;n đ&amp;aacute;m ch&amp;oacute; m&amp;agrave; qu&amp;aacute;t:&lt;br /&gt;
&lt;br /&gt;
- C&amp;aacute;i lũ r&amp;aacute;c rưởi, ngay cả một thằng nh&amp;oacute;c con m&amp;agrave; cũng sợ th&amp;igrave; tao nu&amp;ocirc;i ch&amp;uacute;ng m&amp;agrave;y c&amp;oacute; t&amp;aacute;c dụng g&amp;igrave;?&lt;br /&gt;
&lt;br /&gt;
Trả lời Trả lời với tr&amp;iacute;ch dẫn Thanks&lt;br /&gt;
&lt;br /&gt;
Đ&amp;atilde; c&amp;oacute; 5 th&amp;agrave;nh vi&amp;ecirc;n n&amp;oacute;i lời cảm ơn tới Hany cho b&amp;agrave;i viết n&amp;agrave;y:&lt;br /&gt;
&lt;br /&gt;
13/04/2012 20:21:49 #24 Hany&lt;br /&gt;
&lt;br /&gt;
Trưởng Nh&amp;oacute;m Dịch&lt;br /&gt;
&lt;br /&gt;
Tham gia ng&amp;agrave;y&lt;br /&gt;
&lt;br /&gt;
Dec 2010&lt;br /&gt;
&lt;br /&gt;
B&amp;agrave;i gửi&lt;br /&gt;
&lt;br /&gt;
1.458&lt;br /&gt;
&lt;br /&gt;
La Ph&amp;ugrave;&lt;br /&gt;
&lt;br /&gt;
T&amp;aacute;c giả: V&amp;ocirc; Tội&lt;br /&gt;
&lt;br /&gt;
Nh&amp;oacute;m dịch Hany - người dịch: Hany&lt;br /&gt;
&lt;br /&gt;
Nguồn dịch: Metruye&lt;br /&gt;
&lt;br /&gt;
Mời xem:&lt;br /&gt;
&lt;br /&gt;
Bạn sẽ ủng hộ 0 Điểm cho Dịch Giả khi đọc b&amp;agrave;i viết n&amp;agrave;y:&lt;br /&gt;
&lt;br /&gt;
Ch&amp;oacute; cậy gần nh&amp;agrave;, g&amp;agrave; cậy gần chuồng.&lt;br /&gt;
&lt;br /&gt;
Nghe thấy tiếng qu&amp;aacute;t của t&amp;ecirc;n b&amp;eacute;o, mấy con ch&amp;oacute; dữ liền nh&amp;agrave;o về ph&amp;iacute;a Lạc Bắc.&lt;br /&gt;
&lt;br /&gt;
Lạc Bắc nhặt một h&amp;ograve;n đ&amp;aacute; rồi qu&amp;aacute;t l&amp;ecirc;n một tiếng, đập tr&amp;uacute;ng đầu một con ch&amp;oacute;. Mấy con ch&amp;oacute; kia v&amp;ocirc; c&amp;ugrave;ng hung dữ, động t&amp;aacute;c cũng nhanh. Khi con ch&amp;oacute; bị đập tr&amp;uacute;ng k&amp;ecirc;u l&amp;ecirc;n một tiếng th&amp;igrave; Lạc Bắc cũng cảm thấy đ&amp;ugrave;i đau x&amp;oacute;t, đ&amp;atilde; bị một con ch&amp;oacute; dữ cắn tr&amp;uacute;ng. Lạc Bắc bị đau li&amp;ecirc;n tục d&amp;ugrave;ng tay đấm v&amp;agrave;o đầu con ch&amp;oacute;. C&amp;oacute; điều con ch&amp;oacute; đ&amp;oacute; cũng kh&amp;ocirc;ng chịu nhả ra. Mấy con ch&amp;oacute; c&amp;ograve;n lại liền x&amp;ocirc;ng tới, h&amp;uacute;c ng&amp;atilde; Lạc Bắc.&lt;br /&gt;
&lt;br /&gt;
- Nhanh cắn n&amp;oacute; cho ta.&lt;br /&gt;
&lt;br /&gt;
Thấy đ&amp;ugrave;i Lạc Bắc chảy đầy m&amp;aacute;u, t&amp;ecirc;n ph&amp;uacute; hộ b&amp;eacute;o mập hưng phấn cười ha hả.&lt;br /&gt;
&lt;br /&gt;
Lạc Bắc cắn chặt răng, đột nhi&amp;ecirc;n nh&amp;igrave;n thấy một con ch&amp;oacute; định cắn v&amp;agrave;o mặt m&amp;igrave;nh th&amp;igrave; vội v&amp;agrave;ng d&amp;ugrave;ng hai tay b&amp;oacute;p chặt cổ n&amp;oacute; m&amp;agrave; lăn lộn tr&amp;ecirc;n mặt đất. Mấy con ch&amp;oacute; kh&amp;aacute;c liền nh&amp;agrave;o tới. Trong l&amp;uacute;c lăn lộn Lạc Bắc chỉ cảm thấy vai lại bị đau, cũng kh&amp;ocirc;ng biết l&amp;agrave; bị thương bao nhi&amp;ecirc;u chỗ.&lt;br /&gt;
&lt;br /&gt;
Những người d&amp;acirc;n trong trấn ở gần đ&amp;oacute; nghe thấy tiếng động liền k&amp;eacute;o tới. Tuy nhi&amp;ecirc;n khi thấy đ&amp;aacute;m ch&amp;oacute; dữ v&amp;agrave; t&amp;ecirc;n mập kia th&amp;igrave; bọn họ chỉ d&amp;aacute;m thốt l&amp;ecirc;n những tiếng k&amp;ecirc;u m&amp;agrave; kh&amp;ocirc;ng d&amp;aacute;m tới ngăn.&lt;br /&gt;
&lt;br /&gt;
Nh&amp;igrave;n Lạc Bắc bị cắn đi&amp;ecirc;n cuồng, t&amp;ecirc;n mập c&amp;agrave;ng th&amp;ecirc;m đắc &amp;yacute;, cười ha hả:&lt;br /&gt;
&lt;br /&gt;
- Tiểu khất c&amp;aacute;i! Mau cầu xin ta tha cho. Nếu như cầu xin, kh&amp;ocirc;ng chừng h&amp;ocirc;m nay ta th&amp;iacute;ch l&amp;agrave;m việc thiện lại tha cho ngươi.&lt;br /&gt;
&lt;br /&gt;
&amp;quot;Cầu xin tha thứ?&amp;quot;&lt;br /&gt;
&lt;br /&gt;
Nghe thấy t&amp;ecirc;n mập đắc &amp;yacute; cười to, Lạc Bắc liền nổi giận. Cơn tức giận bốc l&amp;ecirc;n tới tận đỉnh đầu khiến cho hắn k&amp;ecirc;u l&amp;ecirc;n một tiếng đau đớn, c&amp;aacute;i tay phải của hắn lại bị một con ch&amp;oacute; dữ cắn.&lt;br /&gt;
&lt;br /&gt;
- Bắt ta cầu xin ngươi? Đừng c&amp;oacute; nằm mơ.&lt;br /&gt;
&lt;br /&gt;
Nhưng Lạc Bắc cũng gầm l&amp;ecirc;n, cắn tr&amp;uacute;ng yết hầu của con ch&amp;oacute; đang cắn m&amp;igrave;nh khiến cho m&amp;aacute;u tươi văng khắp nơi.&lt;br /&gt;
&lt;br /&gt;
- Thằng b&amp;eacute; ăn xin n&amp;agrave;y l&amp;agrave; d&amp;aacute; th&amp;uacute; hay sao?&lt;br /&gt;
&lt;br /&gt;
Trong l&amp;uacute;c nhất thời con ch&amp;oacute; kia k&amp;ecirc;u l&amp;ecirc;n ầm ỹ rồi đi&amp;ecirc;n cuồng nhảy ra. Ngay cả t&amp;ecirc;n mập đang đắc &amp;yacute; cũng bị &amp;aacute;nh mắt như d&amp;atilde; th&amp;uacute; của Lạc Bắc l&amp;agrave;m cho sững sờ.&lt;br /&gt;
&lt;br /&gt;
- V&amp;ocirc; lượng thi&amp;ecirc;n t&amp;ocirc;n. Trang vi&amp;ecirc;n ngoại nể mặt ta xin tạm thời dừng tay.&lt;br /&gt;
&lt;br /&gt;
Nhưng đ&amp;uacute;ng v&amp;agrave;o l&amp;uacute;c n&amp;agrave;y, một &amp;acirc;m thanh đột nhi&amp;ecirc;n vang l&amp;ecirc;n.&lt;br /&gt;
&lt;br /&gt;
T&amp;ecirc;n ph&amp;uacute; hộ b&amp;eacute;o mập v&amp;agrave; những người đang đứng v&amp;acirc;y xem chợt quay đầu lại th&amp;igrave; ph&amp;aacute;t hiện chẳng biết tr&amp;ecirc;n đường phố từ l&amp;uacute;c n&amp;agrave;o đ&amp;atilde; xuất hiện một c&amp;aacute;i kiệu hồng.&lt;br /&gt;
&lt;br /&gt;
- Đ&amp;acirc;y l&amp;agrave; kiệu của quan huyện đại nh&amp;acirc;n.&lt;br /&gt;
&lt;br /&gt;
Nh&amp;igrave;n thấy c&amp;aacute;i kiệu v&amp;agrave; trang phục của bốn người khi&amp;ecirc;ng kiệu, t&amp;ecirc;n ph&amp;uacute; hộ mập lập tức lắp bắp. V&amp;agrave; khi nh&amp;igrave;n thấy người từ trong kiệu bước ra, t&amp;ecirc;n mập liền li&amp;ecirc;n tục h&amp;agrave;nh lễ:&lt;br /&gt;
&lt;br /&gt;
- H&amp;oacute;a ra l&amp;agrave; Thanh Hư ch&amp;acirc;n nh&amp;acirc;n. Ch&amp;acirc;n nh&amp;acirc;n c&amp;oacute; lệnh l&amp;agrave;m sao ta d&amp;aacute;m kh&amp;ocirc;ng theo.&lt;br /&gt;
&lt;br /&gt;
Dứt lời, t&amp;ecirc;n mập liền qu&amp;aacute;t mấy con ch&amp;oacute; dữ tr&amp;aacute;nh sang một b&amp;ecirc;n.&lt;br /&gt;
&lt;br /&gt;
- Nếu Trang vi&amp;ecirc;n ngoại đ&amp;atilde; kh&amp;aacute;ch kh&amp;iacute; như vậy th&amp;igrave; bần đạo c&amp;oacute; một y&amp;ecirc;u cầu qu&amp;aacute; đ&amp;aacute;ng. Chuyện ng&amp;agrave;y h&amp;ocirc;m nay c&amp;oacute; thể bỏ qua được kh&amp;ocirc;ng?&lt;br /&gt;
&lt;br /&gt;
Từ trong kiệu bước ra một vị đạo trưởng khu&amp;ocirc;n mặt trắng, r&amp;acirc;u d&amp;agrave;i, ước chừng phải hơn bảy mươi tuổi nhưng c&amp;oacute; phong c&amp;aacute;ch ti&amp;ecirc;n phong đạo cốt. L&amp;atilde;o mặc một c&amp;aacute;i đạo b&amp;agrave;o, đầu đội mũ đạo m&amp;agrave;u t&amp;iacute;m.&lt;br /&gt;
&lt;br /&gt;
Nh&amp;igrave;n thấy l&amp;atilde;o đạo sĩ đ&amp;oacute;, Lạc Bắc đang cố gắng đứng dậy liền giật m&amp;igrave;nh.&lt;br /&gt;
&lt;br /&gt;
Bởi v&amp;igrave; hắn cảm nhận được tr&amp;ecirc;n người l&amp;atilde;o đạo sĩ n&amp;agrave;y c&amp;oacute; một thứ hơi thở kh&amp;ocirc;ng giống với người b&amp;igrave;nh thường. Thứ hơi thở đ&amp;oacute; ho&amp;agrave;n to&amp;agrave;n l&amp;agrave; hơi thở độc hữu của người tu đạo.&lt;br /&gt;
&lt;br /&gt;
- Đương nhi&amp;ecirc;n! Đương nhi&amp;ecirc;n.&lt;br /&gt;
&lt;br /&gt;
T&amp;ecirc;n ph&amp;uacute; hộ mập vừa rồi c&amp;ograve;n hung dữ ki&amp;ecirc;u ngạo li&amp;ecirc;n tục vừa cười vừa gật đầu. C&amp;oacute; thể n&amp;oacute;i g&amp;atilde; l&amp;agrave; một người chỉ biết ức hiếp người d&amp;acirc;n b&amp;igrave;nh thường, c&amp;ograve;n như vị Thanh Hư ch&amp;acirc;n nh&amp;acirc;n ch&amp;iacute;nh l&amp;agrave; qu&amp;aacute;n chủ của Tử Huy đạo qu&amp;aacute;n, chưa n&amp;oacute;i c&amp;oacute; bao nhi&amp;ecirc;u thần th&amp;ocirc;ng khiến ngay cả giặc cỏ ở xung quanh cũng kh&amp;ocirc;ng d&amp;aacute;m tới c&amp;aacute;i trấn n&amp;agrave;y m&amp;agrave; chỉ bằng bản th&amp;acirc;n y c&amp;oacute; ch&amp;uacute;t quan hệ với Huyện lệnh th&amp;igrave; t&amp;ecirc;n ph&amp;uacute; hộ b&amp;eacute;o mập cũng kh&amp;ocirc;ng d&amp;aacute;m mắc tội.&lt;br /&gt;
&lt;br /&gt;
- Tiểu ca! Nh&amp;igrave;n cậu hơi lạ mặt, dường như kh&amp;ocirc;ng phải người ở đ&amp;acirc;y.&lt;br /&gt;
&lt;br /&gt;
Thanh Hư đạo nh&amp;acirc;n gật đầu cũng kh&amp;ocirc;ng để &amp;yacute; tới t&amp;ecirc;n mập nữa m&amp;agrave; quay sang nh&amp;igrave;n Lạc Bắc với &amp;aacute;nh mắt s&amp;aacute;ng ngời.&lt;br /&gt;
&lt;br /&gt;
Lạc Bắc đ&amp;atilde; d&amp;ugrave;ng hết sức, l&amp;uacute;c n&amp;agrave;y to&amp;agrave;n th&amp;acirc;n đầy m&amp;aacute;u chỉ biết run run. Nhưng hắn vẫn nhớ lời dặn của Nguy&amp;ecirc;n Thi&amp;ecirc;n Y liền gật đầu:&lt;br /&gt;
&lt;br /&gt;
- Ta l&amp;agrave; người ở gần đ&amp;acirc;y. Th&amp;ocirc;n của ch&amp;uacute;ng ta gặp phải giặc cướp n&amp;ecirc;n mọi người bỏ chạy, v&amp;igrave; vậy m&amp;agrave; mới tới đ&amp;acirc;y.&lt;br /&gt;
&lt;br /&gt;
- Th&amp;igrave; ra l&amp;agrave; vậy. - Thanh Hư ch&amp;acirc;n nh&amp;acirc;n lấy tay vuốt cằm:&lt;br /&gt;
&lt;br /&gt;
- Ta thấy ngươi cốt c&amp;aacute;ch thanh t&amp;uacute;, tư chất rất cao, hay l&amp;agrave; ta thu ngươi l&amp;agrave;m đồ đệ. Rồi sau n&amp;agrave;y, ta sẽ gi&amp;uacute;p ngươi t&amp;igrave;m người th&amp;acirc;n c&amp;oacute; được kh&amp;ocirc;ng?&lt;br /&gt;
&lt;br /&gt;
Thanh Hư ch&amp;acirc;n nh&amp;acirc;n vừa mới dứt lời, những người xung quanh liền x&amp;ocirc;n xao.&lt;br /&gt;
&lt;br /&gt;
Phải biết rằng một gia đ&amp;igrave;nh b&amp;igrave;nh thường muốn gặp được Thanh Hư ch&amp;acirc;n nh&amp;acirc;n đ&amp;uacute;ng l&amp;agrave; một chuyện kh&amp;oacute; khăn. C&amp;oacute; thể n&amp;oacute;i l&amp;agrave; rất &amp;iacute;t thu đồ đệ, ngay cả người ph&amp;uacute; qu&amp;yacute; tới cầu cũng kh&amp;ocirc;ng đồng &amp;yacute;. Nhưng h&amp;ocirc;m nay kh&amp;ocirc;ng ngờ Thanh Hư ch&amp;acirc;n nh&amp;acirc;n lại chủ động thu một thiếu ni&amp;ecirc;n mới tho&amp;aacute;t khỏi miệng ch&amp;oacute; dữ l&amp;agrave;m đồ đệ? Thiếu ni&amp;ecirc;n kia c&amp;oacute; g&amp;igrave; đặc biệt? Chẳng lẽ v&amp;igrave; thấy hắn l&amp;agrave;m việc nghĩa hay sao?&lt;br /&gt;
&lt;br /&gt;
Nhưng trong l&amp;uacute;c mọi người đang kinh ngạc nh&amp;igrave;n m&amp;igrave;nh, Lạc Bắc cũng kh&amp;ocirc;ng gật đầu ngay m&amp;agrave; hỏi:&lt;br /&gt;
&lt;br /&gt;
- Đạo trưởng! Xin hỏi người l&amp;agrave; ai?&lt;br /&gt;
&lt;br /&gt;
Thanh Hư mỉm cười, chỉ về ph&amp;iacute;a c&amp;aacute;i đạo qu&amp;aacute;n gần đ&amp;oacute;:&lt;br /&gt;
&lt;br /&gt;
- Ta l&amp;agrave; qu&amp;aacute;n chủ Thanh Hư của Tử Huy đạo qu&amp;aacute;n.&lt;br /&gt;
&lt;br /&gt;
Rất nhiều người d&amp;acirc;n xung quanh kh&amp;ocirc;ng nhịn được thốt l&amp;ecirc;n bảo t&amp;ecirc;n thiếu ni&amp;ecirc;n ngốc nghếch nhanh ch&amp;oacute;ng đồng &amp;yacute;. Bởi v&amp;igrave; nếu được l&amp;agrave;m đệ tử của Tử Huy đạo qu&amp;aacute;n th&amp;igrave; &amp;iacute;t nhất kh&amp;ocirc;ng phải lo tới miếng ăn. M&amp;agrave; nh&amp;igrave;n Lạc Bắc cuối c&amp;ugrave;ng cũng gật đầu kh&amp;ocirc;ng chỉ t&amp;ecirc;n vi&amp;ecirc;n ngoại b&amp;eacute;o mập m&amp;agrave; cả những người d&amp;acirc;n miền n&amp;uacute;i cũng đều nắm tay m&amp;agrave; cao hứng.&lt;br /&gt;
&lt;br /&gt;
- Người tốt sẽ được b&amp;aacute;o đ&amp;aacute;p.&lt;br /&gt;
&lt;br /&gt;
Đ&amp;oacute; ch&amp;iacute;nh l&amp;agrave; suy nghĩ trong đầu tất cả những người d&amp;acirc;n ở đ&amp;acirc;y. Họ cũng kh&amp;ocirc;ng nghĩ rằng c&amp;acirc;u n&amp;oacute;i đ&amp;oacute; đ&amp;ocirc;i khi cũng chỉ l&amp;agrave; lời an ủi ối với bản th&amp;acirc;n. Tuy nhi&amp;ecirc;n bọn họ lại kh&amp;ocirc;ng nghĩ tới rằng c&amp;oacute; người cả đời chưa hề l&amp;agrave;m điều &amp;aacute;c m&amp;agrave; cũng phải lang thang, kh&amp;ocirc;ng được chết gi&amp;agrave;.&lt;br /&gt;
&lt;br /&gt;
- Đi th&amp;ocirc;i.&lt;br /&gt;
&lt;br /&gt;
Bởi v&amp;igrave; nơi n&amp;agrave;y c&amp;aacute;ch Tử Huy đạo qu&amp;aacute;n kh&amp;ocirc;ng xa lắm m&amp;agrave; nh&amp;igrave;n Thanh Hư đạo nh&amp;acirc;n th&amp;igrave; mặc d&amp;ugrave; tuổi t&amp;aacute;c đ&amp;atilde; cao nhưng h&amp;agrave;nh động lại hết sức mạnh mẽ. L&amp;atilde;o chỉ lấy một thanh trường kiếm m&amp;agrave;u đen cổ xưa. Thanh kiếm dường như ch&amp;iacute;nh l&amp;agrave; bằng chứng về sự thần th&amp;ocirc;ng quảng đại của Thanh Hư ch&amp;acirc;n nh&amp;acirc;n. Những người miền n&amp;uacute;i khi nh&amp;igrave;n thấy thanh kiếm m&amp;agrave;u đen được khảm đ&amp;aacute; hồng thạch v&amp;agrave; lục thạch đều trầm trồ t&amp;aacute;n thưởng.&lt;br /&gt;
&lt;br /&gt;
Lạc Bắc b&amp;aacute;m theo ph&amp;iacute;a sau l&amp;atilde;o. L&amp;uacute;c đi qua hai pho tượng kỳ l&amp;acirc;n bằng đ&amp;aacute;, lập tức c&amp;oacute; hai tiểu đạo đồng mặc đạo b&amp;agrave;o m&amp;agrave;u xanh, b&amp;uacute;i t&amp;oacute;c từ b&amp;ecirc;n trong đi ra đ&amp;oacute;n.&lt;br /&gt;
&lt;br /&gt;
Mặc d&amp;ugrave; nơi n&amp;agrave;y được chia ra l&amp;agrave;m mười khu nhưng so với Dược Vương t&amp;ocirc;ng vẫn c&amp;ograve;n kh&amp;aacute;c xa, tuy nhi&amp;ecirc;n nh&amp;igrave;n th&amp;igrave; cũng c&amp;oacute; quy tắc. Người b&amp;ecirc;n trong thấy b&amp;ecirc;n cạnh Thanh Hư ch&amp;acirc;n nh&amp;acirc;n l&amp;agrave; một thiếu ni&amp;ecirc;n, tr&amp;ecirc;n người vẫn c&amp;ograve;n vết m&amp;aacute;u th&amp;igrave; kinh ngạc. Tuy nhi&amp;ecirc;n bọn họ cũng chỉ thi lễ với Thanh Hư rồi đứng sang một b&amp;ecirc;n m&amp;agrave; kh&amp;ocirc;ng n&amp;oacute;i g&amp;igrave;.&lt;br /&gt;
&lt;br /&gt;
- Xem ra Tử Huy đạo qu&amp;aacute;n kh&amp;ocirc;ng phải l&amp;agrave; một đạo qu&amp;aacute;n tầm thường.&lt;br /&gt;
&lt;br /&gt;
Lạc Bắc thấy sau khi m&amp;igrave;nh v&amp;agrave; Thanh Hư ch&amp;acirc;n nh&amp;acirc;n đi v&amp;agrave;o trong đạo quan, hai t&amp;ecirc;n đạo đồng liền đ&amp;oacute;ng cổng lại, r&amp;otilde; r&amp;agrave;ng ng&amp;agrave;y thường kh&amp;ocirc;ng cho d&amp;acirc;ng hương. Hai c&amp;aacute;nh cổng phải dầy tới v&amp;agrave;i thước, nh&amp;igrave;n c&amp;oacute; thể thấy sự nặng nề nhưng hai t&amp;ecirc;n đạo đồng c&amp;ograve;n &amp;iacute;t tuổi đấy ch&amp;uacute;ng m&amp;agrave; tưởng như kh&amp;ocirc;ng cần phải cố sức.&lt;br /&gt;
&lt;br /&gt;
&amp;quot;Chỉ c&amp;oacute; điều kh&amp;ocirc;ng biết tại sao n&amp;oacute; lại x&amp;acirc;y dựng trong c&amp;aacute;i trấn n&amp;agrave;y?&amp;quot;&lt;br /&gt;
&lt;br /&gt;
Sau khi Lạc Bắc được Nguy&amp;ecirc;n Thi&amp;ecirc;n Y d&amp;ugrave;ng phương ph&amp;aacute;p kia l&amp;agrave;m cho thay đổi cốt c&amp;aacute;ch kinh mạch, mặc d&amp;ugrave; sức mạnh l&amp;uacute;c trước do ăn cỏ Ti&amp;ecirc;u T&amp;acirc;y đ&amp;atilde; biến mất, cũng chưa thấy được th&amp;acirc;n thể giống như kim cương trong truyền thuyết của người Mi&amp;ecirc;u tuy nhi&amp;ecirc;n Nguy&amp;ecirc;n Thi&amp;ecirc;n Y cũng c&amp;oacute; thể thấy được c&amp;ocirc;ng dụng tho&amp;aacute;t thai ho&amp;aacute;n cốt m&amp;agrave; trong kinh điển của La Ph&amp;ugrave; c&amp;oacute; ghi ch&amp;eacute;p lại. C&amp;oacute; rất &amp;iacute;t người biết được rằng phương thuốc b&amp;iacute; truyền của người Mi&amp;ecirc;u được truyền lại từ l&amp;acirc;u đời lại c&amp;oacute; c&amp;ocirc;ng hiệu thực sự đ&amp;oacute; l&amp;agrave; thay đổi tư chất của người tu đạo. Rốt cuộc phương thuốc đ&amp;oacute; l&amp;agrave; do ai để lại th&amp;igrave; trong bản ghi ch&amp;eacute;p của tổ sư ph&amp;aacute;i La Ph&amp;ugrave; cũng kh&amp;ocirc;ng c&amp;oacute; n&amp;oacute;i. Nguy&amp;ecirc;n Thi&amp;ecirc;n Y cũng chỉ biết trước đ&amp;oacute; La Ph&amp;ugrave; chưa c&amp;oacute; ai d&amp;ugrave;ng. Con đường tu đạo của La Ph&amp;ugrave; vốn l&amp;agrave; vượt kh&amp;oacute; m&amp;agrave; đi l&amp;ecirc;n, cho n&amp;ecirc;n mấy đời La Ph&amp;ugrave; truyền đạo cũng kh&amp;ocirc;ng muốn sử dụng ngoại vật. Hiện tại, sau khi tho&amp;aacute;t thai ho&amp;aacute;n cốt, Lạc Bắc c&amp;oacute; thể cảm nhận được r&amp;otilde; r&amp;agrave;ng Tử Huy đạo quan cơ bản cũng kh&amp;ocirc;ng c&amp;oacute; nhiều linh kh&amp;iacute;, m&amp;agrave; cũng kh&amp;ocirc;ng phải l&amp;agrave; chỗ tốt để tu h&amp;agrave;nh.&lt;br /&gt;
&lt;br /&gt;
Chỉ c&amp;oacute; điều đối với Lạc Bắc th&amp;igrave; ngoại trừ bộ ph&amp;aacute;p quyết kia ra, sự nhận thức của hắn đối với giới tu đạo ho&amp;agrave;n to&amp;agrave;n kh&amp;ocirc;ng biết. Chẳng hạn như Thanh Hư ch&amp;acirc;n nh&amp;acirc;n tu luyện ngoại đan đạo ph&amp;aacute;p l&amp;agrave; g&amp;igrave; th&amp;igrave; ho&amp;agrave;n to&amp;agrave;n vượt qua sự hiểu biết của hắn.&lt;br /&gt;
&lt;br /&gt;
Thật ra đạo ph&amp;aacute;p ngoại đan chỉ l&amp;agrave; một thứ c&amp;ocirc;ng ph&amp;aacute;p th&amp;ocirc; thiển, sử dụng linh kh&amp;iacute; trong trời đất ẩn chứa trong dược thảo m&amp;agrave; n&amp;acirc;ng cao tu vi.&lt;/p&gt;
', 1, CAST(0x0000ADEF0113F695 AS DateTime), CAST(0x0000ADEF0113F695 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (3125, 4101, 2042, N'Chương 17: Tiên phong đạo cốt, tâm thú hành ma', N'&lt;p&gt;Đạo ph&amp;aacute;p ngoại đan v&amp;agrave; đại ph&amp;aacute;p kim đan tu luyện nội đan đều c&amp;oacute; từ l&amp;acirc;u trong lịch sử. Thứ c&amp;ocirc;ng ph&amp;aacute;p n&amp;agrave;y gần như được phần lớn người tu luyện lựa chọn, bởi v&amp;igrave; n&amp;oacute; đơn giản v&amp;agrave; mau lẹ. Nếu c&amp;oacute; linh dược th&amp;iacute;ch hợp th&amp;igrave; chỉ trong mấy ng&amp;agrave;y l&amp;agrave; tương đương với khổ tu c&amp;ocirc;ng ph&amp;aacute;p trong mấy năm. Vả lại linh mạch đầy đủ linh kh&amp;iacute; trong thế gian đ&amp;atilde; bị phần lớn người ta chiếm lấy, m&amp;agrave; cho d&amp;ugrave; c&amp;oacute; tiếp x&amp;uacute;c chưa chắc đ&amp;atilde; c&amp;oacute; thể tu luyện. C&amp;ograve;n những thứ thi&amp;ecirc;n t&amp;agrave;i địa bảo dưới Tử Uy&amp;ecirc;n của La Ph&amp;ugrave; th&amp;igrave; đối với người tu luyện chỉ c&amp;oacute; thể ngộ m&amp;agrave; kh&amp;ocirc;ng thể cầu. C&amp;ograve;n linh dược b&amp;igrave;nh thường th&amp;igrave; c&amp;oacute; thể d&amp;ugrave;ng tiền mua được. Đối với người tu luyện đạo ph&amp;aacute;p ngoại đan m&amp;agrave; n&amp;oacute;i th&amp;igrave; những nơi c&amp;oacute; linh kh&amp;iacute; dầy đặc c&amp;ograve;n kh&amp;ocirc;ng bằng những chỗ quyền thế c&amp;oacute; đủ hay kh&amp;ocirc;ng, c&amp;oacute; thể chiếm được nhiều linh dược hay kh&amp;ocirc;ng.&lt;br /&gt;
&lt;br /&gt;
V&amp;igrave; vậy m&amp;agrave; c&amp;aacute;c t&amp;ocirc;ng ph&amp;aacute;p tu luyện đạo ph&amp;aacute;p ngoại đen ngo&amp;agrave;i trừ một số &amp;iacute;t ở ẩn t&amp;igrave;m kiếm linh dược ra th&amp;igrave; phần lớn l&amp;agrave; lựa chọn nhập thế, thiết lập quyền thế, rồi d&amp;ugrave;ng nguồn nh&amp;acirc;n lực khổng lồ m&amp;agrave; t&amp;igrave;m kiếm linh dược. Giống như Dược Vương t&amp;ocirc;ng sở hữu nhưng hiệu bu&amp;ocirc;n cực kỳ h&amp;ugrave;ng hậu, lũng đoạn dược liệu v&amp;ugrave;ng Nam Man. Chỉ cần ph&amp;aacute;t hiện c&amp;oacute; linh dược l&amp;agrave; bọn họ thu lấy cho m&amp;igrave;nh d&amp;ugrave;ng trước.&lt;br /&gt;
&lt;br /&gt;
Dược Vương t&amp;ocirc;ng bị Nguy&amp;ecirc;n Thi&amp;ecirc;n Y sử dụng s&amp;aacute;u đạo Nghiệp Hỏa Hồng Li&amp;ecirc;n của nh&amp;agrave; Phật dọa cho sợ đối với c&amp;aacute;c m&amp;ocirc;n ph&amp;aacute;i tu luyện ngoại đan đạo ph&amp;aacute;p trong thế gian cũng được xếp v&amp;agrave;o h&amp;agrave;ng m&amp;ocirc;n ph&amp;aacute;i lớn. C&amp;ograve;n Tử Huy đạo qu&amp;aacute;n th&amp;igrave; chỉ dựa v&amp;agrave;o Thục Sơn l&amp;agrave; một tiểu ph&amp;aacute;i h&amp;agrave;ng thứ ba trong giới tu đạo m&amp;agrave; th&amp;ocirc;i.&lt;br /&gt;
&lt;br /&gt;
Nhưng một khi đ&amp;atilde; bước v&amp;agrave;o con đường tu đạo th&amp;igrave; chắc chắn kh&amp;ocirc;ng thể ng&amp;acirc;y thơ đần độn như người d&amp;acirc;n miền n&amp;uacute;i được.&lt;br /&gt;
&lt;br /&gt;
Cho d&amp;ugrave; l&amp;agrave; một c&amp;aacute;i m&amp;ocirc;n ph&amp;aacute;i hạng ba cũng c&amp;oacute; d&amp;atilde; t&amp;acirc;m v&amp;agrave; sự theo đuổi của m&amp;igrave;nh.&lt;br /&gt;
&lt;br /&gt;
......&lt;br /&gt;
&lt;br /&gt;
- Lạ thật! Kh&amp;ocirc;ng hiểu sư phụ l&amp;agrave;m sao m&amp;agrave; lại dẫn về một t&amp;ecirc;n ăn m&amp;agrave;y, người d&amp;iacute;nh đầy m&amp;aacute;u như vậy. M&amp;agrave; sư phụ c&amp;ograve;n bắt ta phải chăm s&amp;oacute;c y cẩn thận nữa.&lt;br /&gt;
&lt;br /&gt;
T&amp;ecirc;n đệ tử đắc lực nhất của Thanh Hư ch&amp;acirc;n nh&amp;acirc;n l&amp;agrave; Trường Phong vừa dẫn Lạc Bắc đi tắm v&amp;agrave; thay quần &amp;aacute;o, vừa quan s&amp;aacute;t hắn m&amp;agrave; nghĩ như vậy.&lt;br /&gt;
&lt;br /&gt;
Y kh&amp;ocirc;ng biết rằng v&amp;agrave;o l&amp;uacute;c n&amp;agrave;y, Thanh Hư ch&amp;acirc;n nh&amp;acirc;n đang đứng trước một bức họa. Bức họa đ&amp;oacute; vẽ một l&amp;atilde;o đạo ăn mặc gần giống với l&amp;atilde;o chỉ c&amp;oacute; tướng mạo v&amp;agrave; m&amp;aacute;i t&amp;oacute;c đen l&amp;agrave; kh&amp;aacute;c m&amp;agrave; th&amp;ocirc;i.&lt;br /&gt;
&lt;br /&gt;
Bức tranh đ&amp;oacute; vẽ hết sức chi tiết, hơn nữa n&amp;eacute;t vẽ lại c&amp;oacute; lực khiến cho l&amp;atilde;o đạo b&amp;ecirc;n trong bức tranh rất sống động.&lt;br /&gt;
&lt;br /&gt;
- Sư t&amp;ocirc;n.&lt;br /&gt;
&lt;br /&gt;
Nh&amp;igrave;n bức họa đ&amp;oacute;, &amp;aacute;nh mắt của Thanh Hư ch&amp;acirc;n nh&amp;acirc;n kh&amp;ocirc;ng ngờ hơi ươn ướt. Y chậm r&amp;atilde;i nhắm mắt lại rồi thi lễ với người trong bức tranh. Đợi cho tới khi y mở mắt ra th&amp;igrave; dường như thế gian đ&amp;atilde; mở cho bản th&amp;acirc;n một c&amp;aacute;i c&amp;aacute;nh cửa huy ho&amp;agrave;ng.&lt;br /&gt;
&lt;br /&gt;
Y nhẹ nh&amp;agrave;ng xoay một c&amp;aacute;i gương b&amp;aacute;t qu&amp;aacute;i bằng đồng theo chiều ngược kim đồng hồ ch&amp;iacute;n v&amp;ograve;ng rồi lại xoay người lại ch&amp;iacute;n v&amp;ograve;ng nữa, bứa họa tr&amp;ecirc;n tường từ từ dịch chuyển, mở ra một c&amp;aacute;i mật thất của Tử Huy đạo qu&amp;aacute;n.&lt;br /&gt;
&lt;br /&gt;
Trong c&amp;aacute;i mật đạo s&amp;acirc;u hun h&amp;uacute;t, cứ c&amp;aacute;ch một khoảng ngắn lại gắn một vi&amp;ecirc;n dạ minh ch&amp;acirc;u khiến cho n&amp;oacute; s&amp;aacute;ng như ban ng&amp;agrave;y, kh&amp;ocirc;ng hề c&amp;oacute; lấy một ch&amp;uacute;t &amp;acirc;m u. Tuy nhi&amp;ecirc;n b&amp;ecirc;n cạnh tường kh&amp;ocirc;ng ngờ lại c&amp;oacute; rất nhiều những c&amp;aacute;i b&amp;igrave;nh đặt th&amp;agrave;nh đ&amp;ocirc;i. Nh&amp;igrave;n qua c&amp;aacute;i b&amp;igrave;nh đ&amp;oacute; cũng kh&amp;ocirc;ng kh&amp;aacute;c với b&amp;igrave;nh rượu l&amp;agrave; mấy tuy nhi&amp;ecirc;n thứ ng&amp;acirc;m trong đ&amp;oacute; kh&amp;ocirc;ng ngờ lại l&amp;agrave; một đ&amp;ocirc;i nhau thai trẻ con hợp với &amp;acirc;m dương.&lt;br /&gt;
&lt;br /&gt;
Thanh Hư ch&amp;acirc;n nh&amp;acirc;n cứ vậy đi v&amp;agrave;o b&amp;ecirc;n trong. Gần một trăm c&amp;aacute;i b&amp;igrave;nh mặc d&amp;ugrave; đều d&amp;ugrave;ng b&amp;ugrave;a trấn &amp;aacute;p nhưng dường như cũng kh&amp;ocirc;ng thể xua hết được l&amp;agrave;n kh&amp;iacute; tanh m&amp;aacute;u v&amp;agrave; &amp;acirc;m t&amp;agrave; trong mật đạo.&lt;br /&gt;
&lt;br /&gt;
Mật đạo gấp kh&amp;uacute;c li&amp;ecirc;n tục, cuối c&amp;ugrave;ng đột nhi&amp;ecirc;n rộng ra. Trước mặt y xuất hiện một c&amp;aacute;i thạch thất nằm trong l&amp;ograve;ng n&amp;uacute;i. C&amp;aacute;i thạch thất ở dưới nền đất rộng chừng mười trượng, tr&amp;ecirc;n nền được l&amp;aacute;t bằng đồng, b&amp;ecirc;n tr&amp;ecirc;n c&amp;oacute; gương trừ t&amp;agrave;, kiếm, phất trần v&amp;agrave; c&amp;aacute;c loại ph&amp;aacute;p kh&amp;iacute; hơi l&amp;oacute;e l&amp;ecirc;n ch&amp;uacute;t &amp;aacute;nh s&amp;aacute;ng, chửng tỏ l&amp;agrave; ph&amp;aacute;p bảo ẩn chứa linh kh&amp;iacute;. Nhưng thứ hấp dẫn người ta nhất l&amp;agrave; một c&amp;aacute;i l&amp;ograve; luyện đan cao mấy trượng ở b&amp;ecirc;n trong thạch thất.&lt;br /&gt;
&lt;br /&gt;
Cả c&amp;aacute;i l&amp;ograve; luyện đan nh&amp;igrave;n th&amp;igrave; dường như được l&amp;agrave;m bằng đồng, bốn ch&amp;acirc;n được đ&amp;uacute;c th&amp;agrave;nh h&amp;igrave;nh bốn loại dị th&amp;uacute;. N&amp;oacute; được ch&amp;ocirc;n xuống một nửa ch&amp;acirc;n. M&amp;agrave; th&amp;acirc;n l&amp;ograve; được chia l&amp;agrave;m hai tầng giống như một c&amp;aacute;i hồ l&amp;ocirc;, mỗi tầng đều c&amp;oacute; cửa th&amp;ocirc;ng gi&amp;oacute;. Tr&amp;ecirc;n c&amp;aacute;i l&amp;ograve; luyện đan c&amp;oacute; khắc rất nhiều những thứ cổ xưa kh&amp;ocirc;ng biết được l&amp;agrave;m bằng thứ g&amp;igrave;. &amp;Aacute;nh lửa hừng hực qua cửa th&amp;ocirc;ng gi&amp;oacute; chiếu s&amp;aacute;ng cả nửa căn ph&amp;ograve;ng, tản ra hơi n&amp;oacute;ng kinh người. Hiển nhi&amp;ecirc;n c&amp;aacute;i l&amp;ograve; luyện đan n&amp;agrave;y cũng được nối liền với địa hỏa, ng&amp;agrave;y đ&amp;ecirc;m kh&amp;ocirc;ng dứt.&lt;br /&gt;
&lt;br /&gt;
Dưới &amp;aacute;nh lửa hừng hực hắt ra từ cửa th&amp;ocirc;ng gi&amp;oacute; của l&amp;ograve; luyện đan to&amp;agrave;n th&amp;acirc;n Thanh Hư ch&amp;acirc;n nh&amp;acirc;n biến th&amp;agrave;nh một m&amp;agrave;u đỏ bừng. Nhưng Thanh Hư ch&amp;acirc;n nh&amp;acirc;n lại kh&amp;ocirc;ng nh&amp;igrave;n về ph&amp;iacute;a l&amp;ograve; luyện đan m&amp;agrave; lại nh&amp;igrave;n về ph&amp;iacute;a v&amp;aacute;ch tường đối diện với m&amp;igrave;nh m&amp;agrave; n&amp;oacute;i nhỏ:&lt;br /&gt;
&lt;br /&gt;
- Sư đệ! Cuối c&amp;ugrave;ng th&amp;igrave; ta cũng đ&amp;atilde; chuẩn bị đầy đủ t&amp;agrave;i liệu cho Tử H&amp;agrave; chuyển sinh đại ph&amp;aacute;p.&lt;br /&gt;
&lt;br /&gt;
Tr&amp;ecirc;n v&amp;aacute;ch tường đối diện với Thanh Hư ch&amp;acirc;n nh&amp;acirc;n kh&amp;ocirc;ng ngờ xuất hiện một c&amp;aacute;i mặt người.&lt;br /&gt;
&lt;br /&gt;
Kh&amp;ocirc;ng... Người đ&amp;oacute; thậm ch&amp;iacute; kh&amp;ocirc;ng thể gọi l&amp;agrave; một người, bởi v&amp;igrave; to&amp;agrave;n th&amp;acirc;n g&amp;atilde; kh&amp;ocirc; h&amp;eacute;o, kh&amp;ocirc;ng hề cảm nhận thấy một ch&amp;uacute;t m&amp;aacute;u hay thịt m&amp;agrave; giống như một c&amp;aacute;i th&amp;acirc;y kh&amp;ocirc; đ&amp;atilde; chết l&amp;acirc;u rồi. M&amp;agrave; c&amp;aacute;i th&amp;acirc;y kh&amp;ocirc; đ&amp;oacute; được phủ bởi một c&amp;aacute;i đạo b&amp;agrave;o r&amp;aacute;ch n&amp;aacute;t, từ xa nh&amp;igrave;n lại, nếu kh&amp;ocirc;ng ch&amp;uacute; &amp;yacute; th&amp;igrave; c&amp;ograve;n tưởng đ&amp;oacute; l&amp;agrave; một tấm đạo b&amp;agrave;o r&amp;aacute;ch treo tr&amp;ecirc;n tường.&lt;br /&gt;
&lt;br /&gt;
Nhưng chỉ cần nh&amp;igrave;n kỹ th&amp;igrave; sẽ ph&amp;aacute;t hiện tr&amp;ecirc;n v&amp;aacute;ch tường sau c&amp;aacute;i th&amp;acirc;y kh&amp;ocirc; c&amp;oacute; rất nhiều ph&amp;ugrave; văn, mật ch&amp;uacute;. M&amp;agrave; dưới tấm đạo b&amp;agrave;o kia c&amp;ograve;n thấy c&amp;oacute; năm sợi x&amp;iacute;ch bằng huyền thiết xuy&amp;ecirc;n qua xương của y, gắn chặt y tr&amp;ecirc;n v&amp;aacute;ch đ&amp;aacute;.&lt;br /&gt;
&lt;br /&gt;
Kh&amp;ocirc;ng ngờ người đ&amp;oacute; lại l&amp;agrave; sư đệ của Thanh Hư ch&amp;acirc;n nh&amp;acirc;n? Hắn c&amp;ograve;n sống?&lt;br /&gt;
&lt;br /&gt;
- Ngươi c&amp;ograve;n gọi ta l&amp;agrave; sư đệ? - C&amp;aacute;i th&amp;acirc;y kh&amp;ocirc; bị treo tr&amp;ecirc;n tường đột nhi&amp;ecirc;n mở miệng rồi cười lạnh:&lt;br /&gt;
&lt;br /&gt;
- R&amp;otilde; r&amp;agrave;ng l&amp;agrave; l&amp;agrave; ngươi đ&amp;atilde; bị t&amp;acirc;m th&amp;uacute; ma h&amp;agrave;nh cướp đoạt thể x&amp;aacute;c m&amp;agrave; c&amp;ograve;n ở trước mặt ta n&amp;oacute;i tới chuyển sanh đại ph&amp;aacute;p hay sao?&lt;br /&gt;
&lt;br /&gt;
- Sư đệ. - Thanh Hư ch&amp;acirc;n nh&amp;acirc;n cũng chẳng c&amp;atilde;i cọ với người đ&amp;oacute;, chỉ c&amp;oacute; điều &amp;aacute;nh mắt của y trở n&amp;ecirc;n cuồng nhiệt:&lt;br /&gt;
&lt;br /&gt;
- Ngươi c&amp;oacute; đo&amp;aacute;n được h&amp;ocirc;m nay ta gặp được một người c&amp;oacute; tư chất thế n&amp;agrave;o ở tr&amp;ecirc;n trấn kh&amp;ocirc;ng?&lt;br /&gt;
&lt;br /&gt;
C&amp;aacute;i th&amp;acirc;y kh&amp;ocirc; chỉ cười lạnh m&amp;agrave; kh&amp;ocirc;ng n&amp;oacute;i.&lt;br /&gt;
&lt;br /&gt;
Tuy nhi&amp;ecirc;n Thanh Hư ch&amp;acirc;n nh&amp;acirc;n lại cười ha hả giống như kẻ đi&amp;ecirc;n.&lt;br /&gt;
&lt;br /&gt;
- Sư đệ! C&amp;oacute; lẽ ngươi kh&amp;ocirc;ng thể tưởng tượng được rằng h&amp;ocirc;m nay ta gặp được một đứa h&amp;agrave;i đồng. Cốt c&amp;aacute;ch v&amp;agrave; kinh mạch của hắn kh&amp;ocirc;ng ngờ đoạt tạo h&amp;oacute;a thi&amp;ecirc;n địa. Ta c&amp;oacute; thể n&amp;oacute;i rằng cho d&amp;ugrave; đ&amp;aacute;m người C&amp;ocirc;n Lu&amp;acirc;n đạo h&amp;agrave;nh c&amp;oacute; một kh&amp;ocirc;ng hai được gọi l&amp;agrave; kim ti&amp;ecirc;n đi chăng nữa cũng chưa chắc qua được hắn.&lt;br /&gt;
&lt;br /&gt;
- L&amp;agrave;m sao ta biết được ngươi c&amp;oacute; ph&amp;aacute;t rồ m&amp;agrave; nh&amp;igrave;n nhầm người hay kh&amp;ocirc;ng?&lt;br /&gt;
&lt;br /&gt;
- Ta nh&amp;igrave;n nhầm? Hiện tại đứa b&amp;eacute; kia đang ở trong qu&amp;aacute;n. Thậm ch&amp;iacute; ta c&amp;oacute; thể đưa n&amp;oacute; tới ngay trước mặt ngươi.&lt;br /&gt;
&lt;br /&gt;
- Thế th&amp;igrave; sao? - C&amp;aacute;i th&amp;acirc;y kh&amp;ocirc; c&amp;uacute;i thấp đầu xuống, dường như kh&amp;ocirc;ng th&amp;egrave;m nh&amp;igrave;n Thanh Hư ch&amp;acirc;n nh&amp;acirc;n.&lt;br /&gt;
&lt;br /&gt;
- Thế th&amp;igrave; sao? - Thanh Hư ch&amp;acirc;n nh&amp;acirc;n đang cười như đi&amp;ecirc;n chợt ngưng lại, nh&amp;igrave;n c&amp;aacute;i th&amp;acirc;y kh&amp;ocirc; tr&amp;ecirc;n tường m&amp;agrave; thở d&amp;agrave;i:&lt;br /&gt;
&lt;br /&gt;
- Sư đệ! Chẳng lẽ ngươi vẫn kh&amp;ocirc;ng hiểu hay sao? Ta trải qua v&amp;ocirc; v&amp;agrave;n kh&amp;oacute; khăn mới t&amp;igrave;m đủ t&amp;agrave;i liệu cất thiết để chế thuốc, b&amp;acirc;y giờ lại gặp được một c&amp;aacute;i thể x&amp;aacute;c kh&amp;oacute; cầu như vậy đ&amp;uacute;ng l&amp;agrave; &amp;yacute; trời a.&lt;br /&gt;
&lt;br /&gt;
- Ph&amp;igrave;! - C&amp;aacute;i th&amp;acirc;y kh&amp;ocirc; tr&amp;ecirc;n tường đột nhi&amp;ecirc;n nổi giận:&lt;br /&gt;
&lt;br /&gt;
- &amp;Yacute; trời? Nếu kh&amp;ocirc;ng phải &amp;ocirc;ng trời m&amp;ugrave; đ&amp;ocirc;i mắt ch&amp;oacute; th&amp;igrave; l&amp;agrave;m sao lại th&amp;agrave;nh to&amp;agrave;n cho c&amp;aacute;i t&amp;ecirc;n đi&amp;ecirc;n như ngươi? Loại người như ngươi m&amp;agrave; cũng d&amp;aacute;m n&amp;oacute;i tới &amp;yacute; trời hay sao?&lt;br /&gt;
&lt;br /&gt;
Thanh Hư ch&amp;acirc;n nh&amp;acirc;n đột nhi&amp;ecirc;n đứng phắt dậy:&lt;br /&gt;
&lt;br /&gt;
- Sư đệ! Bao nhi&amp;ecirc;u năm qua m&amp;agrave; ngươi vẫn kh&amp;ocirc;ng hiểu r&amp;otilde; hay sao? Ta l&amp;agrave;m những việc đ&amp;oacute; chẳng phải l&amp;agrave; v&amp;igrave; Tử Huy đạo qu&amp;aacute;n c&amp;oacute; một ng&amp;agrave;y sẽ nổi danh hay sao? Nếu kh&amp;ocirc;ng th&amp;igrave; với thực lực của Tử Huy đạo qu&amp;aacute;n vẫn chỉ c&amp;oacute; thể l&amp;agrave;m m&amp;ocirc;n hạ của Thục Sơn, phải nh&amp;igrave;n v&amp;agrave;o sắc mặt của người kh&amp;aacute;c m&amp;agrave; nghe lệnh. Năm đ&amp;oacute; nếu kh&amp;ocirc;ng phải ngươi ngăn cản th&amp;igrave; ta cũng kh&amp;ocirc;ng nhốt ngươi ở đ&amp;acirc;y.&lt;br /&gt;
&lt;br /&gt;
- N&amp;oacute;i bậy.&lt;br /&gt;
&lt;br /&gt;
- Ngươi luyện chế thuốc đoạt th&amp;acirc;n thể, ngoại trừ những oan hồn của phụ nữ v&amp;agrave; trẻ em trong tay ngươi ra lại cần c&amp;oacute; m&amp;aacute;u tươi v&amp;agrave; sinh hồn. H&amp;ocirc;m nay cho d&amp;ugrave; ngươi giấu diếm được th&amp;igrave; sau n&amp;agrave;y nhất định sẽ c&amp;oacute; ngươi ph&amp;aacute;t hiện ngươi d&amp;ugrave;ng c&amp;ocirc;ng ph&amp;aacute;p độc &amp;aacute;c. Tử Huy đạo quan ch&amp;uacute;ng ta c&amp;oacute; khả năng bị diệt cả ph&amp;aacute;i.&lt;br /&gt;
&lt;br /&gt;
- Cơ bản ngươi v&amp;igrave; tư lợi cho m&amp;igrave;nh m&amp;agrave; c&amp;ograve;n d&amp;aacute;m n&amp;oacute;i tới sư m&amp;ocirc;n của ta.&lt;br /&gt;
&lt;br /&gt;
- Dối tr&amp;aacute;. Cho d&amp;ugrave; ngươi kh&amp;ocirc;ng cho ta chết cũng chỉ l&amp;agrave; để thỏa m&amp;atilde;n c&amp;aacute;i dục vọng biến th&amp;aacute;i của ngươi, l&amp;agrave;m cho kh&amp;ocirc;ng ai c&amp;oacute; thể thấy được sự xấu xa của ngươi.&lt;br /&gt;
&lt;br /&gt;
- Loại người v&amp;ocirc; t&amp;igrave;nh v&amp;ocirc; nghĩa như ngươi đ&amp;uacute;ng l&amp;agrave; hạng tiểu nh&amp;acirc;n dối tr&amp;aacute;, cơ bản kh&amp;ocirc;ng xứng gọi ta l&amp;agrave; sư đệ, kh&amp;ocirc;ng xứng l&amp;agrave;m qu&amp;aacute;n chủ của Tử Huy đạo qu&amp;aacute;n.&lt;br /&gt;
&lt;br /&gt;
Trong l&amp;uacute;c nhất thời, c&amp;aacute;i th&amp;acirc;y kh&amp;ocirc; tr&amp;ecirc;n tường nổi giận m&amp;agrave; h&amp;eacute;t to khiến cho những sợi d&amp;acirc;y x&amp;iacute;ch k&amp;ecirc;u loảng xoảng.&lt;br /&gt;
&lt;br /&gt;
- Từ xưa tới nay một tướng c&amp;ocirc;ng th&amp;agrave;nh vạn cốt kh&amp;ocirc;.&lt;br /&gt;
&lt;br /&gt;
Trong tiếng rống giận của người tr&amp;ecirc;n tường, tr&amp;aacute;n của Thanh Hư ch&amp;acirc;n nh&amp;acirc;n cũng nổi g&amp;acirc;n xanh, huyệt Th&amp;aacute;i Dương đập th&amp;igrave;nh thịch:&lt;br /&gt;
&lt;br /&gt;
- Ngươi tu h&amp;agrave;nh cả đời m&amp;agrave; tu vi cũng chỉ tới được mức đ&amp;oacute; ch&amp;iacute;nh l&amp;agrave; do thi&amp;ecirc;n tư c&amp;oacute; hạn. Ta lưu mạng ngươi lại l&amp;agrave; để cho ngươi biết ngươi sai ho&amp;agrave;n to&amp;agrave;n. Ta muốn cho ngươi xem ta sẽ l&amp;agrave;m cho Tử Huy đạo quan nở m&amp;agrave;y nở mặt như thế n&amp;agrave;o.&lt;/p&gt;
', 1, CAST(0x0000ADEF011410CB AS DateTime), CAST(0x0000ADEF011410CB AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (3126, 4101, 2042, N'Chương 18: Giọt máu mi tâm. Tử Hà chuyển sinh đan', N'&lt;p&gt;- Mấy thứ n&amp;agrave;y thật tốt nhưng đ&amp;uacute;ng l&amp;agrave; kh&amp;ocirc;ng quen.&lt;br /&gt;
&lt;br /&gt;
Lạc Bắc xoay người tr&amp;ecirc;n giường một l&amp;uacute;c rất cười khổ m&amp;agrave; ngồi dậy.&lt;br /&gt;
&lt;br /&gt;
Ở tr&amp;ecirc;n ngọn n&amp;uacute;i v&amp;ocirc; danh của La Ph&amp;ugrave;, chỗ ở của Lạc Bắc hết sức đơn sơ, chỉ c&amp;oacute; chiếc giường gỗ cứng rắn b&amp;ecirc;n tr&amp;ecirc;n trải ch&amp;uacute;t l&amp;ocirc;ng th&amp;uacute;. Mặc d&amp;ugrave; da l&amp;ocirc;ng d&amp;atilde; th&amp;uacute; mang ra ngo&amp;agrave;i chắc chắn l&amp;agrave; thứ xa xỉ nhưng do chỉ được xử l&amp;yacute; đơn giản n&amp;ecirc;n đắp cũng kh&amp;ocirc;ng thoải m&amp;aacute;i. Hiện tại Tử Huy đạo qu&amp;aacute;n để Lạc Bắc ở căn ph&amp;ograve;ng n&amp;agrave;y, c&amp;oacute; một chiếc giường to l&amp;agrave;m từ gỗ đ&amp;agrave;n, b&amp;ecirc;n tr&amp;ecirc;n c&amp;oacute; trải lớp nệm b&amp;ocirc;ng. Chăn được may từ tơ lụa m&amp;agrave;u đen, nh&amp;igrave;n qua ho&amp;agrave;n to&amp;agrave;n ph&amp;ugrave; hợp với kh&amp;ocirc;ng kh&amp;iacute; của đạo qu&amp;aacute;n.&lt;br /&gt;
&lt;br /&gt;
Trước giường c&amp;ograve;n c&amp;oacute; một c&amp;aacute;i b&amp;agrave;n thờ nhỏ vẫn đốt một c&amp;acirc;y hương m&amp;agrave;u t&amp;iacute;m. Loại hương trầm n&amp;agrave;y được l&amp;agrave;m từ c&amp;acirc;y đỗ h&amp;agrave;nh, nhung hươu, nhựa th&amp;ocirc;ng, trầm hương, đ&amp;agrave;n hương, long n&amp;atilde;o... Khoảng chừng hơn mười loại dược liệu để l&amp;agrave;m ra khiến cho người ta tĩnh t&amp;acirc;m. Thứ trầm hương n&amp;agrave;y cũng rất qu&amp;yacute;, cơ bản chỉ c&amp;oacute; nh&amp;agrave; quan lại hoặc ph&amp;uacute; h&amp;agrave;o mới sử dụng. Hiệu quả của n&amp;oacute; rất tốt, tuy nhi&amp;ecirc;n m&amp;atilde;i cho tới nửa đ&amp;ecirc;m m&amp;agrave; Lạc Bắc vẫn trằn trọc kh&amp;ocirc;ng ngủ được.&lt;br /&gt;
&lt;br /&gt;
Tr&amp;ecirc;n c&amp;aacute;i b&amp;agrave;n gần giường c&amp;oacute; đặt một c&amp;agrave;i b&amp;igrave;nh bằng sức trắng, b&amp;ecirc;n trong đựng nước hoa quế. Lạc Bắc thử qua th&amp;igrave; thấy đ&amp;acirc;y l&amp;agrave; một thứ nước c&amp;oacute; vị chua nhưng rất ngon miệng. C&amp;oacute; lẽ lo Lạc Bắc đ&amp;oacute;i bụng cho n&amp;ecirc;n b&amp;ecirc;n cạnh c&amp;ograve;n đặt mấy m&amp;oacute;n điểm t&amp;acirc;m.&lt;br /&gt;
&lt;br /&gt;
Điều kiện ở đ&amp;acirc;y so với ở La Ph&amp;ugrave; tốt hơn rất nhiều, chẳng tr&amp;aacute;ch m&amp;agrave; nhiều người lại muốn con c&amp;aacute;i của m&amp;igrave;nh trở th&amp;agrave;nh đệ tử của Tử Huy đạo qu&amp;aacute;n. Nhưng hiện giờ, trong đầu Lạc Bắc lại chỉ nghĩ về thời gian m&amp;igrave;nh ở La Ph&amp;ugrave;.&lt;br /&gt;
&lt;br /&gt;
- Nếu sư phụ muốn vinh hoa ph&amp;uacute; qu&amp;yacute; th&amp;igrave; chỉ cần nhấc tay l&amp;agrave; c&amp;oacute;. Tuy nhi&amp;ecirc;n nếu sống qu&amp;aacute; mức an nh&amp;agrave;n th&amp;igrave; kh&amp;oacute; ph&amp;aacute;t triển, kh&amp;ocirc;ng hợp với việc dốc l&amp;ograve;ng tu đạo. Ph&amp;aacute;i La Ph&amp;ugrave; ch&amp;uacute;ng ta y&amp;ecirc;n t&amp;acirc;m ở ở v&amp;ugrave;ng khỉ ho c&amp;ograve; g&amp;aacute;y đ&amp;oacute; cũng l&amp;agrave; c&amp;oacute; &amp;yacute; vượt kh&amp;oacute; đi l&amp;ecirc;n.&lt;br /&gt;
&lt;br /&gt;
Lạc Bắc ngồi y&amp;ecirc;n, trong đầu lại nghĩ tới c&amp;aacute;i t&amp;ecirc;n đạo sĩ tr&amp;ecirc;n sơn đạo của Dược Vương t&amp;ocirc;ng bị Nguy&amp;ecirc;n Thi&amp;ecirc;n Y sử dụng lục đạo Phật Nghiệp Hồng Li&amp;ecirc;n khiến cho ph&amp;aacute;p bảo v&amp;agrave; bản th&amp;acirc;n h&amp;oacute;a th&amp;agrave;nh tro bụi trong nh&amp;aacute;y mắt.&lt;br /&gt;
&lt;br /&gt;
- Tử Huy đạo qu&amp;aacute;n dường như cũng dựa v&amp;agrave;o quan lại. C&amp;oacute; điều t&amp;ecirc;n đạo sĩ ng&amp;agrave;y đ&amp;oacute; c&amp;ugrave;ng với đo&amp;agrave;n xe kia dường như c&amp;agrave;ng c&amp;oacute; quyền thế. Mặc d&amp;ugrave; y hưởng thụ cuộc sống h&amp;agrave;ng ng&amp;agrave;y tốt hơn hẳn ở đ&amp;acirc;y nhưng tu vi so với sư phụ lại k&amp;eacute;m hơn nhiều.&lt;br /&gt;
&lt;br /&gt;
- Kh&amp;ocirc;ng biết sư phụ ban cho ta thứ ph&amp;aacute;p quyết g&amp;igrave;?&lt;br /&gt;
&lt;br /&gt;
Lạc Bắc suy nghĩ mi&amp;ecirc;n man rồi chợt nhớ tới Vọng Niệm Thi&amp;ecirc;n TSnh kinh m&amp;agrave; Nguy&amp;ecirc;n Thi&amp;ecirc;n Y đ&amp;atilde; truyền cho m&amp;igrave;nh. Mấy h&amp;igrave;nh ảnh huyền ảo v&amp;agrave; ph&amp;aacute;p quyết tu luyện đột nhi&amp;ecirc;n xuất hiện trong đầu Lạc Bắc.&lt;br /&gt;
&lt;br /&gt;
Bộ ph&amp;aacute;p quyết n&amp;agrave;y tu luyện chỉ hấp thu linh kh&amp;iacute; thuần khiết trong trời đất chứ kh&amp;ocirc;ng phải như Ma Ha Gi&amp;agrave; La mật ph&amp;aacute;p hấp thu ch&amp;acirc;n hỏa Th&amp;aacute;i dương v&amp;igrave; vậy m&amp;agrave; tu luyện kh&amp;ocirc;ng hạn chế ng&amp;agrave;y hay đ&amp;ecirc;m.&lt;br /&gt;
&lt;br /&gt;
Đ&amp;atilde; kh&amp;ocirc;ng thể để cho người ta biết m&amp;igrave;nh l&amp;agrave; đệ tử của La Ph&amp;ugrave;, lại c&amp;agrave;ng kh&amp;ocirc;ng được l&amp;agrave;m lộ ph&amp;aacute;p quyết th&amp;igrave; chỉ c&amp;oacute; tu luyện v&amp;agrave;o ban đ&amp;ecirc;m l&amp;agrave; th&amp;iacute;ch hợp nhất.&lt;br /&gt;
&lt;br /&gt;
&amp;Yacute; nghĩ đ&amp;oacute; vừa mới xuất hiện trong đầu, Lạc Bắc liền từ từ duyệt lại ph&amp;aacute;p quyết tu luyện một lần.&lt;br /&gt;
&lt;br /&gt;
&amp;quot;C&amp;aacute;i thứ ph&amp;aacute;p thuật truyền thụ n&amp;agrave;y của sư phụ đ&amp;uacute;ng l&amp;agrave; thần kỳ.&lt;br /&gt;
&lt;br /&gt;
Lạc Bắc nhanh ch&amp;oacute;ng ph&amp;aacute;t hiện ra bản th&amp;acirc;n kh&amp;ocirc;ng phải l&amp;agrave; nhớ một c&amp;aacute;ch mơ hồ m&amp;agrave; những h&amp;igrave;nh ảnh v&amp;agrave; sự l&amp;yacute; giải về ph&amp;aacute;p quyết hiện ra rất r&amp;otilde; trong đầu. Lạc Bắc chỉ cần lướt qua một ch&amp;uacute;t l&amp;agrave; c&amp;oacute; thể hiểu r&amp;otilde;.&lt;br /&gt;
&lt;br /&gt;
- Chỉ c&amp;oacute; điều kh&amp;ocirc;ng biết sau khi tu luyện bộ c&amp;ocirc;ng ph&amp;aacute;p n&amp;agrave;y sẽ c&amp;oacute; thần th&amp;ocirc;ng g&amp;igrave;.&lt;br /&gt;
&lt;br /&gt;
Nhưng s&amp;acirc;u trong tr&amp;iacute; nhớ của Lạc Bắc lại kh&amp;ocirc;ng c&amp;oacute; một ch&amp;uacute;t th&amp;ocirc;ng tin n&amp;agrave;o về việc sau khi tu luyện Vọng Niệm Thi&amp;ecirc;n TSnh kinh sẽ c&amp;oacute; thần th&amp;ocirc;ng thế n&amp;agrave;o.&lt;br /&gt;
&lt;br /&gt;
- Nơi n&amp;agrave;y mặc d&amp;ugrave; linh kh&amp;iacute; lo&amp;atilde;ng nhưng d&amp;ugrave; sao cũng kh&amp;ocirc;ng ngủ được th&amp;igrave; tu luyện một ch&amp;uacute;t.&lt;br /&gt;
&lt;br /&gt;
Lạc Bắc mang suy nghĩ như vậy liền ngồi theo tư thế của ph&amp;aacute;p quyết ở tr&amp;ecirc;n giường.&lt;br /&gt;
&lt;br /&gt;
- C&amp;oacute; m&amp;ugrave;i g&amp;igrave; vậy?&lt;br /&gt;
&lt;br /&gt;
Bước đầu ti&amp;ecirc;n của Vọng Niệm Thi&amp;ecirc;n TSnh kinh ch&amp;iacute;nh l&amp;agrave; nhập tĩnh nội thị. Nhưng khi Lạc Bắc nhắm hai mắt từ từ h&amp;ocirc; hấp, c&amp;ograve;n chưa tĩnh t&amp;acirc;m th&amp;igrave; đột nhi&amp;ecirc;n ngửi thấy một thứ m&amp;ugrave;i rất lạ.&lt;br /&gt;
&lt;br /&gt;
- L&amp;agrave; m&amp;ugrave;i m&amp;aacute;u?&lt;br /&gt;
&lt;br /&gt;
Lạc Bắc đột nhi&amp;ecirc;n bừng tỉnh, mở mắt ra. L&amp;uacute;c mới đầu, Lạc Bắc c&amp;ograve;n tưởng rằng do m&amp;igrave;nh tu luyện m&amp;agrave; sinh ra ảo gi&amp;aacute;c, nhưng sau khi mở mắt, m&amp;ugrave;i m&amp;aacute;u tươi chẳng những kh&amp;ocirc;ng biến mất m&amp;agrave; c&amp;ograve;n đậm hơn khiến cho ngay cả m&amp;ugrave;i hương cũng kh&amp;ocirc;ng che giấu nổi.&lt;br /&gt;
&lt;br /&gt;
- Tại sao b&amp;ecirc;n trong đạo qu&amp;aacute;n lại c&amp;oacute; m&amp;ugrave;i m&amp;aacute;u tanh nặng thế n&amp;agrave;y? - Lạc Bắc cảm thấy kỳ qu&amp;aacute;i, kh&amp;ocirc;ng nhịn được mặc quần &amp;aacute;o rồi đẩy cửa ra ngo&amp;agrave;i.&lt;br /&gt;
&lt;br /&gt;
Căn ph&amp;ograve;ng của Lạc Bắc nằm ở giữa của đạo quan trong một c&amp;aacute;i đại viện với ba gian ph&amp;ograve;ng giống nhau như đ&amp;uacute;c v&amp;agrave; một c&amp;aacute;i cổng bao quanh. Ở giữa l&amp;agrave; một h&amp;ograve;n giả sơn, xung quanh c&amp;oacute; trồng một v&amp;agrave;i c&amp;acirc;y liễu tạo ra một sự trang nh&amp;atilde;. Khi Lạc Bắc mở cửa, hắn lập tức lắp bắp kinh h&amp;atilde;i.&lt;br /&gt;
&lt;br /&gt;
Thanh Hư ch&amp;acirc;n nh&amp;acirc;n đầu đội mũ m&amp;agrave;u t&amp;iacute;m mặc đạo b&amp;agrave;o m&amp;agrave;u đen đang đứng tại c&amp;aacute;i cửa v&amp;ograve;m đối diện với Lạc Bắc.&lt;br /&gt;
&lt;br /&gt;
- Ngươi đ&amp;atilde; tỉnh? C&amp;oacute; phải ngươi thấy ngạc nhi&amp;ecirc;n kh&amp;ocirc;ng hiểu tại sao trong đạo quan lại c&amp;oacute; m&amp;ugrave;i m&amp;aacute;u tanh như vậy đ&amp;uacute;ng kh&amp;ocirc;ng? - Thanh Hư ch&amp;acirc;n nh&amp;acirc;n thấy Lạc Bắc mở cửa cũng kh&amp;ocirc;ng hề kinh ngạc m&amp;agrave; chỉ hơi cười cười, xoay người đi:&lt;br /&gt;
&lt;br /&gt;
- Theo ta tới đ&amp;acirc;y đi.&lt;br /&gt;
&lt;br /&gt;
&amp;quot;Tại sao ban ng&amp;agrave;y c&amp;oacute; nhiều người như vậy m&amp;agrave; b&amp;acirc;y giờ lại y&amp;ecirc;n lặng kh&amp;ocirc;ng c&amp;oacute; một tiếng động? Nửa đ&amp;ecirc;m l&amp;atilde;o định dẫn ta đi đ&amp;acirc;u?&amp;quot;&lt;br /&gt;
&lt;br /&gt;
Lạc Bắc đi theo sau Thanh Hư ch&amp;acirc;n nh&amp;acirc;n tới căn ph&amp;ograve;ng h&amp;agrave;ng ng&amp;agrave;y l&amp;atilde;o vẫn tu luyện. Nh&amp;igrave;n Thanh Hư ch&amp;acirc;n nh&amp;acirc;n mở cơ quan để lộ căn mật thất, Lạc Bắc cảm thấy sự t&amp;igrave;nh c&amp;oacute; ch&amp;uacute;t qu&amp;aacute;i dị. Tuy nhi&amp;ecirc;n khi thấy Thanh Hư ch&amp;acirc;n nh&amp;acirc;n vẫn thản nhi&amp;ecirc;n, Lạc Bắc cho d&amp;ugrave; muốn kh&amp;ocirc;ng đi theo cũng kh&amp;ocirc;ng được. &amp;quot;Nếu đ&amp;atilde; tới đ&amp;acirc;y rồi th&amp;igrave; cứ đi xem c&amp;oacute; chuyện g&amp;igrave; rồi n&amp;oacute;i sau.&amp;quot;&lt;br /&gt;
&lt;br /&gt;
Lạc Bắc vốn rất can đảm, hơn nữa từ sau khi gặp Thất thải long chu của ph&amp;aacute;i C&amp;ocirc;n Lu&amp;acirc;n, lại thấy những việc kỳ dị kh&amp;aacute;c thường, đồng thời c&amp;ograve;n được Nguy&amp;ecirc;n Thi&amp;ecirc;n Y r&amp;egrave;n giữ n&amp;ecirc;n bản t&amp;acirc;m của hắn lại c&amp;agrave;ng th&amp;ecirc;m cứng cỏi.&lt;br /&gt;
&lt;br /&gt;
Trong mật đạo thật d&amp;agrave;i, mấy c&amp;aacute;i b&amp;igrave;nh đựng đống nhau thai &amp;acirc;m dương c&amp;ograve;n để đ&amp;oacute; c&amp;aacute;ch đ&amp;acirc;y nửa ng&amp;agrave;y th&amp;igrave; b&amp;acirc;y giờ đ&amp;atilde; biến mất. Nhưng c&amp;agrave;ng tới gần mật thất, m&amp;ugrave;i m&amp;aacute;u tanh lại c&amp;agrave;ng nồng.&lt;br /&gt;
&lt;br /&gt;
- C&amp;aacute;i g&amp;igrave; thế n&amp;agrave;y?&lt;br /&gt;
&lt;br /&gt;
Đợi khi Lạc Bắc đi v&amp;agrave;o trong mật thất, m&amp;ugrave;i m&amp;aacute;u tanh gần như đặc sệt khiến cho hắn buồn n&amp;ocirc;n. M&amp;agrave; bước ch&amp;acirc;n v&amp;agrave;o mật thất, đập v&amp;agrave;o mắt hắn ch&amp;iacute;nh l&amp;agrave; c&amp;aacute;i l&amp;ograve; luyện đan.&lt;br /&gt;
&lt;br /&gt;
M&amp;agrave; hiện tại, trong l&amp;ograve; luyện đan, &amp;aacute;nh lửa hắt l&amp;ecirc;n tận n&amp;oacute;c nh&amp;agrave;. Cả c&amp;aacute;i l&amp;ograve; gần như đốt chảy đỏ bừng, nếu c&amp;oacute; người kh&amp;ocirc;ng cẩn thận chạm v&amp;agrave;o chỉ sợ sẽ bị ch&amp;aacute;y s&amp;eacute;m.&lt;br /&gt;
&lt;br /&gt;
M&amp;agrave; m&amp;ugrave;i m&amp;aacute;u tanh nồng đ&amp;uacute;ng l&amp;agrave; từ trong l&amp;ograve; luyện đan tản ra.&lt;br /&gt;
&lt;br /&gt;
- Ngươi...&lt;br /&gt;
&lt;br /&gt;
Kh&amp;ocirc;ng để cho Lạc Bắc kịp quan s&amp;aacute;t c&amp;aacute;i l&amp;ograve; luyện đan cẩn thận, hắn chợt nghe thấy một tiếng k&amp;ecirc;u kinh ngạc vang l&amp;ecirc;n.&lt;br /&gt;
&lt;br /&gt;
Nh&amp;igrave;n về ph&amp;iacute;a nơi &amp;acirc;m thanh ph&amp;aacute;t ra, tới l&amp;uacute;c n&amp;agrave;y, Lạc Bắc mới nhận thấy c&amp;oacute; một c&amp;aacute;i th&amp;acirc;y kh&amp;ocirc; đang bị treo tr&amp;ecirc;n tường.&lt;br /&gt;
&lt;br /&gt;
Tiếng h&amp;ocirc; vang l&amp;ecirc;n ch&amp;iacute;nh l&amp;agrave; do c&amp;aacute;i th&amp;acirc;y kh&amp;ocirc; đ&amp;oacute; ph&amp;aacute;t ra. M&amp;agrave; giờ ph&amp;uacute;t n&amp;agrave;y, &amp;aacute;nh mắt của c&amp;aacute;i th&amp;acirc;y kh&amp;ocirc; cũng đang nh&amp;igrave;n Lạc Bắc chằm chằm như kh&amp;ocirc;ng tin v&amp;agrave;o mắt m&amp;igrave;nh.&lt;br /&gt;
&lt;br /&gt;
- Thế n&amp;agrave;o vậy sư đệ? Ngươi cũng cảm thấy kinh ngạc về tư chất của thằng nh&amp;oacute;c n&amp;agrave;y hay sao? - V&amp;agrave;o l&amp;uacute;c n&amp;agrave;y, Thanh hư ch&amp;acirc;n nh&amp;acirc;n kh&amp;ocirc;ng c&amp;ograve;n giữ được sự b&amp;igrave;nh tĩnh, thậm ch&amp;iacute; y c&amp;ograve;n ph&amp;aacute;t tiếng cười đi&amp;ecirc;n cuồng.&lt;br /&gt;
&lt;br /&gt;
- S&amp;uacute;c sinh.&lt;br /&gt;
&lt;br /&gt;
C&amp;aacute;i th&amp;acirc;y kh&amp;ocirc; tr&amp;ecirc;n tường g&amp;agrave;o l&amp;ecirc;n giận dữ, ngay cả kh&amp;oacute;e mắt cũng gần như nứt to&amp;aacute;c:&lt;br /&gt;
&lt;br /&gt;
- Với tư chất thế n&amp;agrave;y, nếu dốc l&amp;ograve;ng dậy dỗ th&amp;igrave; c&amp;oacute; thể l&amp;agrave;m cho Tử Huy đạo quan của ta nở m&amp;agrave;y nở mặt. Ngươi c&amp;ograve;n định l&amp;agrave;m c&amp;aacute;i việc thương thi&amp;ecirc;n hại l&amp;yacute; đ&amp;oacute; hay sao?&lt;br /&gt;
&lt;br /&gt;
- Thương thi&amp;ecirc;n hại l&amp;yacute;? - Thanh Hư ch&amp;acirc;n nh&amp;acirc;n cười lạnh:&lt;br /&gt;
&lt;br /&gt;
- Hai ch&amp;uacute;ng ta từ khi tư đạo tới nay đ&amp;atilde; thấy c&amp;oacute; c&amp;aacute;i g&amp;igrave; l&amp;agrave; lẽ trời kh&amp;ocirc;ng? Ta chỉ biết dốc l&amp;ograve;ng chỉ dậy cũng kh&amp;ocirc;ng bằng được Tử H&amp;agrave; Chuyển sanh của ta mang theo tr&amp;iacute; nhớ v&amp;agrave; sự tu luyện cả đời của m&amp;igrave;nh.&lt;br /&gt;
&lt;br /&gt;
- Ngươi đ&amp;uacute;ng l&amp;agrave; đồ s&amp;uacute;c sinh. - C&amp;aacute;i th&amp;acirc;y kh&amp;ocirc; giẫy dụa khiến cho x&amp;iacute;ch sắt k&amp;ecirc;u loảng xoảng.&lt;br /&gt;
&lt;br /&gt;
- Sư đệ! Ngươi cần g&amp;igrave; phải tốn sức. - Thanh Hư ch&amp;acirc;n nh&amp;acirc;n kh&amp;ocirc;ng th&amp;egrave;m nh&amp;igrave;n y m&amp;agrave; quay đầu nh&amp;igrave;n Lạc Bắc với &amp;aacute;nh mắt dịu d&amp;agrave;ng như nh&amp;igrave;n thấy một vi&amp;ecirc;n ngọc qu&amp;yacute;:&lt;br /&gt;
&lt;br /&gt;
- Lạc Bắc! Tới l&amp;uacute;c n&amp;agrave;y ngươi vẫn b&amp;igrave;nh tĩnh như vậy c&amp;agrave;ng chứng tỏ thi&amp;ecirc;n tư của ngươi kh&amp;ocirc;ng tầm thường.&lt;br /&gt;
&lt;br /&gt;
Lạc Bắc nghe Thanh Hư ch&amp;acirc;n nh&amp;acirc;n n&amp;oacute;i chuyện với người tr&amp;ecirc;n tường cũng thấy c&amp;oacute; g&amp;igrave; đ&amp;oacute; kh&amp;ocirc;ng ổn. Nhưng mắt thấy n&amp;eacute;t mặt tự đắc của Thanh Hư ch&amp;acirc;n nh&amp;acirc;n, Lạc Bắc biết bằng v&amp;agrave;o lực lượng của bản th&amp;acirc;n cho d&amp;ugrave; c&amp;oacute; phản kh&amp;aacute;ng cũng v&amp;ocirc; dụng. Hắn chỉ nh&amp;igrave;n Thanh Hư ch&amp;acirc;n nh&amp;acirc;n m&amp;agrave; hỏi:&lt;br /&gt;
&lt;br /&gt;
- Ngươi dẫn ta tới Tư Huy đạo quan thật ra kh&amp;ocirc;ng phải muốn nhận ta l&amp;agrave;m đồ đệ?&lt;br /&gt;
&lt;br /&gt;
- Sau h&amp;ocirc;m nay, ngươi l&amp;agrave; ta m&amp;agrave; ta l&amp;agrave; ngươi.&lt;br /&gt;
&lt;br /&gt;
Trong mắt Thanh Hư ch&amp;acirc;n nh&amp;acirc;n xuất hiện sự đi&amp;ecirc;n cuồng. N&amp;oacute;i xong c&amp;acirc;u đ&amp;oacute;, y chỉ về ph&amp;iacute;a l&amp;ograve; luyện đan đang đỏ hừng hực:&lt;br /&gt;
&lt;br /&gt;
- Sư đệ! Ngươi nh&amp;igrave;n xem ta luyện chế Tử H&amp;agrave; chuyển sanh đan đi.&lt;/p&gt;
', 1, CAST(0x0000ADEF01144781 AS DateTime), CAST(0x0000ADEF01144781 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (3127, 4101, 2042, N'Chương 19: Một ý nghĩ thành ma', N'&lt;p&gt;Một tiếng nổ vang l&amp;ecirc;n, n&amp;oacute;c l&amp;ograve; luyện đan bị mở ra.&lt;br /&gt;
&lt;br /&gt;
L&amp;agrave;n kh&amp;iacute; cực mạnh từ trong l&amp;ograve; bốc l&amp;ecirc;n khiến cho Lạc Bắc đứng kh&amp;ocirc;ng vững. M&amp;agrave; mấy c&amp;aacute;i ph&amp;aacute;p kh&amp;iacute; đặt trong mật thất cũng bị x&amp;ocirc; đổ.&lt;br /&gt;
&lt;br /&gt;
- Tử H&amp;agrave; chuyển sanh đan l&amp;agrave; c&amp;aacute;i g&amp;igrave;?&lt;br /&gt;
&lt;br /&gt;
Lạc Bắc quay đầu nh&amp;igrave;n miệng l&amp;ograve; th&amp;igrave; kh&amp;ocirc;ng ngờ thấy tr&amp;ecirc;n kh&amp;ocirc;ng trung c&amp;oacute; một quả cầu m&amp;agrave;u đỏ sậm đang vặn vẹo.&lt;br /&gt;
&lt;br /&gt;
- Mất c&amp;ocirc;ng sức ba mươi năm của ta, cuối c&amp;ugrave;ng cũng chuẩn bị đầy đủ t&amp;agrave;i liệu, luyện th&amp;agrave;nh Tử H&amp;agrave; chuyển sinh đan.&lt;br /&gt;
&lt;br /&gt;
C&amp;ugrave;ng l&amp;uacute;c đ&amp;oacute;, khu&amp;ocirc;n mặt của Thanh Hư ch&amp;acirc;n nh&amp;acirc;n cũng kh&amp;ocirc;ng c&amp;ograve;n lấy đ&amp;acirc;u ra c&amp;aacute;i vẻ ti&amp;ecirc;n phong đạo cốt nữa.&lt;br /&gt;
&lt;br /&gt;
Thanh Hư ch&amp;acirc;n nh&amp;acirc;n nh&amp;igrave;n quả cầu Tử H&amp;agrave; chuyển sanh đang đang vặn vẹo th&amp;igrave; chợt thấy Lạc Bắc ng&amp;atilde; vật ra đất như sợ tới mức h&amp;ocirc;n m&amp;ecirc;.&lt;br /&gt;
&lt;br /&gt;
- Một đứa b&amp;eacute; sơn d&amp;atilde; d&amp;ugrave; sao th&amp;igrave; cũng vẫn l&amp;agrave; đứa b&amp;eacute;, đỡ tốn cho ta phải động ch&amp;acirc;n động tay.&lt;br /&gt;
&lt;br /&gt;
- Ngươi cũng đừng c&amp;oacute; o&amp;aacute;n ta. C&amp;aacute;i loại đứa b&amp;eacute; hoang d&amp;atilde; như ngươi tới t&amp;aacute;m, ch&amp;iacute;n phần đều chết ở nơi hoang d&amp;atilde;. Trong tương lai nếu ta c&amp;oacute; được th&amp;agrave;nh tựu th&amp;igrave; người người sẽ k&amp;iacute;nh ngưỡng th&amp;agrave;nh tựu của ngươi.&lt;br /&gt;
&lt;br /&gt;
Thanh Hư ch&amp;acirc;n nh&amp;acirc;n run tay &amp;aacute;o khiến cho kh&amp;ocirc;ng kh&amp;iacute; nổ vang. Tay phải của y điểm một c&amp;aacute;i xuống dưới, Tử H&amp;agrave; chuyển sinh đan tr&amp;ecirc;n đỉnh l&amp;ocirc; như sinh ra hai c&amp;aacute;i v&amp;ograve;i. Một c&amp;aacute;i vươn về ph&amp;iacute;a Lạc Bắc c&amp;ograve;n một c&amp;aacute;i th&amp;igrave; hướng về ph&amp;iacute;a Thanh Hư ch&amp;acirc;n nh&amp;acirc;n. M&amp;agrave; trong tay tr&amp;aacute;i của Thanh Hư ch&amp;acirc;n nh&amp;acirc;n c&amp;oacute; một mũi ng&amp;acirc;n ch&amp;acirc;m s&amp;aacute;ng l&amp;oacute;ng l&amp;aacute;nh. Y khẽ điểm l&amp;ecirc;n mi t&amp;acirc;m một c&amp;aacute;i rồi c&amp;uacute;i người đ&amp;acirc;m v&amp;agrave;o mi t&amp;acirc;m của Lạc Bắc.&lt;br /&gt;
&lt;br /&gt;
Chỉ cần lấy m&amp;aacute;u từ mi t&amp;acirc;m của hai người l&amp;agrave;m vật d&amp;acirc;n cho Tử H&amp;agrave; chuyển sinh đan, Thanh Hư ch&amp;acirc;n nh&amp;acirc;n liền c&amp;oacute; thể l&amp;agrave;m cho t&amp;iacute;nh mạng v&amp;agrave; nguy&amp;ecirc;n thần của m&amp;igrave;nh h&amp;ograve;a v&amp;agrave;o với th&amp;acirc;n thể của Lạc Bắc c&amp;ograve;n Lạc Bắc th&amp;igrave; hồn ph&amp;aacute;ch v&amp;agrave; nguy&amp;ecirc;n tần biến mất. Lạc Bắc trước kia cũng kh&amp;ocirc;ng tồn tại nữa.&lt;br /&gt;
&lt;br /&gt;
- C&amp;aacute;i loại người như ngươi, cho d&amp;ugrave; c&amp;oacute; tư chất th&amp;igrave; cũng vĩnh viễn chỉ biết phụ thuộc v&amp;agrave;o người kh&amp;aacute;c. Tham vọng v&amp;ocirc; đ&amp;aacute;y, cơ bản ngươi kh&amp;ocirc;ng xứng đ&amp;aacute;ng b&amp;agrave;n về đạo.&lt;br /&gt;
&lt;br /&gt;
Nhưng đ&amp;uacute;ng l&amp;uacute;c n&amp;agrave;y, một &amp;acirc;m thanh lạnh l&amp;ugrave;ng đột nhi&amp;ecirc;n vang l&amp;ecirc;n trong mật thất của đạo quan.&lt;br /&gt;
&lt;br /&gt;
- L&amp;agrave; ai? - C&amp;aacute;i th&amp;acirc;y kh&amp;ocirc; bị treo tr&amp;ecirc;n tường, trong mắt đột nhi&amp;ecirc;n tản ra thần quang kh&amp;ocirc;ng giống như b&amp;igrave;nh thường.&lt;br /&gt;
&lt;br /&gt;
Kh&amp;ocirc;ng ai c&amp;oacute; thể ngờ được lại c&amp;oacute; người đi v&amp;agrave;o mật thất m&amp;agrave; họ kh&amp;ocirc;ng biết g&amp;igrave;. Thanh Hư ch&amp;acirc;n nh&amp;acirc;n nhanh ch&amp;oacute;ng xoay người lại.&lt;br /&gt;
&lt;br /&gt;
Nguy&amp;ecirc;n Thi&amp;ecirc;n Y mặc quần &amp;aacute;o trắng, ch&amp;acirc;n trần đứng lẳng lặng ở cửa mật thất, nh&amp;igrave;n Lạc Bắc bị hắn sử dụng An Thần ch&amp;uacute; l&amp;agrave;m cho ngủ say đang nằm tr&amp;ecirc;n mặt đất.&lt;br /&gt;
&lt;br /&gt;
- Ngươi... - Những lỗ ch&amp;acirc;n l&amp;ocirc;ng tr&amp;ecirc;n người Thanh hư ch&amp;acirc;n nh&amp;acirc;n như nở ra. Y kh&amp;ocirc;ng thể ngờ được người mặc &amp;aacute;o trắng n&amp;agrave;y lại c&amp;oacute; thể v&amp;agrave;o trong mật thất kh&amp;ocirc;ng một tiếng động như vậy, r&amp;otilde; r&amp;agrave;ng kh&amp;ocirc;ng phải l&amp;agrave; nh&amp;acirc;n vật tầm thường. Nhưng y lại thấy tr&amp;ecirc;n người Nguy&amp;ecirc;n Thi&amp;ecirc;n Y kh&amp;ocirc;ng hề c&amp;oacute; ph&amp;aacute;p lực dao động, chỉ thấy nam tử tuấn t&amp;uacute; trước mặt c&amp;oacute; một thứ &amp;aacute;p lực m&amp;agrave; người kh&amp;aacute;c kh&amp;ocirc;ng thể n&amp;agrave;o diễn tả nổi.&lt;br /&gt;
&lt;br /&gt;
- Nếu ngươi dốc l&amp;ograve;ng dậy Lạc Bắc, c&amp;oacute; được nh&amp;acirc;n quả với hắn th&amp;igrave; c&amp;oacute; lẽ Tử Huy đạo quan của ngươi trong tương lai sẽ nhờ hắn m&amp;agrave; c&amp;oacute; địa vị kh&amp;ocirc;ng thể tưởng tượng được. - Nguy&amp;ecirc;n Thi&amp;ecirc;n Y hơi nheo mắt nh&amp;igrave;n Thanh Hư ch&amp;acirc;n nh&amp;acirc;n:&lt;br /&gt;
&lt;br /&gt;
- Nhưng v&amp;igrave; Tử h&amp;agrave; chuyển sinh đan, để cho thần hồn lớn mạnh ngươi kh&amp;ocirc;ng tiếc bao nhi&amp;ecirc;u m&amp;aacute;u tươi v&amp;agrave; sinh hồn của đệ tử để luyện thứ đan dược n&amp;agrave;y. V&amp;igrave; vậy h&amp;ocirc;m nay Tử Huy đạo quan của ngươi bị x&amp;oacute;a sổ cũng đều từ c&amp;aacute;i suy nghĩ của ngươi.&lt;br /&gt;
&lt;br /&gt;
Vừa n&amp;oacute;i chuyện, trong mắt của Nguy&amp;ecirc;n Thi&amp;ecirc;n Y l&amp;oacute;e l&amp;ecirc;n một tia s&amp;aacute;ng khiến cho th&amp;acirc;n thể của Thanh hư ch&amp;acirc;n nh&amp;acirc;n cứng đờ, chẳng kh&amp;aacute;c g&amp;igrave; cả người v&amp;agrave; Nguy&amp;ecirc;n Thần đều bị v&amp;ocirc; số c&amp;acirc;y băng ch&amp;acirc;m đ&amp;acirc;m v&amp;agrave;o.&lt;br /&gt;
&lt;br /&gt;
Kh&amp;iacute; ph&amp;aacute;ch của đại t&amp;ocirc;ng sư.&lt;br /&gt;
&lt;br /&gt;
- Kh&amp;ocirc;ng ngờ ngươi lại d&amp;aacute;m d&amp;ugrave;ng m&amp;aacute;u tươi sinh hồn của đệ tử Tử Huy đạo quan. - C&amp;aacute;i th&amp;acirc;y kh&amp;ocirc; tr&amp;ecirc;n tường kh&amp;ocirc;ng tin được m&amp;agrave; thốt l&amp;ecirc;n. M&amp;aacute;u tươi v&amp;agrave; sinh hồn l&amp;agrave; thứ t&amp;agrave;i liệu cuối c&amp;ugrave;ng để luyện chế Tử H&amp;agrave; chuyển sinh đan. M&amp;aacute;u tươi v&amp;agrave; sinh hồn c&amp;agrave;ng mạnh th&amp;igrave; khi Thanh Hư ch&amp;acirc;n nh&amp;acirc;n thi triển Tử H&amp;agrave; chuyển sinh ph&amp;aacute;p, thần hồn của y sẽ c&amp;agrave;ng mạnh th&amp;ecirc;m, c&amp;agrave;ng dễ l&amp;agrave;m cho nguy&amp;ecirc;n thần của Lạc Bắc tan r&amp;atilde; rồi thay thế. M&amp;aacute;u tươi v&amp;agrave; sinh hồn của người tu đạo so với m&amp;aacute;u tươi v&amp;agrave; sinh hồn của người b&amp;igrave;nh thường th&amp;igrave; mạnh hơn nhiều. Chỉ c&amp;oacute; điều, c&amp;aacute;i th&amp;acirc;y kh&amp;ocirc; tr&amp;ecirc;n tường kh&amp;ocirc;ng thể tưởng tượng được Thanh Hư ch&amp;acirc;n nh&amp;acirc;n lại d&amp;ugrave;ng m&amp;aacute;u tươi v&amp;agrave; sinh hồn của đệ tử m&amp;igrave;nh m&amp;agrave; luyện Tử H&amp;agrave; chuyển sinh đan. Sau khi thốt l&amp;ecirc;n một tiếng kh&amp;oacute; tin, c&amp;aacute;i th&amp;acirc;y kh&amp;ocirc; giống như giật m&amp;igrave;nh:&lt;br /&gt;
&lt;br /&gt;
- Ngươi l&amp;agrave; t&amp;ocirc;ng chủ Nguy&amp;ecirc;n Thi&amp;ecirc;n Y của La Ph&amp;ugrave; t&amp;ocirc;ng?&lt;br /&gt;
&lt;br /&gt;
- Kiến thức của ngươi so với sư huynh ngươi c&amp;ograve;n cao hơn gấp trăm lần. - Nguy&amp;ecirc;n Thi&amp;ecirc;n Y nh&amp;igrave;n c&amp;aacute;i th&amp;acirc;y kh&amp;ocirc; tr&amp;ecirc;n tường:&lt;br /&gt;
&lt;br /&gt;
- Chỉ c&amp;oacute; điều đạo lực của ngươi d&amp;atilde; mất hết, chẳng kh&amp;aacute;c g&amp;igrave; ngọn đ&amp;egrave;n sắp hết dầu. Cho d&amp;ugrave; l&amp;agrave; ta cũng kh&amp;ocirc;ng thể cứu được ngươi.&lt;br /&gt;
&lt;br /&gt;
- C&amp;aacute;i n&amp;agrave;y ta biết. - C&amp;aacute;i th&amp;acirc;y kh&amp;ocirc; tr&amp;ecirc;n tường nở nụ cười thảm rồi rơi lệ.&lt;br /&gt;
&lt;br /&gt;
Ngay cả giọt lệ của y cũng l&amp;agrave; lệ m&amp;aacute;u...&lt;br /&gt;
&lt;br /&gt;
Sau khi giam cầm y, Thanh Hư ch&amp;acirc;n nh&amp;acirc;n chỉ d&amp;ugrave;ng đan dược giữ mạng y lại, nhằm muốn cho y thấy được Thanh Hư ch&amp;acirc;n nh&amp;acirc;n sử dụng Tử H&amp;agrave; chuyển sinh đan m&amp;agrave; tạo ra cơ nghiệp chưa từng c&amp;oacute; của Tử Huy đạo quan. Nhưng kết quả l&amp;agrave;, Thanh Hư ch&amp;acirc;n nh&amp;acirc;n đ&amp;atilde; mắc sai lầm.&lt;br /&gt;
&lt;br /&gt;
Giọt lệ m&amp;aacute;u của y cũng kh&amp;ocirc;ng phải v&amp;igrave; bản th&amp;acirc;n m&amp;agrave; l&amp;agrave; v&amp;igrave; Tử Huy đạo quan h&amp;ocirc;m nay sẽ bị diệt sạch, biến mất khỏi thế gian.&lt;br /&gt;
&lt;br /&gt;
Vạn năm tu phật, chỉ một &amp;yacute; nghĩ th&amp;agrave;nh ma.&lt;br /&gt;
&lt;br /&gt;
Sống hay chết thường thường chỉ trong một c&amp;aacute;i suy nghĩ.&lt;br /&gt;
&lt;br /&gt;
Tử H&amp;agrave; chuyển sinh đan tản ra &amp;aacute;nh s&amp;aacute;ng m&amp;agrave;u đỏ sậm, chiếu l&amp;ecirc;n khu&amp;ocirc;n mặt nhăn nh&amp;uacute;m của Thanh Hư ch&amp;acirc;n nh&amp;acirc;n khiến cho l&amp;atilde;o c&amp;agrave;ng th&amp;ecirc;m dữ tợn.&lt;br /&gt;
&lt;br /&gt;
- Kh&amp;ocirc;ng ai c&amp;oacute; thể ngăn cả được Tử H&amp;agrave; chuyển sinh của ta.&lt;br /&gt;
&lt;br /&gt;
Một tiếng nổ vang l&amp;ecirc;n, một tia chớp m&amp;agrave;u t&amp;iacute;m nổ tung trong tay Thanh Hư ch&amp;acirc;n nh&amp;acirc;n rồi lao về ph&amp;iacute;a Nguy&amp;ecirc;n Thi&amp;ecirc;n Y. C&amp;ugrave;ng l&amp;uacute;c đ&amp;oacute;, ng&amp;acirc;n ch&amp;acirc;m trong tay y cũng tiếp tục đ&amp;acirc;m xuống mi t&amp;acirc;m của Lạc Bắc.&lt;br /&gt;
&lt;br /&gt;
Cho tới l&amp;uacute;c n&amp;agrave;y, Thanh hư ch&amp;acirc;n nh&amp;acirc;n vẫn kh&amp;ocirc;ng biết hoặc l&amp;agrave; do tự tay giết đệ tử bản m&amp;ocirc;n khiến cho Thanh Hư ch&amp;acirc;n nh&amp;acirc;n ph&amp;aacute;t rồ, kh&amp;ocirc;ng c&amp;ograve;n b&amp;igrave;nh thường được nữa.&lt;br /&gt;
&lt;br /&gt;
Một tia s&amp;aacute;ng m&amp;agrave;u v&amp;agrave;ng nở rộ trong tay Nguy&amp;ecirc;n Thi&amp;ecirc;n Y, rồi trong nh&amp;aacute;y mắt h&amp;oacute;a th&amp;agrave;nh một ngọn lửa. Thanh Hư ch&amp;acirc;n nh&amp;acirc;n ph&amp;aacute;t ra Tử Phủ thần l&amp;ocirc;i vừa mới chạm v&amp;agrave;o &amp;aacute;nh h&amp;agrave;o quang m&amp;agrave;u v&amp;agrave;ng liền chẳng kh&amp;aacute;c g&amp;igrave; những con rắn nhỏ m&amp;agrave;u t&amp;iacute;m bay ra xung quanh. M&amp;agrave; &amp;aacute;nh s&amp;aacute;ng m&amp;agrave;u v&amp;agrave;ng chia đ&amp;ocirc;i người Thanh Hư ch&amp;acirc;n nh&amp;acirc;n giống như cắt một miệng đậu rồi x&amp;ocirc;ng l&amp;ecirc;n đỉnh mật thất, ph&amp;aacute; hủy to&amp;agrave;n bộ m&amp;agrave; vọt l&amp;ecirc;n tr&amp;ecirc;n trời cao.&lt;br /&gt;
&lt;br /&gt;
Thực lực hai b&amp;ecirc;n thật sự c&amp;aacute;ch biệt qu&amp;aacute; xa.&lt;br /&gt;
&lt;br /&gt;
Trong t&amp;iacute;ch tắc, Thanh Hư ch&amp;acirc;n nh&amp;acirc;n đ&amp;atilde; bị Nguy&amp;ecirc;n Thi&amp;ecirc;n Y đ&amp;aacute;nh chết.&lt;br /&gt;
&lt;br /&gt;
Một vầng &amp;aacute;nh s&amp;aacute;ng rực rỡ thu h&amp;uacute;t sự ch&amp;uacute; &amp;yacute; của mọi người trong v&amp;ograve;ng mấy trăm dặm.&lt;br /&gt;
&lt;br /&gt;
Mặc d&amp;ugrave; bị chia th&amp;agrave;nh hai nửa, nguy&amp;ecirc;n thần bị đ&amp;aacute;nh n&amp;aacute;t, nhưng Thanh Hư ch&amp;acirc;n nh&amp;acirc;n vẫn c&amp;ograve;n cầm chặt số ng&amp;acirc;n ch&amp;acirc;m trong tay.&lt;br /&gt;
&lt;br /&gt;
Nguy&amp;ecirc;n Thi&amp;ecirc;n Y bước tới trước mặt c&amp;aacute;i th&amp;acirc;y kh&amp;ocirc; bị treo tr&amp;ecirc;n tường.&lt;br /&gt;
&lt;br /&gt;
Thấy c&amp;aacute;i th&amp;acirc;y kh&amp;ocirc; hơi gật gật đầu một c&amp;aacute;i, Nguy&amp;ecirc;n Thi&amp;ecirc;n Y điểm nhẹ v&amp;agrave;o mi t&amp;acirc;m của y.&lt;br /&gt;
&lt;br /&gt;
&amp;Aacute;nh s&amp;aacute;ng trong mắt c&amp;aacute;i th&amp;acirc;y kh&amp;ocirc; nhanh ch&amp;oacute;ng tối dần.&lt;br /&gt;
&lt;br /&gt;
Một ng&amp;oacute;n tay của Nguy&amp;ecirc;n Thi&amp;ecirc;n Y đ&amp;atilde; cắt đứt tất cả sức sống nhờ đan dược của y.&lt;br /&gt;
&lt;br /&gt;
Tuy nhi&amp;ecirc;n d&amp;ograve;ng lệ m&amp;aacute;u vẫn chảy ra từ trong hai mắt của c&amp;aacute;i th&amp;acirc;y kh&amp;ocirc;. Trước khi sức sống mất đi, &amp;aacute;nh mắt của y kh&amp;ocirc;ng giấu được sự cảm k&amp;iacute;ch.&lt;br /&gt;
&lt;br /&gt;
Bởi v&amp;igrave; sống th&amp;ecirc;m một gi&amp;acirc;y đồng nghĩa với việc chịu th&amp;ecirc;m một ch&amp;uacute;t đau khổ.&lt;br /&gt;
&lt;br /&gt;
Những điểm s&amp;aacute;ng xuy&amp;ecirc;n thẳng qua đỉnh mật thất bắn v&amp;agrave;o b&amp;ecirc;n trong. V&amp;agrave;i đạo kiếm quang từ ngo&amp;agrave;i trăm dặm ở Thục Sơn nhanh ch&amp;oacute;ng lao tới.&lt;br /&gt;
&lt;br /&gt;
Nh&amp;igrave;n tho&amp;aacute;ng qua mấy đạo kiếm quang đang ph&amp;oacute;n tới, Nguy&amp;ecirc;n Thi&amp;ecirc;n Y c&amp;uacute;i đầu nh&amp;igrave;n Lạc Bắc rồi khẽ thở d&amp;agrave;i:&lt;br /&gt;
&lt;br /&gt;
- Con đường ta đ&amp;atilde; vạch ra, c&amp;ograve;n đi như thế n&amp;agrave;o th&amp;igrave; phải dựa v&amp;agrave;o ch&amp;iacute;nh ngươi.&lt;br /&gt;
&lt;br /&gt;
......&lt;br /&gt;
&lt;br /&gt;
Cũng kh&amp;ocirc;ng biết được bao l&amp;acirc;u, Lạc Bắc bỗng nhi&amp;ecirc;n tỉnh lại rồi ngồi dậy.&lt;br /&gt;
&lt;br /&gt;
Nếu như thật sự bị người ta chiếm mất th&amp;acirc;n thể th&amp;igrave; đ&amp;oacute; đ&amp;uacute;ng l&amp;agrave; một cơn &amp;aacute;c mộng.&lt;br /&gt;
&lt;br /&gt;
Tuy nhi&amp;ecirc;n hắn vẫn l&amp;agrave; hắn, những vết thương bị ch&amp;oacute; cắn h&amp;ocirc;m qua đ&amp;atilde; được băng b&amp;oacute;. Hơn nữa số thuốc đ&amp;oacute; của Tử Huy đạo quan mang tới cảm gi&amp;aacute;c m&amp;aacute;t lạnh, kh&amp;ocirc;ng c&amp;ograve;n thấy đau đớn.&lt;br /&gt;
&lt;br /&gt;
Lạc Bắc h&amp;iacute;t một hơi thật s&amp;acirc;u, đưa mắt nh&amp;igrave;n xung quanh th&amp;igrave; thấy m&amp;igrave;nh đang ở trong một căn ph&amp;ograve;ng. Trong ph&amp;ograve;ng được bố tr&amp;iacute; một c&amp;aacute;i đơn giản, ngoại trừ c&amp;aacute;i giường gỗ ra c&amp;ograve;n c&amp;oacute; một c&amp;aacute;i b&amp;agrave;n gỗ tản ra m&amp;ugrave;i gỗ th&amp;ocirc;ng. Tr&amp;ecirc;n c&amp;aacute;i cảnh cửa sổ c&amp;oacute; khắc một v&amp;agrave;i chữ. Lạc Bắc kh&amp;ocirc;ng thể đọc được bốn c&amp;aacute;i chữ Tĩnh thần dưỡng kh&amp;iacute; m&amp;agrave; chỉ cảm thấy từ n&amp;oacute; tản ra kh&amp;iacute; thế kinh người, như c&amp;oacute; những đạo kiếm kh&amp;iacute; tung ho&amp;agrave;nh.&lt;br /&gt;
&lt;br /&gt;
Dưới giường c&amp;oacute; đặt một đ&amp;ocirc;i giầy vải c&amp;ograve;n mới. Lạc Bắc xuống giường, đi đ&amp;ocirc;i giẩy vải v&amp;agrave;o rồi bước ra ngo&amp;agrave;i.&lt;br /&gt;
&lt;br /&gt;
B&amp;ecirc;n ngo&amp;agrave;i cảnh cửa kh&amp;eacute;p hờ khiến cho Lạc Bắc c&amp;oacute; thể cảm nhận được những cơn gi&amp;oacute; lạnh thổi ở b&amp;ecirc;n ngo&amp;agrave;i.&lt;br /&gt;
&lt;br /&gt;
- Đ&amp;acirc;y l&amp;agrave; đ&amp;acirc;u? Tại sao ta lại ở đ&amp;acirc;y?&lt;br /&gt;
&lt;br /&gt;
Lạc Bắc chỉ nghĩ như vậy rồi đẩy cửa ra.&lt;br /&gt;
&lt;br /&gt;
B&amp;ecirc;n ngo&amp;agrave;i ph&amp;ograve;ng, &amp;aacute;nh mặt trời ấm &amp;aacute;p, hơi c&amp;oacute; ch&amp;uacute;t ch&amp;oacute;i mắt. Sau khi thở ra một c&amp;aacute;i, Lạc Bắc mở mắt ra m&amp;agrave; quan s&amp;aacute;t.&lt;br /&gt;
&lt;br /&gt;
Trước cửa l&amp;agrave; một c&amp;aacute;i s&amp;acirc;n nhỏ giống như của một gia đ&amp;igrave;nh b&amp;igrave;nh thường, c&amp;oacute; trồng một &amp;iacute;t rau xanh. B&amp;ecirc;n cạnh vườn rau l&amp;agrave; một đ&amp;aacute;m hoa t&amp;iacute;m lắc lư trong gi&amp;oacute;. Tuy nhi&amp;ecirc;n Lạc Bắc cũng ph&amp;aacute;t hiện nơi m&amp;igrave;nh đang đứng l&amp;agrave; ở tr&amp;ecirc;n một ngọn n&amp;uacute;i.&lt;/p&gt;
', 1, CAST(0x0000ADEF011467CE AS DateTime), CAST(0x0000ADEF011467CE AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (3128, 4101, 2042, N'Chương 20: Tượng thần bị nứt. Tới Côn Luân', N'&lt;p&gt;Ngọn n&amp;uacute;i n&amp;agrave;y cũng giống như ngọn n&amp;uacute;i v&amp;ocirc; danh ở La Ph&amp;ugrave; tuy nhi&amp;ecirc;n lại rất cao. Dưới ch&amp;acirc;n Lạc Bắc ch&amp;iacute;nh l&amp;agrave; biển m&amp;acirc;y m&amp;agrave;u trắng.&lt;br /&gt;
&lt;br /&gt;
Nh&amp;igrave;n xuống biển m&amp;acirc;y, đỉnh n&amp;uacute;i giống như một h&amp;ograve;n đảo nhỏ, dưới &amp;aacute;nh nắng giữa trưa thể hiện một sự nguy nga.&lt;br /&gt;
&lt;br /&gt;
Lạc Bắc liếc mắt một c&amp;aacute;i th&amp;igrave; thấy tr&amp;ecirc;n đỉnh n&amp;uacute;i ngoại trừ c&amp;aacute;c loại c&amp;acirc;y cối rất lạ ra c&amp;ograve;n thể hiện một thứ kh&amp;iacute; thế kh&amp;ocirc;ng tầm thường.&lt;br /&gt;
&lt;br /&gt;
M&amp;agrave; b&amp;ecirc;n tr&amp;ecirc;n đ&amp;oacute; c&amp;ograve;n c&amp;oacute; rất nhiều những đ&amp;igrave;nh đ&amp;agrave;i, cung điện được x&amp;acirc;y dựng với phong c&amp;aacute;ch cổ xưa. Thậm ch&amp;iacute; Lạc Bắc c&amp;ograve;n nh&amp;igrave;n thấy nhu đ&amp;aacute;m c&amp;acirc;y cối v&amp;agrave; đ&amp;igrave;nh đ&amp;agrave;i đang lơ lửng tr&amp;ecirc;n đỉnh n&amp;uacute;i.&lt;br /&gt;
&lt;br /&gt;
C&amp;aacute;i đỉnh n&amp;uacute;i giống như rồng nằm tr&amp;ecirc;n biển m&amp;acirc;y tr&amp;agrave;n ngập linh kh&amp;iacute; trong trời đất.&lt;br /&gt;
&lt;br /&gt;
- Rốt cuộc th&amp;igrave; đ&amp;acirc;y l&amp;agrave; đ&amp;acirc;u? - Trong l&amp;uacute;c nhất thời, Lạc Bắc kh&amp;ocirc;ng giữ được sự b&amp;igrave;nh tĩnh.&lt;br /&gt;
&lt;br /&gt;
- Ngươi...ngươi đ&amp;atilde; tỉnh?&lt;br /&gt;
&lt;br /&gt;
Một &amp;acirc;m thanh nho nhỏ chợt vang l&amp;ecirc;n.&lt;br /&gt;
&lt;br /&gt;
Tr&amp;ecirc;n c&amp;aacute;i thềm đ&amp;atilde; lẫn trong m&amp;acirc;y, một thiếu ni&amp;ecirc;n mặc &amp;aacute;o bố m&amp;agrave;u xanh hơi kinh ho&amp;agrave;ng m&amp;agrave; bật dậy.&lt;br /&gt;
&lt;br /&gt;
Thiếu ni&amp;ecirc;n đ&amp;oacute; so với Lạc Bắc c&amp;ograve;n gầy hơn mọt ch&amp;uacute;t. Bộ &amp;aacute;o bố của y ở trong gi&amp;oacute; khiến cho th&amp;acirc;n h&amp;igrave;n của y c&amp;agrave;ng th&amp;ecirc;m gầy yếu. M&amp;agrave; trong &amp;aacute;nh mắt của thiếu ni&amp;ecirc;n lại kh&amp;ocirc;ng giấu được sự h&amp;egrave;n mọn.&lt;br /&gt;
&lt;br /&gt;
M&amp;atilde;i cho tới khi y bật thốt l&amp;ecirc;n tiếng, Lạc Bắc mới ph&amp;aacute;t hiện ra y đang ngồi dưới bậc thang. Lạc Bắc ngẩn người ra m&amp;agrave; hỏi:&lt;br /&gt;
&lt;br /&gt;
- Ngươi l&amp;agrave; ai? Đ&amp;acirc;y l&amp;agrave; đ&amp;acirc;u?&lt;br /&gt;
&lt;br /&gt;
- Ta...ta t&amp;ecirc;n Lận H&amp;agrave;ng. Nơi n&amp;agrave;y...n&amp;agrave;y l&amp;agrave; Thục...Sơn. Ngươi ở đ&amp;acirc;y chờ một ch&amp;uacute;t, ta đi th&amp;ocirc;ng b&amp;aacute;o cho Minh Triết sư huynh.&lt;br /&gt;
&lt;br /&gt;
Sau khi n&amp;oacute;i xong, thiếu ni&amp;ecirc;n liền xoay người nhanh ch&amp;oacute;ng lao xuống khỏi thềm đ&amp;aacute;. Kh&amp;ocirc;ng ngờ y lại l&amp;agrave; một người thọt ch&amp;acirc;n v&amp;agrave; n&amp;oacute;i lắp.&lt;br /&gt;
&lt;br /&gt;
-- Nơi n&amp;agrave;y ch&amp;iacute;nh l&amp;agrave; Thục Sơn? - Lạc Bắc đứng thẳng ngời, ngơ ng&amp;aacute;c nh&amp;igrave;n cảnh tượng xung quanh m&amp;agrave; lẩm bẩm.&lt;br /&gt;
&lt;br /&gt;
Đột nhi&amp;ecirc;n c&amp;oacute; mấy tiếng động vang l&amp;ecirc;n, rồi một tia kiếm quang m&amp;agrave;u trắng v&amp;agrave; m&amp;agrave;u v&amp;agrave;ng lao xuống trước mặt Lạc Bắc.&lt;br /&gt;
&lt;br /&gt;
Từ đạo kiếm quang m&amp;agrave;u trắng xuất hiện một g&amp;atilde; mặc trường b&amp;agrave;o m&amp;agrave;u lam, tướng mạo chừng ba mươi mốt tuổi, mặt trắng, t&amp;oacute;c đen được b&amp;uacute;i l&amp;ecirc;n đỉnh đầu. Nh&amp;igrave;n qua, c&amp;oacute; thể n&amp;oacute;i y l&amp;agrave; một người ph&amp;oacute;ng kho&amp;aacute;ng.&lt;br /&gt;
&lt;br /&gt;
M&amp;agrave; đạo kiếm quang m&amp;agrave;u v&amp;agrave;ng l&amp;agrave; một thanh ni&amp;ecirc;n mặc trang phục m&amp;agrave;u xanh, b&amp;ecirc;n tr&amp;ecirc;n c&amp;oacute; điểm một thứ g&amp;igrave; đ&amp;oacute; m&amp;agrave;u đen nh&amp;igrave;n như bộ gi&amp;aacute;p. Khu&amp;ocirc;n mặt của y được t&amp;ocirc; điểm bởi đ&amp;ocirc;i m&amp;agrave;y rậm, mắt to.&lt;br /&gt;
&lt;br /&gt;
- Chậc chậc! Đ&amp;uacute;ng l&amp;agrave; căn cốt hiếm c&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
Vừa mới xuất hiện trước mặt Lạc Bắc, người thanh ni&amp;ecirc;n đ&amp;oacute; liền thốt l&amp;ecirc;n tiếng khen ngợi.&lt;br /&gt;
&lt;br /&gt;
Thục Sơn...&lt;br /&gt;
&lt;br /&gt;
Khung cảnh nơi đ&amp;acirc;y so với ti&amp;ecirc;n cảnh trong đầu Lạc Bắc trước kia cũng kh&amp;ocirc;ng kh&amp;aacute;c nhiều lắm. Sau khi người thanh ni&amp;ecirc;n mặc trang phục m&amp;agrave;u xanh kia khen ngợi một tiếng liền kh&amp;ocirc;ng nhiều lời, vung tay một c&amp;aacute;i. Ngay lập tức một đạo kiếm quang xuất hiện đưa Lạc Bắc v&amp;agrave; người trung ni&amp;ecirc;n kia vọt thẳng về ph&amp;iacute;a một ngọn n&amp;uacute;i. Cả hai người kh&amp;ocirc;ng biết rằng Nguy&amp;ecirc;n Thi&amp;ecirc;n Y đ&amp;atilde; phong tỏa ph&amp;aacute;p thuật to&amp;agrave;n th&amp;acirc;n Lạc Bắc. Những cơn gi&amp;oacute; lồng lộng giữa trời cao l&amp;agrave;m cho Lạc Bắc kh&amp;ocirc;ng mở mắt ra được, thậm ch&amp;iacute; kh&amp;ocirc;ng c&amp;aacute;ch n&amp;agrave;o thở nổi. Nhưng sau khi hạ xuống đất, Lạc Bắc lại ph&amp;aacute;t hiện m&amp;igrave;nh đang đứng trước một ng&amp;ocirc;i điện với c&amp;aacute;i m&amp;aacute;i cong, b&amp;ecirc;n tr&amp;ecirc;n đỉnh c&amp;ograve;n c&amp;oacute; một hạt ch&amp;acirc;u m&amp;agrave;u đỏ thắm. Dưới mặt đất v&amp;agrave; xung quanh ng&amp;ocirc;i đền ho&amp;agrave;n to&amp;agrave;n l&amp;agrave; bạch ngọc. To&amp;agrave;n bộ diện t&amp;iacute;ch của ng&amp;ocirc;i đền cũng kh&amp;ocirc;ng rộng lắm, giống như ng&amp;ocirc;i lầu của một ph&amp;uacute; h&amp;agrave;o. Tuy nhi&amp;ecirc;n c&amp;aacute;i ng&amp;ocirc;i lầu n&amp;agrave;y lại nằm ở trong một c&amp;aacute;i hạp cốc, hai b&amp;ecirc;n l&amp;agrave; khe sau dựng đứng. Nh&amp;igrave;n to&amp;agrave;n cảnh, cả ng&amp;ocirc;i đền giống như một vi&amp;ecirc;n minh ch&amp;acirc;u. Đằng sau c&amp;ograve;n c&amp;oacute; một c&amp;aacute;i th&amp;aacute;c nước đổ xuống khiến cho n&amp;oacute; c&amp;agrave;ng th&amp;ecirc;m sinh động.&lt;br /&gt;
&lt;br /&gt;
- Sư phụ! Sư b&amp;aacute;.&lt;br /&gt;
&lt;br /&gt;
Người thanh ni&amp;ecirc;n mặc trang phục m&amp;agrave;u xanh v&amp;agrave; người trung ni&amp;ecirc;n &amp;aacute;o lam đứng trước c&amp;aacute;nh cửa kh&amp;eacute;p hờ m&amp;agrave; k&amp;iacute;nh cẩn thốt l&amp;ecirc;n.&lt;br /&gt;
&lt;br /&gt;
- V&amp;agrave;o đi.&lt;br /&gt;
&lt;br /&gt;
Một &amp;acirc;m thanh &amp;ocirc;n h&amp;ograve;a vang l&amp;ecirc;n rồi c&amp;aacute;nh cửa mở rộng ra. Một l&amp;agrave;n nước từ c&amp;aacute;i th&amp;aacute;c chảy xuống ch&amp;iacute;nh giữa căn ph&amp;ograve;ng, b&amp;ecirc;n trong c&amp;oacute; đặt t&amp;aacute;m c&amp;aacute;i ghế bằng gỗ tử đ&amp;agrave;n. Trong căn ph&amp;oacute;ng c&amp;oacute; s&amp;aacute;u, bảy người mặc trang phục kh&amp;aacute;c nhau nhưng chỉ c&amp;oacute; hai người đang ngồi. Một người mặc đạo b&amp;agrave;o m&amp;agrave;u t&amp;iacute;m, t&amp;oacute;c được buộc lại sau lưng. Lạc Bắc liếc qua một c&amp;aacute;i kh&amp;ocirc;ng ngờ cảm thấy thần th&amp;aacute;i của người đ&amp;oacute; c&amp;oacute; v&amp;agrave;i phần giống với Nguy&amp;ecirc;n Thi&amp;ecirc;n Y, kh&amp;ocirc;ng hề nhiễm một ch&amp;uacute;t bụi trần, kh&amp;ocirc;ng mang theo ch&amp;uacute;t kh&amp;oacute;i lửa nh&amp;acirc;n gian. Chỉ c&amp;oacute; điều Nguy&amp;ecirc;n Thi&amp;ecirc;n Y th&amp;igrave; cao ngạo v&amp;agrave; lạnh như băng chẳng kh&amp;aacute;c n&amp;agrave;o một đ&amp;oacute;a sen trắng sinh trưởng tr&amp;ecirc;n n&amp;uacute;i cao. C&amp;ograve;n người thanh ni&amp;ecirc;n mặc đạo b&amp;agrave;o m&amp;agrave;u t&amp;iacute;m th&amp;igrave; vẻ mặt lại hết sức &amp;ocirc;n h&amp;ograve;a khiến cho người ta c&amp;oacute; cảm gi&amp;aacute;c như đang tắm trong gi&amp;oacute; xu&amp;acirc;n. Người c&amp;ograve;n lại mặc một chiếc &amp;aacute;o d&amp;agrave;i đen, sắc mặt &amp;acirc;m trầm nhưng chỉ cần liếc mắt cũng c&amp;oacute; thể thấy đ&amp;oacute; kh&amp;ocirc;ng phải l&amp;agrave; nh&amp;acirc;n vật tầm thường.&lt;br /&gt;
&lt;br /&gt;
Trong l&amp;uacute;c Lạc Bắc đang t&amp;ograve; m&amp;ograve; quan s&amp;aacute;t những người n&amp;agrave;y th&amp;igrave; người mặc đạo b&amp;agrave;o m&amp;agrave;u t&amp;iacute;m cũng ch&amp;iacute;nh l&amp;agrave; Vũ Nhược Trần hơi cười cười. Cũng giống như Nguy&amp;ecirc;n Thi&amp;ecirc;n Y, y ch&amp;iacute;nh l&amp;agrave; người được coi l&amp;agrave; thi&amp;ecirc;n t&amp;agrave;i thứ hai trong v&amp;ograve;ng năm trăm năm qua.&lt;br /&gt;
&lt;br /&gt;
Người mặc &amp;aacute;o đen ngồi b&amp;ecirc;n cạnh y với sắc mặt &amp;acirc;m trầm ch&amp;iacute;nh l&amp;agrave; sư đệ. Ở trong giới tu đạo được mọi người gọi l&amp;agrave; Tu La t&amp;ecirc;n l&amp;agrave; Yến Kinh T&amp;agrave; chưởng quản một số ngọn n&amp;uacute;i của Thục Sơn. V&amp;agrave;o l&amp;uacute;c n&amp;agrave;y, Vũ Nhược Trần nh&amp;igrave;n tho&amp;aacute;ng qua Yến Kinh T&amp;agrave; đang ngồi b&amp;ecirc;n cạnh m&amp;igrave;nh rồi hỏi người đứng b&amp;ecirc;n cạnh y l&amp;agrave; Tần Phong:&lt;br /&gt;
&lt;br /&gt;
- Khi c&amp;aacute;c ngươi tới Tử Huy đạo quan cũng chỉ c&amp;oacute; một c&amp;aacute;i kẻ n&amp;agrave;y l&amp;agrave; người sống?&lt;br /&gt;
&lt;br /&gt;
- Đ&amp;uacute;ng vậy thưa sư b&amp;aacute;.&lt;br /&gt;
&lt;br /&gt;
Tần Phong c&amp;oacute; n&amp;eacute;t mặt trung hậu, lưng đeo một thanh trường kiếm d&amp;agrave;i mỏng nh&amp;igrave;n lớn tuổi hơn Vũ Nhược Trần rất nhiều nhưng lại gọi y l&amp;agrave; sư b&amp;aacute; liền gật đầu một c&amp;aacute;ch k&amp;iacute;nh cẩn.&lt;br /&gt;
&lt;br /&gt;
- Nh&amp;igrave;n ngươi cả người kh&amp;ocirc;ng c&amp;oacute; một ch&amp;uacute;t đạo lực n&amp;agrave;o chẳng lẽ kh&amp;ocirc;ng phải l&amp;agrave; đệ tử của Tử Huy đạo quan? - Yến Kinh T&amp;agrave; đột nhi&amp;ecirc;n l&amp;ecirc;n tiếng hỏi Lạc Bắc.&lt;br /&gt;
&lt;br /&gt;
Lạc Bắc gật đầu:&lt;br /&gt;
&lt;br /&gt;
- Ta vừa mới được Thanh Hư ch&amp;acirc;n nh&amp;acirc;n nhận l&amp;agrave;m đệ tử, vẫn chưa được truyền thụ c&amp;aacute;i g&amp;igrave;.&lt;br /&gt;
&lt;br /&gt;
- Ngươi vừa mới được hắn thu l&amp;agrave;m đệ tử?&lt;br /&gt;
&lt;br /&gt;
- Đ&amp;uacute;ng vậy.&lt;br /&gt;
&lt;br /&gt;
Dưới sự truy vấn của Yến Kinh T&amp;agrave;, Lạc Bắc thuật lại bắt đầu từ khi được Thanh Hư ch&amp;acirc;n nh&amp;acirc;n cứu từ trong miệng ch&amp;oacute; dữ rồi dẫn v&amp;agrave;o trong mật thất, nh&amp;igrave;n thấy Tử H&amp;agrave; chuyển sinh đan như thế n&amp;agrave;o. Cho tới m&amp;igrave;nh, th&amp;igrave; Lạc Bắc cũng chỉ n&amp;oacute;i như n&amp;oacute;i với Thanh Hư ch&amp;acirc;n nh&amp;acirc;n rằng bản th&amp;acirc;n l&amp;agrave; h&amp;agrave;i đồng ở khu vực v&amp;ugrave;ng n&amp;uacute;i gần đ&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
- Xem ra đ&amp;uacute;ng l&amp;agrave; Thanh hư &amp;acirc;m thầm luyện chế Tử H&amp;agrave; chuyển sinh đan, lại gặp được kẻ n&amp;agrave;y c&amp;oacute; tư chất cực cao n&amp;ecirc;n muốn lấy th&amp;acirc;n thể nhưng kh&amp;ocirc;ng ngờ lại bị cao nh&amp;acirc;n ph&amp;aacute;t hiện khiến cho h&amp;igrave;nh thần bị diệt. Kh&amp;ocirc;ng thể ngờ được Thanh hư lại độc &amp;aacute;c như vậy, đ&amp;uacute;ng l&amp;agrave; tự chịu. Đ&amp;aacute;ng tiếc Thanh Huyền chắc l&amp;agrave; phản đối c&amp;aacute;ch l&amp;agrave;m của y cho n&amp;ecirc;n mới bị nhốt tới chết.&lt;br /&gt;
&lt;br /&gt;
Tr&amp;ecirc;n sắc mặt &amp;acirc;m trầm của Yến Kinh t&amp;agrave; l&amp;oacute;e l&amp;ecirc;n một tia s&amp;aacute;ng khiến cho cả căn ph&amp;ograve;ng giống như c&amp;oacute; một tia chớp xuất hiện. Lạc Bắc kh&amp;ocirc;ng tự chủ được m&amp;agrave; ng&amp;acirc;y người.&lt;br /&gt;
&lt;br /&gt;
- Sư phụ! Tại sao Thanh Hư ch&amp;acirc;n nh&amp;acirc;n lại giết đệ tử trong đạo qu&amp;aacute;n của m&amp;igrave;nh, lại d&amp;ugrave;ng m&amp;aacute;u tươi v&amp;agrave; sinh hồn của họ để luyện chế Tử H&amp;agrave; chuyển sinh đan? - T&amp;ecirc;n thanh ni&amp;ecirc;n mặc trang phục m&amp;agrave;u xanh đưa Lạc Bắc cũng ch&amp;iacute;nh l&amp;agrave; Ngao Ho&amp;agrave;ng - Đệ tử thứ s&amp;aacute;u của Yến Kinh T&amp;agrave; kh&amp;ocirc;ng nhịn được m&amp;agrave; l&amp;ecirc;n tiếng hỏi.&lt;br /&gt;
&lt;br /&gt;
Yến Kinh T&amp;agrave; cười lạnh:&lt;br /&gt;
&lt;br /&gt;
- Lấy m&amp;aacute;u tươi v&amp;agrave; sinh hồn của người tu đạo để luyện chế th&amp;igrave; c&amp;agrave;ng th&amp;ecirc;m hiệu quả. Nhưng sợ bị người ta ph&amp;aacute;t hiện cho n&amp;ecirc;n t&amp;ecirc;n đi&amp;ecirc;n đ&amp;oacute; chỉ c&amp;ograve;n c&amp;aacute;ch giết đệ tử của m&amp;igrave;nh.&lt;br /&gt;
&lt;br /&gt;
Ngao Ho&amp;agrave;ng gật đầu, l&amp;agrave;m như vẫn c&amp;ograve;n sợ h&amp;atilde;i:&lt;br /&gt;
&lt;br /&gt;
- Cũng kh&amp;ocirc;ng biết cao nh&amp;acirc;n kia l&amp;agrave; ai m&amp;agrave; hơi thở lưu lại đủ khiến cho người ta sợ h&amp;atilde;i tới vậy?&lt;br /&gt;
&lt;br /&gt;
- Ngoại trừ t&amp;ocirc;ng chủ Nguy&amp;ecirc;n Thi&amp;ecirc;n Y của ph&amp;aacute;i La Ph&amp;ugrave; ra th&amp;igrave; c&amp;ograve;n ai c&amp;oacute; thể phất tay ph&amp;aacute;t ra Lưu Ly kim quang c&amp;oacute; uy lực s&amp;aacute;t thần diệt ti&amp;ecirc;n như vậy. - Vũ Nhược Trần thản nhi&amp;ecirc;n n&amp;oacute;i.&lt;br /&gt;
&lt;br /&gt;
- T&amp;ocirc;ng chủ Nguy&amp;ecirc;n Thi&amp;ecirc;n Y của ph&amp;aacute;i La Ph&amp;ugrave;?&lt;br /&gt;
&lt;br /&gt;
Ngo&amp;agrave;i trừ Yến Kinh T&amp;agrave; ra nhưng người c&amp;ograve;n lại đều h&amp;iacute;t một hơi thật s&amp;acirc;u.&lt;br /&gt;
&lt;br /&gt;
&amp;quot;Sư phụ cứu ta?&amp;quot; Lạc Bắc cũng giật m&amp;igrave;nh kh&amp;ocirc;ng nhịn được m&amp;agrave; nh&amp;igrave;n Vũ Nhược Trần. Nhưng khi &amp;aacute;nh mắt của Lạc Bắc nh&amp;igrave;n tới th&amp;igrave; Vũ Nhược Trần cũng nh&amp;igrave;n qua cửa sổ l&amp;ecirc;n bầu trời xanh m&amp;agrave; kh&amp;ocirc;ng biết đang nghĩ tới điều g&amp;igrave;.&lt;br /&gt;
&lt;br /&gt;
- Nguy&amp;ecirc;n Thi&amp;ecirc;n Y l&amp;agrave;m việc dựa theo cảm x&amp;uacute;c của bản th&amp;acirc;n. Lần n&amp;agrave;y ra tay, tin tức chắc chắn sẽ kh&amp;ocirc;ng bị lan ra.&lt;br /&gt;
&lt;br /&gt;
Sau một l&amp;aacute;t, Vũ Nhược Trần quay đầu lại:&lt;br /&gt;
&lt;br /&gt;
- Tử Huy đạo quan l&amp;agrave; m&amp;ocirc;n hạ dựa v&amp;agrave;o Thục Sơn trong phạm vi trăm dặm. Ch&amp;uacute;ng luyện Tử H&amp;agrave; chuyển sinh đan m&amp;agrave; ch&amp;uacute;ng ta kh&amp;ocirc;ng hay biết, thật kh&amp;oacute; ăn kh&amp;oacute; n&amp;oacute;i. Sau n&amp;agrave;y đối với c&amp;aacute;c m&amp;ocirc;n ph&amp;aacute;i phụ thuộc, ch&amp;uacute;ng ta cũng phải cho đệ tử ch&amp;uacute; &amp;yacute; tới h&amp;agrave;nh vi ng&amp;agrave;y thường của y, kh&amp;ocirc;ng thể để t&amp;aacute;i diễn những việc như thế n&amp;agrave;y được.&lt;br /&gt;
&lt;br /&gt;
Đ&amp;aacute;m người Yến Kinh T&amp;agrave; c&amp;ugrave;ng gật đầu. Vũ Nhược Trần lại nh&amp;igrave;n Lạc Bắc:&lt;br /&gt;
&lt;br /&gt;
- Ngươi c&amp;oacute; t&amp;ecirc;n kh&amp;ocirc;ng?&lt;br /&gt;
&lt;br /&gt;
Lạc Bắc gật đầu:&lt;br /&gt;
&lt;br /&gt;
- Ta t&amp;ecirc;n Lạc Bắc.&lt;br /&gt;
&lt;br /&gt;
- Lạc Bắc! C&amp;aacute;i t&amp;ecirc;n kh&amp;ocirc;ng tồi.&lt;br /&gt;
&lt;br /&gt;
Vũ Nhược Trần lại nh&amp;igrave;n Lạc Bắc:&lt;br /&gt;
&lt;br /&gt;
- Tử Huy đạo quan cũng coi như l&amp;agrave; ngoại m&amp;ocirc;n của Thục Sơn ch&amp;uacute;ng ta. Tuy rằng Thanh Hư phạm phải sai lầm lớn nhưng ngươi cũng c&amp;oacute; thể coi như l&amp;agrave; đệ tử Thục Sơn. Ngươi c&amp;oacute; bằng l&amp;ograve;ng l&amp;agrave;m đệ tử Thục Sơn hay kh&amp;ocirc;ng?&lt;br /&gt;
&lt;br /&gt;
Thục Sơn phi kiếm xuất thi&amp;ecirc;n hạ.&lt;/p&gt;
', 1, CAST(0x0000ADEF01148B1B AS DateTime), CAST(0x0000ADEF01148B1B AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (3129, 5103, 1034, N'UDPiTqDkzys', N'&lt;p&gt;UDPiTqDkzys&lt;/p&gt;
', 1, CAST(0x0000ADF2011E70A6 AS DateTime), CAST(0x0000ADF2011E70A6 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (3132, 5104, 1034, N'aaaaaaaa', N'&lt;p&gt;aaaa&lt;/p&gt;
', 1, CAST(0x0000ADF20120F002 AS DateTime), CAST(0x0000ADF20120F002 AS DateTime))
SET IDENTITY_INSERT [dbo].[DB_CHUONG] OFF
SET IDENTITY_INSERT [dbo].[DB_COMMENT] ON 

INSERT [dbo].[DB_COMMENT] ([id_cmt], [id_user], [id_truyen], [id_chuong], [noidung_cmt], [status_], [created_at], [updated_at]) VALUES (4064, 1034, 4101, 3126, N'<p>alo</p>', 1, CAST(0x0000ADF1014AEC50 AS DateTime), CAST(0x0000ADF1014AEC50 AS DateTime))
INSERT [dbo].[DB_COMMENT] ([id_cmt], [id_user], [id_truyen], [id_chuong], [noidung_cmt], [status_], [created_at], [updated_at]) VALUES (4065, 1034, 4101, 3126, N'<p>a</p>', 1, CAST(0x0000ADF1014B2D27 AS DateTime), CAST(0x0000ADF1014B2D27 AS DateTime))
INSERT [dbo].[DB_COMMENT] ([id_cmt], [id_user], [id_truyen], [id_chuong], [noidung_cmt], [status_], [created_at], [updated_at]) VALUES (4066, 1034, 4101, 3126, N'<p>12</p>', 1, CAST(0x0000ADF1014B48A9 AS DateTime), CAST(0x0000ADF1014B48A9 AS DateTime))
INSERT [dbo].[DB_COMMENT] ([id_cmt], [id_user], [id_truyen], [id_chuong], [noidung_cmt], [status_], [created_at], [updated_at]) VALUES (4067, 1034, 2101, 2108, N'<p>1234</p>', 1, CAST(0x0000ADF201087123 AS DateTime), CAST(0x0000ADF201087123 AS DateTime))
SET IDENTITY_INSERT [dbo].[DB_COMMENT] OFF
SET IDENTITY_INSERT [dbo].[DB_LUOTXEM] ON 

INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (6, 7, 1088, 1093, CAST(0x0000ADED012732F4 AS DateTime), CAST(0x0000ADED012732F4 AS DateTime))
INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (7, 1034, 2101, 2108, CAST(0x0000ADED0129AC2B AS DateTime), CAST(0x0000ADED0129AC2B AS DateTime))
INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (14, 1026, 1073, 1084, CAST(0x0000ADED015D1DB2 AS DateTime), CAST(0x0000ADED015D1DB2 AS DateTime))
INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (15, 1026, 1073, 2109, CAST(0x0000ADED015D9DCB AS DateTime), CAST(0x0000ADED015D9DCB AS DateTime))
INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (16, 1026, 1045, 2118, CAST(0x0000ADED0163FCAE AS DateTime), CAST(0x0000ADED0163FCAE AS DateTime))
INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (2007, 2040, 2101, 2108, CAST(0x0000ADEF00F2FCE8 AS DateTime), CAST(0x0000ADEF00F2FCE8 AS DateTime))
INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (2008, 7, 2101, 2108, CAST(0x0000ADEF00F6102F AS DateTime), CAST(0x0000ADEF00F6102F AS DateTime))
INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (2009, 2040, 1088, 1093, CAST(0x0000ADEF0104D9B5 AS DateTime), CAST(0x0000ADEF0104D9B5 AS DateTime))
INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (2010, 2040, 1088, 3108, CAST(0x0000ADEF010605D5 AS DateTime), CAST(0x0000ADEF010605D5 AS DateTime))
INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (2011, 2042, 4101, 3109, CAST(0x0000ADEF01129C2D AS DateTime), CAST(0x0000ADEF01129C2D AS DateTime))
INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (2012, 2042, 2101, 2108, CAST(0x0000ADEF01134DDB AS DateTime), CAST(0x0000ADEF01134DDB AS DateTime))
INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (2013, 1034, 1073, 2110, CAST(0x0000ADF101132580 AS DateTime), CAST(0x0000ADF101132580 AS DateTime))
INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (2014, 1034, 1073, 2109, CAST(0x0000ADF10123CE3A AS DateTime), CAST(0x0000ADF10123CE3A AS DateTime))
INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (2015, 1034, 1073, 1079, CAST(0x0000ADF1012512AA AS DateTime), CAST(0x0000ADF1012512AA AS DateTime))
INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (2016, 1034, 4101, 3128, CAST(0x0000ADF1012B7C04 AS DateTime), CAST(0x0000ADF1012B7C04 AS DateTime))
INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (2017, 1034, 4101, 3125, CAST(0x0000ADF101302A0F AS DateTime), CAST(0x0000ADF101302A0F AS DateTime))
INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (2018, 1034, 4101, 3127, CAST(0x0000ADF10132F3EB AS DateTime), CAST(0x0000ADF10132F3EB AS DateTime))
INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (2019, 1034, 4101, 3126, CAST(0x0000ADF10142D5E7 AS DateTime), CAST(0x0000ADF10142D5E7 AS DateTime))
INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (2020, 1034, 1088, 3108, CAST(0x0000ADF1015FEC17 AS DateTime), CAST(0x0000ADF1015FEC1C AS DateTime))
INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (2021, 1034, 1088, 1090, CAST(0x0000ADF10170E087 AS DateTime), CAST(0x0000ADF10170E087 AS DateTime))
INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (2022, 1034, 1088, 1092, CAST(0x0000ADF1017168D9 AS DateTime), CAST(0x0000ADF1017168D9 AS DateTime))
INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (2023, 1034, 1073, 1084, CAST(0x0000ADF1017A551E AS DateTime), CAST(0x0000ADF1017A551E AS DateTime))
INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (2024, 1034, 1073, 1082, CAST(0x0000ADF1017BFE2B AS DateTime), CAST(0x0000ADF1017BFE2B AS DateTime))
INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (2025, 1034, 4101, 3119, CAST(0x0000ADF10184F9C8 AS DateTime), CAST(0x0000ADF10184F9C8 AS DateTime))
INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (2026, 1034, 4101, 3113, CAST(0x0000ADF10185A11E AS DateTime), CAST(0x0000ADF10185A11E AS DateTime))
INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (2027, 1034, 1073, 1081, CAST(0x0000ADF200B7BFB7 AS DateTime), CAST(0x0000ADF200B7BFB7 AS DateTime))
INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (3027, 7, 1088, 3108, CAST(0x0000ADF20105698C AS DateTime), CAST(0x0000ADF20105698C AS DateTime))
INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (3028, 7, 1088, 1090, CAST(0x0000ADF201058B77 AS DateTime), CAST(0x0000ADF201058B77 AS DateTime))
INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (3029, 7, 1088, 1092, CAST(0x0000ADF201058E52 AS DateTime), CAST(0x0000ADF201058E52 AS DateTime))
INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (3030, 1034, 4101, 3118, CAST(0x0000ADF20106BB65 AS DateTime), CAST(0x0000ADF20106BB65 AS DateTime))
INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (3031, 2043, 2101, 2108, CAST(0x0000ADF20107DA38 AS DateTime), CAST(0x0000ADF20107DA38 AS DateTime))
INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (3032, 2043, 4101, 3126, CAST(0x0000ADF201087240 AS DateTime), CAST(0x0000ADF201087240 AS DateTime))
INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (4029, 2040, 4101, 3128, CAST(0x0000ADF20129FC25 AS DateTime), CAST(0x0000ADF20129FC25 AS DateTime))
INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (4030, 2040, 4101, 3121, CAST(0x0000ADF2012A1402 AS DateTime), CAST(0x0000ADF2012A1402 AS DateTime))
INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (4031, 2040, 4101, 3124, CAST(0x0000ADF2012A938A AS DateTime), CAST(0x0000ADF2012A938A AS DateTime))
INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (4032, 2040, 4101, 3125, CAST(0x0000ADF2012A97F8 AS DateTime), CAST(0x0000ADF2012A97F8 AS DateTime))
INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (4033, 2040, 4101, 3117, CAST(0x0000ADF2012A9D84 AS DateTime), CAST(0x0000ADF2012A9D84 AS DateTime))
SET IDENTITY_INSERT [dbo].[DB_LUOTXEM] OFF
SET IDENTITY_INSERT [dbo].[DB_THELOAI] ON 

INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (4, N'Hài Hước', N'Nội dung có chứa các tình tiết gây cười.', CAST(0x0000ADD60084AD9E AS DateTime), CAST(0x0000ADD60084AD9E AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (5, N'Phiêu Lưu', N'Hành trình chu du khắp thế giới',  CAST(0x0000ADD60084D8A8 AS DateTime), CAST(0x0000ADD60084D8A8 AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (6, N'Harem', N'Hậu cung',  CAST(0x0000ADD60087C155 AS DateTime), CAST(0x0000ADD60087C155 AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (7, N'Đời thường', N'Cuộc sống hàng ngày',  CAST(0x0000ADD60087EE7D AS DateTime), CAST(0x0000ADD60087EE7D AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (8, N'Siêu nhiên', N'Hiện tượng kỳ ảo giả tưởng', CAST(0x0000ADD60089680C AS DateTime), CAST(0x0000ADD60089680C AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (9, N'Siêu năng lực', N'Nhân vật có khả năng đặc biệt',  CAST(0x0000ADD600899562 AS DateTime), CAST(0x0000ADD600899562 AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (10, N'Lịch sử', N'Đề tài có liên quan tới lịch sử',  CAST(0x0000ADD60089CBE1 AS DateTime), CAST(0x0000ADD60089CBE1 AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (12, N'Mecha', N'Cỗ máy chiến đấu',  CAST(0x0000ADD60089E16F AS DateTime), CAST(0x0000ADD60089E16F AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (13, N'Trinh thám', N'Nơi mà nhân vật chính sẽ là những người khám phá ra các bí mật được ẩn giấu sau các vụ án hay những bí ẩn được che giấu. Nhân vật chính thường có nghề nghiệp như thám tử, điệp viên , v.v.... ',  CAST(0x0000ADD6008A1B6C AS DateTime), CAST(0x0000ADD6008A1B6C AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (14, N'Lãng mạn', N'Tình cảm ướt át',  CAST(0x0000ADD6008AE3F2 AS DateTime), CAST(0x0000ADD6008AE3F2 AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (15, N'Âm nhạc', N'Nơi chữa lành tâm hồn bằng những giai điệu.',  CAST(0x0000ADD6008B5924 AS DateTime), CAST(0x0000ADD6008B5924 AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (16, N'Oneshot', N'Truyện ngắn 1 chương',  CAST(0x0000ADD6008CFC18 AS DateTime), CAST(0x0000ADD6008CFC18 AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (17, N'Kinh dị', N'Rùng rợn máu me',  CAST(0x0000ADD6008D5DE4 AS DateTime), CAST(0x0000ADD6008D5DE4 AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (18, N'Drama', N'Chính kịch',  CAST(0x0000ADD6008D9416 AS DateTime), CAST(0x0000ADD6008D9416 AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (20, N'Shounen', N'Nói về nv nam chủ yếu ở tuổi vị thành niên', CAST(0x0000ADD6008ECB73 AS DateTime), CAST(0x0000ADD6008ECB73 AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (21, N'Shoujo', N'Nói về nv nữ chủ yếu ở tuổi vị thành niên',  CAST(0x0000ADD6008EF769 AS DateTime), CAST(0x0000ADD6008EF769 AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (22, N'Thể thao', N'Chủ đề tập trung nói tới các hoạt động  chơi các môn vận động như đá bóng, bóng rổ, bóng chuyền,.... ',  CAST(0x0000ADD6008F67C9 AS DateTime), CAST(0x0000ADD6008F67C9 AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (26, N'Khoa học Viễn tưởng', N'Thể loại này sẽ mang đến những góc nhìn về nền khoa học tiên tiến hơn và là sản phẩm của trí tưởng tượng mà tạo thành.', CAST(0x0000ADD600904BC6 AS DateTime), CAST(0x0000ADD600904BC6 AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (27, N'Yaoi', N'Tình cảm nam x nam (Đam mĩ)', CAST(0x0000ADD60090B5D5 AS DateTime), CAST(0x0000ADD60090B5D5 AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (28, N'Yuri', N'Tình cảm nữ x nữ (bách hợp)', CAST(0x0000ADD60090DA6A AS DateTime), CAST(0x0000ADD60090DA6A AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (29, N'Chuyển sinh', N'Tái sinh ở một thế giới khác', CAST(0x0000ADD6009501E6 AS DateTime), CAST(0x0000ADD6009501E6 AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (31, N'Xuyên không', N'Du hành thời gian', CAST(0x0000ADD6009511EA AS DateTime), CAST(0x0000ADD6009511EA AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (32, N'Phép thuật', N'Nơi nhân vật có thể sử dụng năng lực ma thuật .', CAST(0x0000ADD600D94139 AS DateTime), CAST(0x0000ADD600D94139 AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (33, N'Fantasy', N'Được xây dựng dựa trên trí tưởng tượng và sẽ có những tình tiết không có trong thực tại mà do tác giả tưởng tượng mà tạo ra.', CAST(0x0000ADD600D9F624 AS DateTime), CAST(0x0000ADD600D9F624 AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (34, N'Demons', N'Ác quỷ.', CAST(0x0000ADD600DA2B7F AS DateTime), CAST(0x0000ADD600DA2B7F AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (35, N'Game', N'Trò chơi', CAST(0x0000ADD600DA4430 AS DateTime), CAST(0x0000ADD600DA4430 AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (36, N'Space', N'Ngoài không gian vũ trụ', CAST(0x0000ADD600DA6E2B AS DateTime), CAST(0x0000ADD600DA6E2B AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (37, N'Tragedy', N'Kết cục của truyện thường sẽ là kết buồn (sad ending ) và nhân vật chính sẽ có nhiều rủi ro, mất mát lớn.', CAST(0x0000ADD600DAF790 AS DateTime), CAST(0x0000ADD600DAF790 AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (38, N'Bí ẩn', N'Những sự việc không thể lý giải được.', CAST(0x0000ADD600DB6AEF AS DateTime), CAST(0x0000ADD600DB6AEF AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (39, N'Học đường', N'Nói về những hoạt động ở trường học', CAST(0x0000ADD6014E7227 AS DateTime), CAST(0x0000ADD6014E7227 AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (40, N'Ecchi', N'Độ tuổi từ 16+ trở lên', CAST(0x0000ADE20161C30D AS DateTime), CAST(0x0000ADE20161C30D AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (41, N'Quân đội', N'Đề tài liên quan đến chiến tranh và xuất hiện các quân đội', CAST(0x0000ADE201629DB8 AS DateTime), CAST(0x0000ADE201629DB8 AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (42, N'Hành động', N'Kịch tích mãn nhãn', CAST(0x0000ADED015ABC28 AS DateTime), CAST(0x0000ADED015ABC28 AS DateTime), 1026)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (43, N'Light Novel', N'Tiểu thuyết, Truyện chữ',  CAST(0x0000ADED015AC52E AS DateTime), CAST(0x0000ADED015AC52E AS DateTime), 1026)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (44, N'Color', N'Truyện tranh có màu',  CAST(0x0000ADED015ACC45 AS DateTime), CAST(0x0000ADED015ACC45 AS DateTime), 1026)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (45, N'Manga', N'Truyện tranh Nhật Bản',  CAST(0x0000ADED015AD602 AS DateTime), CAST(0x0000ADED015AD602 AS DateTime), 1026)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (46, N'Anime', N'Video hoạt hình Nhật và Trung',  CAST(0x0000ADED015B1326 AS DateTime), CAST(0x0000ADED015B1326 AS DateTime), 1026)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (47, N'Comics', N'Truyện tranh Phương Tây',  CAST(0x0000ADED015B720D AS DateTime), CAST(0x0000ADED015B720D AS DateTime), 1026)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (1042, N'Tiên Hiệp', N'Truyện tiên hiệp thường kể về quá trình tu luyện và khám phá thế giới tu sĩ thần tiên đầy bí ẩn của nhân vật chính.',  CAST(0x0000ADEF010FBF15 AS DateTime), CAST(0x0000ADEF010FBF15 AS DateTime), 1034)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (1043, N'Huyền Huyễn', N'Truyện có những yếu tố huyền bí, khoa học khó giải thích.',  CAST(0x0000ADEF010FF73D AS DateTime), CAST(0x0000ADEF010FF73D AS DateTime), 1034)
SET IDENTITY_INSERT [dbo].[DB_THELOAI] OFF
SET IDENTITY_INSERT [dbo].[DB_TRUYEN_THELOAI] ON 

INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (65, 18, 39, 1, CAST(0x0000ADDC00A5C62E AS DateTime), CAST(0x0000ADDC00A5C62E AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (66, 18, 38, 1, CAST(0x0000ADDC00A5C630 AS DateTime), CAST(0x0000ADDC00A5C630 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (67, 18, 31, 1, CAST(0x0000ADDC00A5C632 AS DateTime), CAST(0x0000ADDC00A5C632 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (68, 18, 10, 1, CAST(0x0000ADDC00A5C633 AS DateTime), CAST(0x0000ADDC00A5C633 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (69, 18, 9, 1, CAST(0x0000ADDC00A5C635 AS DateTime), CAST(0x0000ADDC00A5C635 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (81, 21, 38, 1, CAST(0x0000ADDC00AB31AC AS DateTime), CAST(0x0000ADDC00AB31AC AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (82, 21, 18, 1, CAST(0x0000ADDC00AB31C9 AS DateTime), CAST(0x0000ADDC00AB31C9 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (83, 21, 14, 1, CAST(0x0000ADDC00AB31CA AS DateTime), CAST(0x0000ADDC00AB31CA AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (84, 21, 13, 1, CAST(0x0000ADDC00AB31CD AS DateTime), CAST(0x0000ADDC00AB31CD AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (85, 21, 9, 1, CAST(0x0000ADDC00AB31CE AS DateTime), CAST(0x0000ADDC00AB31CE AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (86, 21, 7, 1, CAST(0x0000ADDC00AB31CF AS DateTime), CAST(0x0000ADDC00AB31CF AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (87, 21, 4, 1, CAST(0x0000ADDC00AB31D2 AS DateTime), CAST(0x0000ADDC00AB31D2 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (93, 23, 32, 1, CAST(0x0000ADDC01732B2B AS DateTime), CAST(0x0000ADDC01732B2B AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (94, 23, 31, 1, CAST(0x0000ADDC01732B2C AS DateTime), CAST(0x0000ADDC01732B2C AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (95, 23, 29, 1, CAST(0x0000ADDC01732B2D AS DateTime), CAST(0x0000ADDC01732B2D AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (96, 23, 28, 1, CAST(0x0000ADDC01732B2E AS DateTime), CAST(0x0000ADDC01732B2E AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (97, 23, 27, 1, CAST(0x0000ADDC01732B2F AS DateTime), CAST(0x0000ADDC01732B2F AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (98, 24, 15, 1, CAST(0x0000ADDC01742862 AS DateTime), CAST(0x0000ADDC01742862 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (99, 24, 14, 1, CAST(0x0000ADDC01742863 AS DateTime), CAST(0x0000ADDC01742863 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (100, 24, 13, 1, CAST(0x0000ADDC01742864 AS DateTime), CAST(0x0000ADDC01742864 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (101, 24, 12, 1, CAST(0x0000ADDC01742866 AS DateTime), CAST(0x0000ADDC01742866 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (102, 24, 10, 1, CAST(0x0000ADDC01742867 AS DateTime), CAST(0x0000ADDC01742867 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (108, 26, 38, 1, CAST(0x0000ADDC01752C4E AS DateTime), CAST(0x0000ADDC01752C4E AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (109, 26, 37, 1, CAST(0x0000ADDC01752C4F AS DateTime), CAST(0x0000ADDC01752C4F AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (110, 26, 36, 1, CAST(0x0000ADDC01752C50 AS DateTime), CAST(0x0000ADDC01752C50 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (111, 26, 31, 1, CAST(0x0000ADDC01752C51 AS DateTime), CAST(0x0000ADDC01752C51 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (112, 26, 29, 1, CAST(0x0000ADDC01752C52 AS DateTime), CAST(0x0000ADDC01752C52 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (113, 26, 20, 1, CAST(0x0000ADDC01752C54 AS DateTime), CAST(0x0000ADDC01752C54 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (124, 28, 39, 1, CAST(0x0000ADDD0085EC19 AS DateTime), CAST(0x0000ADDD0085EC19 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (125, 28, 18, 1, CAST(0x0000ADDD0085EC1A AS DateTime), CAST(0x0000ADDD0085EC1A AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (126, 28, 14, 1, CAST(0x0000ADDD0085EC1B AS DateTime), CAST(0x0000ADDD0085EC1B AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (127, 28, 7, 1, CAST(0x0000ADDD0085EC1B AS DateTime), CAST(0x0000ADDD0085EC1B AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (128, 28, 4, 1, CAST(0x0000ADDD0085EC1C AS DateTime), CAST(0x0000ADDD0085EC1C AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (129, 29, 33, 1, CAST(0x0000ADDD0087256A AS DateTime), CAST(0x0000ADDD0087256A AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (130, 29, 32, 1, CAST(0x0000ADDD0087256B AS DateTime), CAST(0x0000ADDD0087256B AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (131, 29, 31, 1, CAST(0x0000ADDD0087256B AS DateTime), CAST(0x0000ADDD0087256B AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (132, 29, 29, 1, CAST(0x0000ADDD0087256D AS DateTime), CAST(0x0000ADDD0087256D AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (133, 29, 18, 1, CAST(0x0000ADDD0087256E AS DateTime), CAST(0x0000ADDD0087256E AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (134, 29, 14, 1, CAST(0x0000ADDD0087256E AS DateTime), CAST(0x0000ADDD0087256E AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1118, 1029, 39, 1, CAST(0x0000ADDD008FD304 AS DateTime), CAST(0x0000ADDD008FD304 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1119, 1029, 38, 1, CAST(0x0000ADDD008FD307 AS DateTime), CAST(0x0000ADDD008FD307 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1120, 1029, 29, 1, CAST(0x0000ADDD008FD30C AS DateTime), CAST(0x0000ADDD008FD30C AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1121, 1029, 20, 1, CAST(0x0000ADDD008FD30C AS DateTime), CAST(0x0000ADDD008FD30C AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1122, 1029, 18, 1, CAST(0x0000ADDD008FD30D AS DateTime), CAST(0x0000ADDD008FD30D AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1144, 1033, 39, 1, CAST(0x0000ADDD0090BFA6 AS DateTime), CAST(0x0000ADDD0090BFA6 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1145, 1033, 31, 1, CAST(0x0000ADDD0090BFA7 AS DateTime), CAST(0x0000ADDD0090BFA7 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1146, 1033, 20, 1, CAST(0x0000ADDD0090BFA8 AS DateTime), CAST(0x0000ADDD0090BFA8 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1147, 1033, 17, 1, CAST(0x0000ADDD0090BFA9 AS DateTime), CAST(0x0000ADDD0090BFA9 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1148, 1033, 10, 1, CAST(0x0000ADDD0090BFAB AS DateTime), CAST(0x0000ADDD0090BFAB AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1149, 1033, 9, 1, CAST(0x0000ADDD0090BFAC AS DateTime), CAST(0x0000ADDD0090BFAC AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1150, 1034, 39, 1, CAST(0x0000ADDD0090E07C AS DateTime), CAST(0x0000ADDD0090E07C AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1151, 1034, 38, 1, CAST(0x0000ADDD0090E07C AS DateTime), CAST(0x0000ADDD0090E07C AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1152, 1034, 37, 1, CAST(0x0000ADDD0090E07D AS DateTime), CAST(0x0000ADDD0090E07D AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1153, 1034, 31, 1, CAST(0x0000ADDD0090E07F AS DateTime), CAST(0x0000ADDD0090E07F AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1154, 1034, 29, 1, CAST(0x0000ADDD0090E07F AS DateTime), CAST(0x0000ADDD0090E07F AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1165, 1031, 39, 1, CAST(0x0000ADDD0093D41E AS DateTime), CAST(0x0000ADDD0093D41E AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1166, 1031, 21, 1, CAST(0x0000ADDD0093D41F AS DateTime), CAST(0x0000ADDD0093D41F AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1167, 1031, 18, 1, CAST(0x0000ADDD0093D41F AS DateTime), CAST(0x0000ADDD0093D41F AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1168, 1031, 14, 1, CAST(0x0000ADDD0093D420 AS DateTime), CAST(0x0000ADDD0093D420 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1169, 1031, 7, 1, CAST(0x0000ADDD0093D422 AS DateTime), CAST(0x0000ADDD0093D422 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1170, 1031, 4, 1, CAST(0x0000ADDD0093D422 AS DateTime), CAST(0x0000ADDD0093D422 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1187, 1030, 39, 1, CAST(0x0000ADDD009666D4 AS DateTime), CAST(0x0000ADDD009666D4 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1188, 1030, 15, 1, CAST(0x0000ADDD009666D5 AS DateTime), CAST(0x0000ADDD009666D5 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1189, 1030, 7, 1, CAST(0x0000ADDD009666D6 AS DateTime), CAST(0x0000ADDD009666D6 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1190, 1030, 4, 1, CAST(0x0000ADDD009666D7 AS DateTime), CAST(0x0000ADDD009666D7 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1213, 1041, 33, 1, CAST(0x0000ADDD00A89C5E AS DateTime), CAST(0x0000ADDD00A89C5E AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1214, 1041, 32, 1, CAST(0x0000ADDD00A89C65 AS DateTime), CAST(0x0000ADDD00A89C65 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1215, 1041, 31, 1, CAST(0x0000ADDD00A89C6E AS DateTime), CAST(0x0000ADDD00A89C6E AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1216, 1041, 29, 1, CAST(0x0000ADDD00A89C71 AS DateTime), CAST(0x0000ADDD00A89C71 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1217, 1041, 18, 1, CAST(0x0000ADDD00A89C74 AS DateTime), CAST(0x0000ADDD00A89C74 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1218, 1041, 14, 1, CAST(0x0000ADDD00A89C77 AS DateTime), CAST(0x0000ADDD00A89C77 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1219, 1041, 6, 1, CAST(0x0000ADDD00A89C7A AS DateTime), CAST(0x0000ADDD00A89C7A AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1220, 1041, 5, 1, CAST(0x0000ADDD00A89C7B AS DateTime), CAST(0x0000ADDD00A89C7B AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1221, 1041, 4, 1, CAST(0x0000ADDD00A89C7D AS DateTime), CAST(0x0000ADDD00A89C7D AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1223, 1042, 39, 1, CAST(0x0000ADDD00A8AC47 AS DateTime), CAST(0x0000ADDD00A8AC47 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1224, 1042, 31, 1, CAST(0x0000ADDD00A8AC4A AS DateTime), CAST(0x0000ADDD00A8AC4A AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1225, 1042, 10, 1, CAST(0x0000ADDD00A8AC4D AS DateTime), CAST(0x0000ADDD00A8AC4D AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1226, 1042, 9, 1, CAST(0x0000ADDD00A8AC50 AS DateTime), CAST(0x0000ADDD00A8AC50 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1227, 1042, 8, 1, CAST(0x0000ADDD00A8AC53 AS DateTime), CAST(0x0000ADDD00A8AC53 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1233, 1044, 39, 1, CAST(0x0000ADDD00A9A0A9 AS DateTime), CAST(0x0000ADDD00A9A0A9 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1234, 1044, 38, 1, CAST(0x0000ADDD00A9A0AF AS DateTime), CAST(0x0000ADDD00A9A0AF AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1235, 1044, 31, 1, CAST(0x0000ADDD00A9A0B4 AS DateTime), CAST(0x0000ADDD00A9A0B4 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1240, 1046, 39, 1, CAST(0x0000ADDD00AA104B AS DateTime), CAST(0x0000ADDD00AA104B AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1241, 1046, 31, 1, CAST(0x0000ADDD00AA104D AS DateTime), CAST(0x0000ADDD00AA104D AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1242, 1046, 29, 1, CAST(0x0000ADDD00AA104F AS DateTime), CAST(0x0000ADDD00AA104F AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1243, 1046, 17, 1, CAST(0x0000ADDD00AA1050 AS DateTime), CAST(0x0000ADDD00AA1050 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1244, 1046, 10, 1, CAST(0x0000ADDD00AA1051 AS DateTime), CAST(0x0000ADDD00AA1051 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1245, 1046, 9, 1, CAST(0x0000ADDD00AA1053 AS DateTime), CAST(0x0000ADDD00AA1053 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1246, 1046, 8, 1, CAST(0x0000ADDD00AA1054 AS DateTime), CAST(0x0000ADDD00AA1054 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1248, 1047, 39, 1, CAST(0x0000ADDD00AA3FBE AS DateTime), CAST(0x0000ADDD00AA3FBE AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1249, 1047, 38, 1, CAST(0x0000ADDD00AA3FC1 AS DateTime), CAST(0x0000ADDD00AA3FC1 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1250, 1047, 31, 1, CAST(0x0000ADDD00AA3FC4 AS DateTime), CAST(0x0000ADDD00AA3FC4 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1251, 1047, 29, 1, CAST(0x0000ADDD00AA3FC8 AS DateTime), CAST(0x0000ADDD00AA3FC8 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1252, 1047, 20, 1, CAST(0x0000ADDD00AA3FCB AS DateTime), CAST(0x0000ADDD00AA3FCB AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1253, 1047, 18, 1, CAST(0x0000ADDD00AA3FD1 AS DateTime), CAST(0x0000ADDD00AA3FD1 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1254, 1048, 39, 1, CAST(0x0000ADDD00AA864F AS DateTime), CAST(0x0000ADDD00AA864F AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1255, 1048, 38, 1, CAST(0x0000ADDD00AA8651 AS DateTime), CAST(0x0000ADDD00AA8651 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1256, 1048, 31, 1, CAST(0x0000ADDD00AA8652 AS DateTime), CAST(0x0000ADDD00AA8652 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1257, 1048, 29, 1, CAST(0x0000ADDD00AA8653 AS DateTime), CAST(0x0000ADDD00AA8653 AS DateTime))
GO
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1258, 1048, 17, 1, CAST(0x0000ADDD00AA8655 AS DateTime), CAST(0x0000ADDD00AA8655 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1263, 1050, 39, 1, CAST(0x0000ADDD00AAF153 AS DateTime), CAST(0x0000ADDD00AAF153 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1264, 1050, 31, 1, CAST(0x0000ADDD00AAF15A AS DateTime), CAST(0x0000ADDD00AAF15A AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1265, 1050, 18, 1, CAST(0x0000ADDD00AAF15C AS DateTime), CAST(0x0000ADDD00AAF15C AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1266, 1051, 39, 1, CAST(0x0000ADDD00AB25BA AS DateTime), CAST(0x0000ADDD00AB25BA AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1267, 1051, 31, 1, CAST(0x0000ADDD00AB25DF AS DateTime), CAST(0x0000ADDD00AB25DF AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1268, 1051, 17, 1, CAST(0x0000ADDD00AB25E0 AS DateTime), CAST(0x0000ADDD00AB25E0 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1279, 1055, 38, 1, CAST(0x0000ADDD00ABDDD6 AS DateTime), CAST(0x0000ADDD00ABDDD6 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1280, 1055, 26, 1, CAST(0x0000ADDD00ABDE50 AS DateTime), CAST(0x0000ADDD00ABDE50 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1281, 1056, 39, 1, CAST(0x0000ADDD00AC0C70 AS DateTime), CAST(0x0000ADDD00AC0C70 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1282, 1056, 38, 1, CAST(0x0000ADDD00AC0C71 AS DateTime), CAST(0x0000ADDD00AC0C71 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1283, 1056, 31, 1, CAST(0x0000ADDD00AC0C72 AS DateTime), CAST(0x0000ADDD00AC0C72 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1284, 1056, 29, 1, CAST(0x0000ADDD00AC0C73 AS DateTime), CAST(0x0000ADDD00AC0C73 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1285, 1056, 17, 1, CAST(0x0000ADDD00AC0C74 AS DateTime), CAST(0x0000ADDD00AC0C74 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1286, 1057, 39, 1, CAST(0x0000ADDD00AC446C AS DateTime), CAST(0x0000ADDD00AC446C AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1287, 1057, 38, 1, CAST(0x0000ADDD00AC446E AS DateTime), CAST(0x0000ADDD00AC446E AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1288, 1057, 18, 1, CAST(0x0000ADDD00AC446F AS DateTime), CAST(0x0000ADDD00AC446F AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1289, 1058, 39, 1, CAST(0x0000ADDD00AC7730 AS DateTime), CAST(0x0000ADDD00AC7730 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1290, 1058, 38, 1, CAST(0x0000ADDD00AC77A9 AS DateTime), CAST(0x0000ADDD00AC77A9 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1296, 1061, 38, 1, CAST(0x0000ADDD00AD0CEC AS DateTime), CAST(0x0000ADDD00AD0CEC AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1297, 1061, 31, 1, CAST(0x0000ADDD00AD0CF4 AS DateTime), CAST(0x0000ADDD00AD0CF4 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1298, 1061, 9, 1, CAST(0x0000ADDD00AD0CF9 AS DateTime), CAST(0x0000ADDD00AD0CF9 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1306, 1064, 38, 1, CAST(0x0000ADDD00ADDD5A AS DateTime), CAST(0x0000ADDD00ADDD5A AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1307, 1064, 17, 1, CAST(0x0000ADDD00ADDD5F AS DateTime), CAST(0x0000ADDD00ADDD5F AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1308, 1064, 9, 1, CAST(0x0000ADDD00ADDD60 AS DateTime), CAST(0x0000ADDD00ADDD60 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1310, 1065, 38, 1, CAST(0x0000ADDD00AE12B8 AS DateTime), CAST(0x0000ADDD00AE12B8 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1311, 1065, 9, 1, CAST(0x0000ADDD00AE12B9 AS DateTime), CAST(0x0000ADDD00AE12B9 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1313, 1066, 38, 1, CAST(0x0000ADDD00AE4359 AS DateTime), CAST(0x0000ADDD00AE4359 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1314, 1066, 9, 1, CAST(0x0000ADDD00AE43D2 AS DateTime), CAST(0x0000ADDD00AE43D2 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1322, 1069, 38, 1, CAST(0x0000ADDD00AED0E9 AS DateTime), CAST(0x0000ADDD00AED0E9 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1323, 1069, 9, 1, CAST(0x0000ADDD00AED0EA AS DateTime), CAST(0x0000ADDD00AED0EA AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1325, 1070, 38, 1, CAST(0x0000ADDD00AEF96B AS DateTime), CAST(0x0000ADDD00AEF96B AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1326, 1070, 18, 1, CAST(0x0000ADDD00AEF96C AS DateTime), CAST(0x0000ADDD00AEF96C AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1327, 1071, 38, 1, CAST(0x0000ADDD00AF290F AS DateTime), CAST(0x0000ADDD00AF290F AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1328, 1071, 9, 1, CAST(0x0000ADDD00AF2910 AS DateTime), CAST(0x0000ADDD00AF2910 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1330, 1072, 38, 1, CAST(0x0000ADDD00AF582B AS DateTime), CAST(0x0000ADDD00AF582B AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1331, 1072, 18, 1, CAST(0x0000ADDD00AF582E AS DateTime), CAST(0x0000ADDD00AF582E AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1332, 1072, 9, 1, CAST(0x0000ADDD00AF5831 AS DateTime), CAST(0x0000ADDD00AF5831 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1389, 1073, 33, 1, CAST(0x0000ADDD01448410 AS DateTime), CAST(0x0000ADDD01448410 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1390, 1073, 32, 1, CAST(0x0000ADDD01448411 AS DateTime), CAST(0x0000ADDD01448411 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1391, 1073, 31, 1, CAST(0x0000ADDD01448411 AS DateTime), CAST(0x0000ADDD01448411 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1392, 1073, 29, 1, CAST(0x0000ADDD01448411 AS DateTime), CAST(0x0000ADDD01448411 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1393, 1073, 6, 1, CAST(0x0000ADDD01448411 AS DateTime), CAST(0x0000ADDD01448411 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1394, 1073, 5, 1, CAST(0x0000ADDD01448412 AS DateTime), CAST(0x0000ADDD01448412 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1396, 1084, 14, 1, CAST(0x0000ADDD01460ED0 AS DateTime), CAST(0x0000ADDD01460ED0 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1397, 1084, 4, 1, CAST(0x0000ADDD01460ED0 AS DateTime), CAST(0x0000ADDD01460ED0 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1398, 1082, 39, 1, CAST(0x0000ADDD0146B12D AS DateTime), CAST(0x0000ADDD0146B12D AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1399, 1082, 7, 1, CAST(0x0000ADDD0146B12E AS DateTime), CAST(0x0000ADDD0146B12E AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1400, 1082, 4, 1, CAST(0x0000ADDD0146B12E AS DateTime), CAST(0x0000ADDD0146B12E AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1401, 1081, 38, 1, CAST(0x0000ADDD01471769 AS DateTime), CAST(0x0000ADDD01471769 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1402, 1081, 5, 1, CAST(0x0000ADDD01471769 AS DateTime), CAST(0x0000ADDD01471769 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1403, 1081, 4, 1, CAST(0x0000ADDD01471769 AS DateTime), CAST(0x0000ADDD01471769 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1405, 1083, 33, 1, CAST(0x0000ADDD0148474B AS DateTime), CAST(0x0000ADDD0148474B AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1406, 1083, 32, 1, CAST(0x0000ADDD0148474B AS DateTime), CAST(0x0000ADDD0148474B AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1407, 1083, 5, 1, CAST(0x0000ADDD0148474B AS DateTime), CAST(0x0000ADDD0148474B AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1408, 1083, 4, 1, CAST(0x0000ADDD0148474C AS DateTime), CAST(0x0000ADDD0148474C AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1409, 1088, 39, 1, CAST(0x0000ADDD01485312 AS DateTime), CAST(0x0000ADDD01485312 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1410, 1088, 31, 1, CAST(0x0000ADDD01485313 AS DateTime), CAST(0x0000ADDD01485313 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1411, 1088, 14, 1, CAST(0x0000ADDD01485314 AS DateTime), CAST(0x0000ADDD01485314 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1412, 1088, 8, 1, CAST(0x0000ADDD01485315 AS DateTime), CAST(0x0000ADDD01485315 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1413, 1088, 7, 1, CAST(0x0000ADDD01485316 AS DateTime), CAST(0x0000ADDD01485316 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1414, 1088, 4, 1, CAST(0x0000ADDD01485316 AS DateTime), CAST(0x0000ADDD01485316 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1415, 1079, 38, 1, CAST(0x0000ADDD01489D62 AS DateTime), CAST(0x0000ADDD01489D62 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1416, 1079, 34, 1, CAST(0x0000ADDD01489D62 AS DateTime), CAST(0x0000ADDD01489D62 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1417, 1079, 20, 1, CAST(0x0000ADDD01489D63 AS DateTime), CAST(0x0000ADDD01489D63 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1418, 1079, 8, 1, CAST(0x0000ADDD01489D63 AS DateTime), CAST(0x0000ADDD01489D63 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1419, 1079, 5, 1, CAST(0x0000ADDD01489D63 AS DateTime), CAST(0x0000ADDD01489D63 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1420, 1079, 4, 1, CAST(0x0000ADDD01489D64 AS DateTime), CAST(0x0000ADDD01489D64 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1422, 1078, 39, 1, CAST(0x0000ADDD0149B6B5 AS DateTime), CAST(0x0000ADDD0149B6B5 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1423, 1078, 22, 1, CAST(0x0000ADDD0149B6B5 AS DateTime), CAST(0x0000ADDD0149B6B5 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1424, 1078, 7, 1, CAST(0x0000ADDD0149B6B5 AS DateTime), CAST(0x0000ADDD0149B6B5 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1425, 1077, 26, 1, CAST(0x0000ADDD014A985F AS DateTime), CAST(0x0000ADDD014A985F AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1426, 1077, 18, 1, CAST(0x0000ADDD014A9860 AS DateTime), CAST(0x0000ADDD014A9860 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1427, 1077, 14, 1, CAST(0x0000ADDD014A9860 AS DateTime), CAST(0x0000ADDD014A9860 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1428, 1052, 39, 1, CAST(0x0000ADDD014D29C8 AS DateTime), CAST(0x0000ADDD014D29C8 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1429, 1052, 7, 1, CAST(0x0000ADDD014D29C8 AS DateTime), CAST(0x0000ADDD014D29C8 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1430, 1054, 33, 1, CAST(0x0000ADDD014D5D1A AS DateTime), CAST(0x0000ADDD014D5D1A AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1431, 1054, 32, 1, CAST(0x0000ADDD014D5D1B AS DateTime), CAST(0x0000ADDD014D5D1B AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1432, 1054, 31, 1, CAST(0x0000ADDD014D5D1C AS DateTime), CAST(0x0000ADDD014D5D1C AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1433, 1054, 29, 1, CAST(0x0000ADDD014D5D1D AS DateTime), CAST(0x0000ADDD014D5D1D AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1434, 1054, 4, 1, CAST(0x0000ADDD014D5D20 AS DateTime), CAST(0x0000ADDD014D5D20 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1435, 1049, 33, 1, CAST(0x0000ADDD014E6635 AS DateTime), CAST(0x0000ADDD014E6635 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1436, 1049, 32, 1, CAST(0x0000ADDD014E6635 AS DateTime), CAST(0x0000ADDD014E6635 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1437, 1049, 31, 1, CAST(0x0000ADDD014E6635 AS DateTime), CAST(0x0000ADDD014E6635 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1438, 1049, 6, 1, CAST(0x0000ADDD014E6635 AS DateTime), CAST(0x0000ADDD014E6635 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1439, 1049, 4, 1, CAST(0x0000ADDD014E6635 AS DateTime), CAST(0x0000ADDD014E6635 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1441, 1076, 33, 1, CAST(0x0000ADDD0151A3AB AS DateTime), CAST(0x0000ADDD0151A3AB AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1442, 1076, 32, 1, CAST(0x0000ADDD0151A3AC AS DateTime), CAST(0x0000ADDD0151A3AC AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1443, 1076, 31, 1, CAST(0x0000ADDD0151A3AD AS DateTime), CAST(0x0000ADDD0151A3AD AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1444, 1076, 29, 1, CAST(0x0000ADDD0151A3AD AS DateTime), CAST(0x0000ADDD0151A3AD AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1445, 1076, 5, 1, CAST(0x0000ADDD0151A3AD AS DateTime), CAST(0x0000ADDD0151A3AD AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1446, 1076, 4, 1, CAST(0x0000ADDD0151A3AE AS DateTime), CAST(0x0000ADDD0151A3AE AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1448, 1090, 20, 1, CAST(0x0000ADDD01521BF0 AS DateTime), CAST(0x0000ADDD01521BF0 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1449, 1090, 9, 1, CAST(0x0000ADDD01521BF1 AS DateTime), CAST(0x0000ADDD01521BF1 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1450, 1090, 5, 1, CAST(0x0000ADDD01521BF1 AS DateTime), CAST(0x0000ADDD01521BF1 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1452, 1074, 8, 1, CAST(0x0000ADDD0153825D AS DateTime), CAST(0x0000ADDD0153825D AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1453, 1074, 5, 1, CAST(0x0000ADDD0153825D AS DateTime), CAST(0x0000ADDD0153825D AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1462, 1067, 38, 1, CAST(0x0000ADDD0155EB79 AS DateTime), CAST(0x0000ADDD0155EB79 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1463, 1067, 34, 1, CAST(0x0000ADDD0155EB79 AS DateTime), CAST(0x0000ADDD0155EB79 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1464, 1067, 32, 1, CAST(0x0000ADDD0155EB79 AS DateTime), CAST(0x0000ADDD0155EB79 AS DateTime))
GO
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1465, 1067, 14, 1, CAST(0x0000ADDD0155EB79 AS DateTime), CAST(0x0000ADDD0155EB79 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1466, 1067, 8, 1, CAST(0x0000ADDD0155EB79 AS DateTime), CAST(0x0000ADDD0155EB79 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1481, 19, 39, 1, CAST(0x0000ADDE014D1C04 AS DateTime), CAST(0x0000ADDE014D1C04 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1482, 19, 13, 1, CAST(0x0000ADDE014D1C04 AS DateTime), CAST(0x0000ADDE014D1C04 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1483, 19, 7, 1, CAST(0x0000ADDE014D1C04 AS DateTime), CAST(0x0000ADDE014D1C04 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1484, 1080, 33, 1, CAST(0x0000ADDE014DE774 AS DateTime), CAST(0x0000ADDE014DE774 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1485, 1080, 32, 1, CAST(0x0000ADDE014DE774 AS DateTime), CAST(0x0000ADDE014DE774 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1486, 1080, 31, 1, CAST(0x0000ADDE014DE774 AS DateTime), CAST(0x0000ADDE014DE774 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1487, 1080, 29, 1, CAST(0x0000ADDE014DE775 AS DateTime), CAST(0x0000ADDE014DE775 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1488, 1080, 6, 1, CAST(0x0000ADDE014DE775 AS DateTime), CAST(0x0000ADDE014DE775 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1489, 1080, 5, 1, CAST(0x0000ADDE014DE775 AS DateTime), CAST(0x0000ADDE014DE775 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1490, 1080, 4, 1, CAST(0x0000ADDE014DE775 AS DateTime), CAST(0x0000ADDE014DE775 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1492, 1063, 39, 1, CAST(0x0000ADDE0151E3CD AS DateTime), CAST(0x0000ADDE0151E3CD AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1493, 1063, 22, 1, CAST(0x0000ADDE0151E3CD AS DateTime), CAST(0x0000ADDE0151E3CD AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1494, 1063, 20, 1, CAST(0x0000ADDE0151E3CD AS DateTime), CAST(0x0000ADDE0151E3CD AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1495, 1063, 7, 1, CAST(0x0000ADDE0151E3CE AS DateTime), CAST(0x0000ADDE0151E3CE AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1496, 1060, 39, 1, CAST(0x0000ADDF007ED4BA AS DateTime), CAST(0x0000ADDF007ED4BA AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1497, 1060, 26, 1, CAST(0x0000ADDF007ED4BA AS DateTime), CAST(0x0000ADDF007ED4BA AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1499, 1094, 26, 1, CAST(0x0000ADDF00A2DF3E AS DateTime), CAST(0x0000ADDF00A2DF3E AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1500, 1094, 22, 1, CAST(0x0000ADDF00A2DF41 AS DateTime), CAST(0x0000ADDF00A2DF41 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1501, 1094, 21, 1, CAST(0x0000ADDF00A2DF44 AS DateTime), CAST(0x0000ADDF00A2DF44 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1502, 1094, 20, 1, CAST(0x0000ADDF00A2DF48 AS DateTime), CAST(0x0000ADDF00A2DF48 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1503, 1095, 39, 1, CAST(0x0000ADDF00A65C30 AS DateTime), CAST(0x0000ADDF00A65C30 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1504, 1095, 18, 1, CAST(0x0000ADDF00A65C34 AS DateTime), CAST(0x0000ADDF00A65C34 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1505, 1095, 14, 1, CAST(0x0000ADDF00A65C34 AS DateTime), CAST(0x0000ADDF00A65C34 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1506, 1095, 4, 1, CAST(0x0000ADDF00A65C35 AS DateTime), CAST(0x0000ADDF00A65C35 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1507, 1096, 39, 1, CAST(0x0000ADE00047B18F AS DateTime), CAST(0x0000ADE00047B18F AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1508, 1096, 38, 1, CAST(0x0000ADE00047B192 AS DateTime), CAST(0x0000ADE00047B192 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1509, 1097, 18, 1, CAST(0x0000ADE000485691 AS DateTime), CAST(0x0000ADE000485691 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1510, 1097, 17, 1, CAST(0x0000ADE000485693 AS DateTime), CAST(0x0000ADE000485693 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1511, 1097, 16, 1, CAST(0x0000ADE000485697 AS DateTime), CAST(0x0000ADE000485697 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1512, 1098, 31, 1, CAST(0x0000ADE00048D76E AS DateTime), CAST(0x0000ADE00048D76E AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1513, 1099, 29, 1, CAST(0x0000ADE000492C30 AS DateTime), CAST(0x0000ADE000492C30 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1514, 1099, 26, 1, CAST(0x0000ADE000492CA0 AS DateTime), CAST(0x0000ADE000492CA0 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1515, 1099, 22, 1, CAST(0x0000ADE000492CA5 AS DateTime), CAST(0x0000ADE000492CA5 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1516, 1100, 39, 1, CAST(0x0000ADE0013239AE AS DateTime), CAST(0x0000ADE0013239AE AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1517, 1100, 33, 1, CAST(0x0000ADE0013239B1 AS DateTime), CAST(0x0000ADE0013239B1 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1518, 1100, 27, 1, CAST(0x0000ADE0013239B4 AS DateTime), CAST(0x0000ADE0013239B4 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1519, 1101, 39, 1, CAST(0x0000ADE0013FC8FB AS DateTime), CAST(0x0000ADE0013FC8FB AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1520, 1101, 35, 1, CAST(0x0000ADE0013FC8FE AS DateTime), CAST(0x0000ADE0013FC8FE AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1521, 1101, 33, 1, CAST(0x0000ADE0013FC901 AS DateTime), CAST(0x0000ADE0013FC901 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1522, 1102, 38, 1, CAST(0x0000ADE00157D958 AS DateTime), CAST(0x0000ADE00157D958 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2507, 2096, 33, 1, CAST(0x0000ADE201549FB0 AS DateTime), CAST(0x0000ADE201549FB0 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2508, 2096, 32, 1, CAST(0x0000ADE201549FB3 AS DateTime), CAST(0x0000ADE201549FB3 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2509, 2096, 31, 1, CAST(0x0000ADE201549FB7 AS DateTime), CAST(0x0000ADE201549FB7 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2510, 2096, 29, 1, CAST(0x0000ADE201549FB9 AS DateTime), CAST(0x0000ADE201549FB9 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2511, 2096, 6, 1, CAST(0x0000ADE201549FBB AS DateTime), CAST(0x0000ADE201549FBB AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2512, 2096, 5, 1, CAST(0x0000ADE201549FBD AS DateTime), CAST(0x0000ADE201549FBD AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2513, 2096, 4, 1, CAST(0x0000ADE201549FC2 AS DateTime), CAST(0x0000ADE201549FC2 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2514, 2097, 33, 1, CAST(0x0000ADE20156A568 AS DateTime), CAST(0x0000ADE20156A568 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2515, 2097, 32, 1, CAST(0x0000ADE20156A569 AS DateTime), CAST(0x0000ADE20156A569 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2516, 2097, 31, 1, CAST(0x0000ADE20156A56A AS DateTime), CAST(0x0000ADE20156A56A AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2517, 2097, 29, 1, CAST(0x0000ADE20156A56B AS DateTime), CAST(0x0000ADE20156A56B AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2518, 2097, 4, 1, CAST(0x0000ADE20156A56C AS DateTime), CAST(0x0000ADE20156A56C AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2519, 2098, 37, 1, CAST(0x0000ADE2015C703D AS DateTime), CAST(0x0000ADE2015C703D AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2520, 2098, 33, 1, CAST(0x0000ADE2015C70B7 AS DateTime), CAST(0x0000ADE2015C70B7 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2521, 2098, 20, 1, CAST(0x0000ADE2015C70B8 AS DateTime), CAST(0x0000ADE2015C70B8 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2522, 2098, 18, 1, CAST(0x0000ADE2015C70B9 AS DateTime), CAST(0x0000ADE2015C70B9 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2523, 2098, 17, 1, CAST(0x0000ADE2015C70BA AS DateTime), CAST(0x0000ADE2015C70BA AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2524, 2098, 5, 1, CAST(0x0000ADE2015C70BB AS DateTime), CAST(0x0000ADE2015C70BB AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2526, 2099, 39, 1, CAST(0x0000ADE2015DFD79 AS DateTime), CAST(0x0000ADE2015DFD79 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2527, 2099, 32, 1, CAST(0x0000ADE2015DFD7A AS DateTime), CAST(0x0000ADE2015DFD7A AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2528, 2099, 21, 1, CAST(0x0000ADE2015DFD7B AS DateTime), CAST(0x0000ADE2015DFD7B AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2529, 2099, 18, 1, CAST(0x0000ADE2015DFD7C AS DateTime), CAST(0x0000ADE2015DFD7C AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2530, 2099, 14, 1, CAST(0x0000ADE2015DFD7D AS DateTime), CAST(0x0000ADE2015DFD7D AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2531, 2099, 4, 1, CAST(0x0000ADE2015DFD7E AS DateTime), CAST(0x0000ADE2015DFD7E AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2532, 2100, 32, 1, CAST(0x0000ADE201603CCC AS DateTime), CAST(0x0000ADE201603CCC AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2533, 2100, 21, 1, CAST(0x0000ADE201603CCE AS DateTime), CAST(0x0000ADE201603CCE AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2534, 2100, 5, 1, CAST(0x0000ADE201603CCE AS DateTime), CAST(0x0000ADE201603CCE AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2535, 2100, 4, 1, CAST(0x0000ADE201603CD0 AS DateTime), CAST(0x0000ADE201603CD0 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2539, 1068, 18, 1, CAST(0x0000ADE40177855A AS DateTime), CAST(0x0000ADE40177855A AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2540, 1068, 12, 1, CAST(0x0000ADE401778563 AS DateTime), CAST(0x0000ADE401778563 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2541, 1068, 7, 1, CAST(0x0000ADE40177856C AS DateTime), CAST(0x0000ADE40177856C AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2542, 1068, 4, 1, CAST(0x0000ADE401778575 AS DateTime), CAST(0x0000ADE401778575 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2544, 1045, 46, 1, CAST(0x0000ADED01618140 AS DateTime), CAST(0x0000ADED01618140 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2545, 1045, 39, 1, CAST(0x0000ADED01618141 AS DateTime), CAST(0x0000ADED01618141 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2546, 1045, 18, 1, CAST(0x0000ADED01618141 AS DateTime), CAST(0x0000ADED01618141 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2547, 1045, 14, 1, CAST(0x0000ADED01618142 AS DateTime), CAST(0x0000ADED01618142 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2548, 1045, 4, 1, CAST(0x0000ADED01618142 AS DateTime), CAST(0x0000ADED01618142 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (3543, 3101, 47, 1, CAST(0x0000ADEE00A627DB AS DateTime), CAST(0x0000ADEE00A627DB AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (3544, 3101, 46, 1, CAST(0x0000ADEE00A627DC AS DateTime), CAST(0x0000ADEE00A627DC AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (4545, 2101, 42, 1, CAST(0x0000ADEF00D79C38 AS DateTime), CAST(0x0000ADEF00D79C38 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (4546, 2101, 31, 1, CAST(0x0000ADEF00D79C39 AS DateTime), CAST(0x0000ADEF00D79C39 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (4547, 2101, 14, 1, CAST(0x0000ADEF00D79C3A AS DateTime), CAST(0x0000ADEF00D79C3A AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (4548, 2101, 6, 1, CAST(0x0000ADEF00D79C3A AS DateTime), CAST(0x0000ADEF00D79C3A AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (4549, 4101, 1043, 1, CAST(0x0000ADEF0110B937 AS DateTime), CAST(0x0000ADEF0110B937 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (4550, 4101, 1042, 1, CAST(0x0000ADEF0110B938 AS DateTime), CAST(0x0000ADEF0110B938 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (4551, 4102, 22, 1, CAST(0x0000ADF201082FC1 AS DateTime), CAST(0x0000ADF201082FC1 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (5551, 4103, 34, 1, CAST(0x0000ADF201184481 AS DateTime), CAST(0x0000ADF201184481 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (6551, 5103, 5, 1, CAST(0x0000ADF2011E1894 AS DateTime), CAST(0x0000ADF2011E1894 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (6552, 5103, 4, 1, CAST(0x0000ADF2011E1896 AS DateTime), CAST(0x0000ADF2011E1896 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (6553, 5104, 1043, 1, CAST(0x0000ADF201203E24 AS DateTime), CAST(0x0000ADF201203E24 AS DateTime))
SET IDENTITY_INSERT [dbo].[DB_TRUYEN_THELOAI] OFF
SET IDENTITY_INSERT [dbo].[DB_TRUYEN] ON 

INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (19, 7, N'Thám tử lừng danh Conan', N'Aoyama Gosho', N'<p>Th&aacute;m Tử Lừng Danh Conan được mua bản quyền v&agrave; được cập nhật ph&aacute;t s&oacute;ng mới nhất tr&ecirc;n ứng dụng giải tr&iacute; POPS. Đ&acirc;y l&agrave; bộ phim hoạt h&igrave;nh chuyển thể từ truyện tranh hấp dẫn nhất: Th&aacute;m Tử Lừng Danh Conan của t&aacute;c giả Aoyama Gosho. Phim Conan kể về thần đồng 17 tuổi Shinichi Kudo - c&ograve;n được biết đến với biệt danh &ldquo;Cứu tinh của Sở Cảnh s&aacute;t Nhật Bản&rdquo; - người thường xuy&ecirc;n gi&uacute;p lực lượng cảnh s&aacute;t giải quyết c&aacute;c vụ &aacute;n phức tạp.</p>
', 1, N'7885Nhan_vat_Tham_tu_lung_danh_Conan.jpg', N'100000', CAST(0x0000ADDC00A61150 AS DateTime), CAST(0x0000ADDC00A73FFF AS DateTime), N'Tham-tu-lung-danh-conan-7885', 84)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (21, 2, N'Thám tử đã chết', N'Nigojuu', N'&lt;p&gt;Kimihiko Kimitduka, một thanh ni&amp;ecirc;n đ&amp;atilde; trở th&amp;agrave;nh trợ thủ của một th&amp;aacute;m tử được gọi l&amp;agrave; Siesta trong một vụ tấn c&amp;ocirc;ng m&amp;aacute;y bay tr&amp;ecirc;n kh&amp;ocirc;ng v&amp;agrave;o bốn năm trước. Kimihiko v&amp;agrave; Siesta đ&am', 1, N'2484tantei.jpg', N'1500000', CAST(0x0000ADDC00AB31A3 AS DateTime), CAST(0x0000ADDC00AD17E0 AS DateTime), N'Tham-tu-da-chet-2484', 119)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (24, 7, N'TRỞ THÀNH KẺ VÔ LẠI CỦA NHÀ BÁ TƯỚC', N'Yoo Ryeo Han', N'&lt;p&gt;Khi mở mắt ra, l&amp;agrave; thế giới trong 1 cuốn tiểu thuyết&lt;/p&gt;

&lt;p&gt;&amp;lsquo;Sự ra đời của anh h&amp;ugrave;ng&amp;rsquo;&lt;/p&gt;

&lt;p&gt;V&amp;agrave; lại c&amp;ograve;n l&amp;agrave; trong cơ thể của t&amp;ecirc;n v&amp;ocirc; lại nổi tiếng của gia đ&amp;igrave;nh', 1, N'1439iw3cgs.jpg', N'0', CAST(0x0000ADDC01742860 AS DateTime), CAST(0x0000ADDC018819D4 AS DateTime), N'TRO-THANH-KE-VO-LAI-CUA-NHA-BA-TUOC-1439', 11)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (28, 2, N'Cô em gái bướng bỉnh', N'Khương Duy', N'&lt;p&gt;C&amp;ocirc; em g&amp;aacute;i cứng đầu bướng bỉnh của t&amp;ocirc;i&lt;/p&gt;
', 1, N'4156coemgaibuongbinh.jpg', N'1000000', CAST(0x0000ADDD0085A2FB AS DateTime), CAST(0x0000ADDD0085A2FB AS DateTime), N'Co-em-gai-buong-binh-4156', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (29, 2, N'Bắt đầu lại ở thế giới khác từ con số 0', N'Tappei Nagatsuki', N'&lt;p&gt;Trong phim Subaru Natsuki l&amp;agrave; một học sinh Trung học b&amp;igrave;nh thường, cậu bị triệu hồi đến một thế giới kh&amp;aacute;c v&amp;agrave; được cứu bởi một c&amp;ocirc; g&amp;aacute;i xinh đẹp.&amp;nbsp;&lt;/p&gt;
', 1, N'5982rezero_kara_hajimeru_isekai_seikatsu_memory_snow_anime_movie_dvd_1563252493_3a7bf666b_progressive.jpg', N'30000', CAST(0x0000ADDD0087235A AS DateTime), CAST(0x0000ADDD0087235A AS DateTime), N'Bat-dau-lai-o-the-gioi-khac-tu-con-so-0-4138', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1029, 7, N'Game thủ trở lại', N'Đang cập nhật', N'<p>V&agrave;o thời kỳ đầu của game thực tế ảo đ&atilde; xuất hiện một nh&acirc;n vật bất bại. Tuy nhi&ecirc;n, anh ta đột nhi&ecirc;n biến mất m&agrave; kh&ocirc;ng ai r&otilde; l&yacute; do. Giờ đ&acirc;y, anh ta đ&atilde; quay lại sau một thời gian vắng b&oacute;ng.</p>
', 1, N'2767gamer.jpg', N'0', CAST(0x0000ADDD008FD2FC AS DateTime), CAST(0x0000ADDD008FD2FC AS DateTime), N'Game-thu-tro-lai-2767', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1042, 2, N'7 viên ngọc rồng', N'khang', N'&lt;p&gt;&lt;strong&gt;Bảy vi&amp;ecirc;n ngọc rồng&amp;nbsp;&lt;/strong&gt;kh&amp;ocirc;ng chỉ d&amp;agrave;nh cho trẻ em, ngay cả ở độ tuổi đ&amp;atilde; trưởng th&amp;agrave;nh.&lt;/p&gt;

&lt;p&gt;Kh&amp;ocirc;ng &amp;iacute;t người trong ch&amp;uacute;ng ta vẫn c&amp;oacute; thể kể t&amp;ecir', 1, N'48847vienngocrongjpg.jpg', N'200000', CAST(0x0000ADDD00A8AC32 AS DateTime), CAST(0x0000ADDD00A8AC32 AS DateTime), N'7-vien-ngoc-rong-4884', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1045, 7, N'Bạn gái thuê', N'Miyajima Reiji', N'<p>...Qu&eacute;o qu&egrave;o, biết m&ocirc; tả thế n&agrave;o đ&acirc;y? Một thằng Zin t&ecirc;n l&agrave; Kazuya 19 năm mới c&oacute; bồ kh&ocirc;ng bao l&acirc;u th&igrave; bị đ&aacute;, thế l&agrave; cậu ta phải sử dụng dịch vụ Hẹn h&ograve; Thu&ecirc;, cứ trả xiền l&agrave; ng&agrave;y đ&oacute; bạn sẽ c&oacute; bạn g&aacute;i ngay! Cậu ta đ&atilde; thu&ecirc; Mizuhara l&agrave;m bạn g&aacute;i m&igrave;nh, c&ocirc; n&agrave;ng th&igrave; cứ c&ocirc;ng việc (m&eacute;o c&oacute; y&ecirc;u thương g&igrave; đ&acirc;u) m&agrave; thả th&iacute;nh, c&ograve;n ch&agrave;ng ta th&igrave; đớp th&iacute;nh v&ocirc; tội vạ, cho đến khi&hellip; Đến khi Kazuya bớt sống ảo, cậu ta ngưng đớp th&iacute;nh v&agrave; tự sẽ kiếm bạn g&aacute;i thật cho m&igrave;nh th&igrave; mới hớ ra Mizuhara học c&ugrave;ng trường với m&igrave;nh, c&acirc;u chuyện t&igrave;nh dở kh&oacute;c dở cười n&agrave;y sẽ ra sao đ&acirc;y? C&aacute;c bạn đ&oacute;n xem nh&eacute;!</p>
', 0, N'7427Bạn gái thuê.jpg', N'20000', CAST(0x0000ADDD00A9CB8A AS DateTime), CAST(0x0000ADED01644780 AS DateTime), N'Ban-gai-thue-7427', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1047, 7, N'Cô gái văn chương', N'Duy Anh', N'&lt;p&gt;...&lt;/p&gt;
', 1, N'7932Co_gai_van_chuong.jpeg', N'100000', CAST(0x0000ADDD00AA3FB5 AS DateTime), CAST(0x0000ADDD00AA3FB5 AS DateTime), N'Co-gai-van-chuong-7932', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1048, 7, N'Cô hầu gái rồng', N'khang', N'&lt;p&gt;...&lt;/p&gt;
', 1, N'2772Cô hầu gái rồng.jpg', N'100000', CAST(0x0000ADDD00AA864A AS DateTime), CAST(0x0000ADDD00AA864A AS DateTime), N'Co-hau-gai-rong-2772', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1049, 7, N'Công cuộc tái thiết lập vương quốc của anh hùng chủ nghĩa hiện tượng', N'Watanabe Takashi', N'&lt;p&gt;&amp;quot;&amp;Uacute;m ba la x&amp;igrave; b&amp;ugrave;a, người anh h&amp;ugrave;ng!&amp;quot;. Với c&amp;acirc;u thoại x&amp;agrave;m x&amp;iacute; đ&amp;oacute;, Kazuya Souma đ&amp;atilde; thấy m&amp;igrave;nh được triệu hồi tới một thế giới mới v&amp;agrave; cuộc phi&amp;ecirc;u lưu củ', 1, N'7076Công cuộc tái thiết lập vương quốc.png', N'200000', CAST(0x0000ADDD00AAC613 AS DateTime), CAST(0x0000ADE4016E7580 AS DateTime), N'Cong-cuoc-tai-thiet-lap-vuong-quoc-7076', 1)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1050, 7, N'Cuộc chiến chén thánh', N'duy võ', N'&lt;p&gt;...&lt;/p&gt;
', 1, N'7332Cuộc chiến chén thánh.jpg', N'300000', CAST(0x0000ADDD00AAEF41 AS DateTime), CAST(0x0000ADDD00AAEF41 AS DateTime), N'Cuoc-chien-chen-thanh-7332', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1051, 7, N'Cuộc hẹn sống còn', N'Kiên', N'&lt;p&gt;...&lt;/p&gt;
', 1, N'3151Cuộc hẹn sống còn.jpg', N'100000', CAST(0x0000ADDD00AB25B5 AS DateTime), CAST(0x0000ADDD00AB25B5 AS DateTime), N'Cuoc-hen-song-con-3151', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1052, 7, N'Chào mừng tới lớp học biết tuốt', N'Kinugasa Syohgo', N'<p>Thanh ni&ecirc;n hack game nhưng kh&ocirc;ng th&iacute;ch thể hiện nhưng lại h&uacute;t g&aacute;i do&nbsp;nổi bật v&igrave; cố&nbsp;tỏ ra kh&ocirc;ng nổi bật.</p>
', 1, N'2241chao-mung-toi-tiet-hoc-biet-tuot-19727.jpg', N'120000', CAST(0x0000ADDD00AB594F AS DateTime), CAST(0x0000ADDD00AB594F AS DateTime), N'Chao-mung-toi-tiet-hoc-2241', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1054, 7, N'Diệt slime 300 năm tôi level max lúc nào chẳng hay', N'Kisetsu Morita', N'&lt;p&gt;Sau khi sống một cuộc đời nh&amp;agrave;m ch&amp;aacute;n với tư c&amp;aacute;ch l&amp;agrave; nh&amp;acirc;n vi&amp;ecirc;n văn ph&amp;ograve;ng. L&amp;agrave; một kẻ cuồng việc, kh&amp;ocirc;ng y&amp;ecirc;u đương, kh&amp;ocirc;ng bạn b&amp;egrave;, kh&amp;ocirc;ng niềm vui v&amp;agrave; ', 1, N'4259Diệt slime 300 năm tôi level max lúc nào chẳng hay.jpg', N'300000', CAST(0x0000ADDD00ABB157 AS DateTime), CAST(0x0000ADDD00ABB157 AS DateTime), N'Diet-slime-4259', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1057, 7, N'Đừng chọc anh nữa mà,Nagatoro', N'Nanashi', N'<p>Học sinh trung học Hayase Nagatoro rất th&iacute;ch d&agrave;nh thời gian rảnh để l&agrave;m một việc, đ&oacute; l&agrave; bắt nạt Senpai của c&ocirc; ấy! Sau khi Nagatoro v&agrave; những người bạn của c&ocirc; t&igrave;nh cờ nh&igrave;n thấy những bức vẽ của một họa sĩ đầy tham vọng, họ cảm thấy th&iacute;ch th&uacute; khi bắt nạt Senpai nh&uacute;t nh&aacute;t một c&aacute;ch kh&ocirc;ng thương tiếc. Nagatoro quyết t&acirc;m tiếp tục tr&ograve; chơi t&agrave;n &aacute;c của m&igrave;nh v&agrave; đến thăm anh h&agrave;ng ng&agrave;y để c&ocirc; c&oacute; thể buộc Senpai l&agrave;m bất cứ điều g&igrave; c&oacute; lợi cho c&ocirc; v&agrave;o thời điểm đ&oacute;, đặc biệt nếu điều đ&oacute; khiến anh kh&ocirc;ng thoải m&aacute;i. Hơi bị k&iacute;ch th&iacute;ch v&agrave; c&oacute; phần sợ h&atilde;i Nagatoro, Senpai li&ecirc;n tục bị cuốn v&agrave;o những tr&ograve; hề của c&ocirc; khi sở th&iacute;ch, sở th&iacute;ch, ngoại h&igrave;nh v&agrave; thậm ch&iacute; cả t&iacute;nh c&aacute;ch của anh đều bị lợi dụng để chống lại anh khi c&ocirc; giải tr&iacute; với chi ph&iacute; của anh. Thời gian tr&ocirc;i qua, Senpai nhận ra rằng anh ấy kh&ocirc;ng th&iacute;ch sự hiện diện của Nagatoro.</p>
', 1, N'9664Đừng chọc anh nữa mà.jpg', N'100000', CAST(0x0000ADDD00AC4467 AS DateTime), CAST(0x0000ADDD00AC4467 AS DateTime), N'Dung-choc-anh-nua-ma-9664', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1058, 7, N'Hàng xóm của tôi là Toro', N'Duy Anh', N'&lt;p&gt;...&lt;/p&gt;
', 1, N'6104Hàng xóm của tôi là Toro.jpg', N'100000', CAST(0x0000ADDD00AC772B AS DateTime), CAST(0x0000ADDD00AC772B AS DateTime), N'Hang-xom-cua-toi-la-Toro-6104', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1060, 7, N'Kancolle', N'West Ground', N'<p>Lấy bối cảnh thế giới nơi nh&acirc;n loại mất quyền kiểm so&aacute;t đại dương v&agrave;o tay hạm đội biển s&acirc;u, hi vọng duy nhất chống lại hiểm họa n&agrave;y l&agrave; những Kanmusu, một nh&oacute;m những c&ocirc; g&aacute;i mang trong m&igrave;nh linh hồn chiến hạm Nhật Bản. C&acirc;u truyện xoay quanh Fubuki, một b&eacute; khu trục tới Quận Cảng để c&ugrave;ng tập luyện với Kanmusu kh&aacute;c. H&atilde;y c&ugrave;ng kh&aacute;m ph&aacute; c&acirc;u truyện của họ!</p>
', 1, N'3379KanColle_anime_PI.jpg', N'100000', CAST(0x0000ADDD00ACDECF AS DateTime), CAST(0x0000ADDD00ACDECF AS DateTime), N'Kancolle-3379', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1061, 7, N'Kiếm sĩ đen', N'duy võ', N'&lt;p&gt;...&lt;/p&gt;
', 1, N'8412Kiếm sĩ đen.jpg', N'100000', CAST(0x0000ADDD00AD0AD1 AS DateTime), CAST(0x0000ADDD00AD0AD1 AS DateTime), N'Kiem-si-den-8412', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1063, 7, N'Kuruko tuyển thủ vô hình', N'Fujimaki Tadatoshi', N'<p>Đội b&oacute;ng rổ trường Sơ Trung Teikou l&agrave; một đội b&oacute;ng huyền thoại với th&agrave;nh t&iacute;ch đ&aacute;nh bại c&aacute;c đối thủ m&agrave; họ chạm tr&aacute;n. C&aacute;c tuyển thủ của đội được biết đến với c&aacute;i t&ecirc;n &ldquo;Generation of Miracles&rdquo; (tạm dịch, thế hệ của những ph&eacute;p lạ). Sau khi tốt nghiệp, năm ng&ocirc;i sao n&agrave;y chuyển đến c&aacute;c trường Cao Trung kh&aacute;c nhau nổi tiếng về b&oacute;ng rổ. Tuy nhi&ecirc;n, c&oacute; một sự thật được &iacute;t người biết đến về cầu thủ số 6 &ndash; the phantom (tạm dịch: b&oacute;ng ma) - Kuroko Tetsuya. Cầu thủ n&agrave;y chuyển đến một ng&ocirc;i trường với đội b&oacute;ng rổ vừa mới được th&agrave;nh lập năm ngo&aacute;i. Kuroko Tetsuya v&agrave; Kagami Taiga &ndash; một cầu thủ t&agrave;i năng chuyển về từ Hoa Kỳ, với mục ti&ecirc;u l&agrave; c&ugrave;ng trường Seirin hướng đến chức v&ocirc; địch Nhật Bản, đồng thời đ&aacute;nh bại từng người một trong &ldquo;Generation of Miracles&rdquo; &ndash; đồng đội cũ của Kuroko. Trận chiến của &aacute;nh s&aacute;ng (Kagami) v&agrave; chiếc b&oacute;ng (Kuroko) bắt đầu!</p>
', 1, N'3466Kuroko tuyển thủ vô hình.jpg', N'250000', CAST(0x0000ADDD00AD79BB AS DateTime), CAST(0x0000ADDD00AD79BB AS DateTime), N'Kuruko-tuyen-thu-vo-hinh-5317', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1064, 7, N'Lũ ngốc bài kiểm tra và triệu hồi linh thú', N'Duy Anh', N'&lt;p&gt;...&lt;/p&gt;
', 1, N'488Lũ ngốc bài kiểm tra và triệu hồi linh thú.jpg', N'100000', CAST(0x0000ADDD00ADDD4C AS DateTime), CAST(0x0000ADDD00ADDD4C AS DateTime), N'Lu-ngoc-bai-kiem-tra-va-trieu-hoi-linh-thu-488', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1065, 7, N'Ma pháp thiếu nữ Madoka', N'khang', N'<p>...</p>
', 1, N'7528Ma pháp thiếu nữ Madoka.jpg', N'120000', CAST(0x0000ADDD00AE12B3 AS DateTime), CAST(0x0000ADDD00AE12B3 AS DateTime), N'Ma-phap-thieu-nua-Madoka-7528', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1066, 7, N'Ma vương đi làm', N'khang', N'&lt;p&gt;....&lt;/p&gt;
', 1, N'446Ma vương đi làm.jpg', N'120000', CAST(0x0000ADDD00AE4353 AS DateTime), CAST(0x0000ADDD00AE4353 AS DateTime), N'Ma-vuong-di-lam-446', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1067, 7, N'Cô dâu pháp sư', N'Kore Yamazaki', N'<p>Bộ n&agrave;y&nbsp;n&oacute;i về&nbsp;Chise Hatori, một c&ocirc; g&aacute;i mới 15 tuổi đ&atilde; mất gia đ&igrave;nh v&agrave; phải sống lang thang. C&ocirc; đ&atilde; bị bắt v&agrave; b&aacute;n trong một phi&ecirc;n đấu gi&aacute; n&ocirc; lệ. Với gi&aacute; 5 triệu Bảng, c&ocirc; đ&atilde; bị', 1, N'1116manga_co_dau_phap_su1.jpg', N'250000', CAST(0x0000ADDD00AE6B76 AS DateTime), CAST(0x0000ADDD00AE6B76 AS DateTime), N'Manga-co-dau-phap-su-1116', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1069, 7, N'Nguyệt đạo dị giới', N'Azumi Kei ', N'<p>Misumi Makoto vốn chỉ l&agrave; một học sinh trung học b&igrave;nh thường, giỏi cung đạo v&agrave; đam m&ecirc; phim lịch sử. Nhưng rồi một ng&agrave;y kia khi cậu tỉnh lại, th&igrave; bỗng ph&aacute;t hiện ra m&igrave;nh đang ở một nơi kỳ qu&aacute;i kh&ocirc;ng để đ&acirc;u cho hết! Một thế giới xa lạ, một nơi thậm ch&iacute; c&ograve;n kh&ocirc;ng thuộc về Tr&aacute;i Đất?!</p>
', 1, N'8521Nguyệt đạo dị giới.jpg', N'100000', CAST(0x0000ADDD00AECED0 AS DateTime), CAST(0x0000ADE40172222B AS DateTime), N'Nguyet-dao-di-gioi-8521', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1070, 7, N'Oan gia chung nhà', N'Đang cập nhật', N'<p>Đang cập nhật!!!</p>
', 1, N'8777oan-gia-chung-nha_1624985484.jpg', N'120000', CAST(0x0000ADDD00AEF966 AS DateTime), CAST(0x0000ADDD00AEF966 AS DateTime), N'Oan-gia-chung-nha-8777', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1071, 7, N'Ông thầy vi diệu', N'Hitsuji Tarō và minh họa bởi Mishima Kurone. Fujimi Shobo ', N'<p>Sisti bước v&agrave;o học viện ma ph&aacute;p nhằm trau dồi kĩ năng ma thuật của của bản th&acirc;n c&ugrave;ng với hi vọng giải đ&aacute;p b&iacute; ẩn của L&acirc;u đ&agrave;i tr&ecirc;n m&acirc;y. Sau khi giảng vi&ecirc;n y&ecirc;u th&iacute;ch của c&ocirc; rời bỏ c&ocirc;ng việc th&igrave; thay thế v&agrave;o vị tr&iacute; đ&oacute;, Glenn h&oacute;a ra lại l&agrave; t&ecirc;n lười biếng, chậm chạp, xem ra l&agrave; một t&ecirc;n khốn giảng vi&ecirc;n v&ocirc; năng. L&agrave;m sao m&agrave; Glenn lại l&agrave; người được ph&aacute;p sư mạnh nhất học viện đ&iacute;ch th&acirc;n đề cử cơ chứ?</p>
', 1, N'7649ong-Thay-Vi-Dieu-Akashic-records-of-bastard-magic-instructor.jpg', N'100000', CAST(0x0000ADDD00AF290B AS DateTime), CAST(0x0000ADE401748EAA AS DateTime), N'Ong-thay-vi-dieu-7649', 7)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1073, 7, N'Sekai Saikou no Ansatsusha, Isekai Kizoku ni Tensei suru', N'Tsukiyo Rui', N'<p>&ldquo;T&ocirc;i sẽ sống cho ch&iacute;nh m&igrave;nh!&rdquo; S&aacute;t thủ vĩ đại nhất tr&ecirc;n tr&aacute;i đất chỉ biết sống như một c&ocirc;ng cụ cho chủ nh&acirc;n&ndash; cho đến khi họ quyết định giết &ocirc;ng. Được t&aacute;i sinh bởi &acirc;n sủng của một nữ thần v&agrave;o thế giới của kiếm v&agrave; ph&eacute;p thuật, lần n&agrave;y &ocirc;ng ta c&oacute; cơ hội để l&agrave;m những điều kh&aacute;c đi, nhưng c&oacute; một y&ecirc;u cầu&hellip; &Ocirc;ng ta phải loại bỏ một anh h&ugrave;ng si&ecirc;u mạnh, người nếu kh&ocirc;ng bị ngăn chặn th&igrave; sẽ khiến thế giới diệt vong. Anh h&ugrave;ng được biết đến với c&aacute;i t&ecirc;n Lugh Tuatha D&eacute;, người khiến cả s&aacute;t thủ bậc thầy cũng phải bất lực, nhất l&agrave; v&igrave; những c&ocirc; g&aacute;i xinh đẹp mạnh mẽ lu&ocirc;n v&acirc;y quanh anh ta. D&ugrave; l&agrave; một s&aacute;t thủ bậc thầy, nhưng &ocirc;ng ta sẽ xử tr&iacute; thế n&agrave;o tại thế giới chỉ c&oacute; kiếm v&agrave; ph&eacute;p thuật?</p>
', 1, N'728Sát Thủ Số Một Chuyển Sinh Thành Quý Tộc Tại Dị Giới.jpg', N'950000', CAST(0x0000ADDD00AF9AED AS DateTime), CAST(0x0000ADED015E1B98 AS DateTime), N'Sat-thu-so1-chuyen-sinh-thanh-quy-toc-tai-di-gioi-728', 80)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1074, 7, N'Goodbye Otherworld, See You Tomorrow', N'Kamamidori/Nimoshi', N'<p>The world he woke up in is long dead, dusted in ashen powder, and yet Keisuke still sees splashes of color as he travels through it. For the longest time, he&rsquo;s wandered alone across the deserted landscape, clinging to the hope that something&mdash;or someone&mdash;might be out there in the emptiness. When he finally stumbles across that someone, even more threads of color start to seep into the ashen world around them. This time, when Keisuke sets off down the road, someone sits beside him in the passenger seat. The first acquaintance he&rsquo;s ever made here, his first companion in this barren world. They&rsquo;re both traveling in search of something, and after searching alone for so long, maybe they&rsquo;ll have better luck working together? Their only lead is a witch who can answer any question&mdash;for a price. What will the two ask her, and what will she be able to tell them? More importantly, what will it cost them, and will they be willing to pay the price?</p>
', 1, N'3831Tạm thời thế giới khác, hẹn gặp bạn vào ngày mai.jpg', N'2000000', CAST(0x0000ADDD00AFD14D AS DateTime), CAST(0x0000ADDD015412C7 AS DateTime), N'Tam-thoi-the-gioi-khac,hen-gap-ban-vao-ngay-mai-3831', 7)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1076, 7, N'Kumo Desu ga, Nani ka?', N'Baba Okina', N'<p>Một thế giới m&agrave; Anh h&ugrave;ng v&agrave; Ma vương li&ecirc;n tục đối đầu nhau. Sức mạnh ma thuật khổng lồ của trận chiến g&acirc;y ra đ&atilde; xuy&ecirc;n qua một thế giới kh&aacute;c v&agrave; l&agrave;m nổ chết tất cả học sinh trong một lớp học. Những học sinh đ&oacute; được hồi sinh l', 1, N'7345Tôi là nhện đấy thì sao nào.jpg', N'1500000', CAST(0x0000ADDD00B03B2E AS DateTime), CAST(0x0000ADE40173411B AS DateTime), N'Toi-la-nhen-day-thi-sao-nao-7345', 7)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1079, 7, N'Thanh gươm diệt quỷ', N'Gotouge Koyoharu', N'&lt;p&gt;Demon Slayer: Thanh Gươm Diệt Quỷ c&amp;ograve;n c&amp;oacute; t&amp;ecirc;n gọi kh&amp;aacute;c l&amp;agrave; Lưỡi Gươm Diệt Quỷ hay Yaiba Kimetsu. Phim Thanh Gươm Diệt Quỷ: Kimetsu No Yaiba lấy bối cảnh v&amp;agrave;o thời Taisho tại Nhật Bản, c&amp;oacute; một gia đ&amp;igrave;nh hai anh', 1, N'637Thanh Gươm Diệt Quỷ.jpg', N'100000', CAST(0x0000ADDD00B0C32B AS DateTime), CAST(0x0000ADDD00B0C32B AS DateTime), N'Thanh-guom-diet-quy-2662', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1080, 7, N'Thất nghiệp chuyển sinh tôi hứa sẽ nghiêm túc', N'Rifujin na Magonote - Fujikawa Yuka', N'<p>Đại kh&aacute;i l&agrave; một thanh ni&ecirc;n neet kh&ocirc;ng trẻ mấy sau c&oacute; cơ hội được l&agrave;m lại cuộc đời v&agrave; trong lốt một thằng nh&oacute;c, anh ấy bắt đầu x&acirc;y dựng.... harem cho tương lai trong th&acirc;n x&aacute;c&nbsp;thằng nh&oacute;c đ&oacute;</p>
', 1, N'2931Thất nghiệp chuyển sinh tôi hứa sẽ nghiêm túc.jpg', N'120000', CAST(0x0000ADDD00B105BD AS DateTime), CAST(0x0000ADE4017004E3 AS DateTime), N'That-nghiep-chuyen-sinh-toi-hua-se-nghiem-tuc-2931', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1082, 7, N'Shin cậu bé bút chì', N'Hongo Mitsuru, Hara Keiichi, Muto Yuji ', N'<p>L&agrave; c&acirc;u chuyện của cậu b&eacute; năm tuổi Shinosuke trong một gia đ&igrave;nh trung lưu Nhật Bản th&ocirc;ng thường. Gia đ&igrave;nh gồm c&oacute; ba, mẹ, Shin, em g&aacute;i v&agrave; một ch&uacute; ch&oacute;. C&aacute;ch vẽ v&agrave; kể c&acirc;u chuyện của Shin &ndash; Cậu b&eacute; b&uacute;t ch&igrave; vừa gần gũi, vui vẻ lại mang lại c&aacute;ch nh&igrave;n con trẻ v&ocirc; c&ugrave;ng độc đ&aacute;o.</p>
', 1, N'5377truyen-tranh-shin.jpg', N'10000', CAST(0x0000ADDD00B1761E AS DateTime), CAST(0x0000ADDD00B1761E AS DateTime), N'Truyen-tranh-Shin-5377', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1083, 7, N'Vì con gái tôi có thể đánh bại cả ma vương', N'Chirolu', N'&lt;p&gt;C&amp;acirc;u chuyện về anh ch&amp;agrave;ng Dale trẻ tuổi, đẹp trai l&amp;agrave; một mạo hiểm giả t&amp;agrave;i giỏi với kỹ năng chiến đấu mạnh mẽ. Dale rất nổi tiếng v&amp;agrave; . Một ng&amp;agrave;y nọ, khi đang đ&amp;aacute;nh qu&amp;aacute;i, Dale t&amp;igrave;nh cờ cứu được c&amp;', 1, N'5502Vì_con_gái,_tôi_có_thể_đánh_bại_cả_Ma_vương.jpg', N'250000', CAST(0x0000ADDD00B1A501 AS DateTime), CAST(0x0000ADDD00B1A501 AS DateTime), N'Vi-con-gai-toi-co-the-danh-bai-ca-ma-vuong-5502', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1084, 7, N'Tonikaku Kawaii', N'Ikehata Hiroshi', N'&lt;p&gt;Lớn l&amp;ecirc;n bị chế giễu v&amp;igrave; c&amp;aacute;i t&amp;ecirc;n kỳ lạ của m&amp;igrave;nh, Nasa Yuzaki cố gắng để được mọi người nhớ đến v&amp;igrave; điều g&amp;igrave; đ&amp;oacute; nhiều hơn. May mắn thay, c&amp;oacute; vẻ như anh ấy đang đi đ&amp;uacute;ng hướng, đứng nhất tron', 1, N'5965Vợ tôi rất dễ thương.jpg', N'125000', CAST(0x0000ADDD00B1CCF9 AS DateTime), CAST(0x0000ADE00150BF02 AS DateTime), N'Vo-toi-rat-de-thuong-5965', 2)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1088, 7, N'Your name?', N'Shinkai Makoto', N'<p>Miyamizu Mitsuha,&nbsp;một học sinh trung học sinh sống tại thị trấn hư cấu Itomori,c&ocirc;&nbsp;đ&atilde; ch&aacute;n ngấy cuộc sống dưới qu&ecirc; của m&igrave;nh v&agrave; c&ocirc; muốn trở th&agrave;nh một ch&agrave;ng trai đẹp sống ở Tokyo v&agrave;o kiếp sau.&nbsp;Ngay sau đ&oacute;,Tachibana Taki,&nbsp;một cậu học sinh trung học đang sinh sống ở Tokyo nhận ra rằng m&igrave;nh l&agrave; Mitsuha khi cậu thức dậy,&nbsp;c&ograve;n Mistuha v&igrave; một l&yacute; do n&agrave;o đ&oacute; l&agrave; Taki.Hai người sau đ&oacute; đ&atilde; ph&aacute;t hiện ra rằng đ&atilde; ho&aacute;n đổi cơ thể cho nhau.&nbsp;Họ bắt đầu li&ecirc;n lạc với nhau bằng c&aacute;ch viết ra giấy hay viết thư tr&ecirc;n điện thoại cho nhau....</p>
', 1, N'6979Your_Name_novel.jpg', N'100000', CAST(0x0000ADDD0148530C AS DateTime), CAST(0x0000ADEF0105F288 AS DateTime), N'Your-name--6979', 19)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (2096, 1026, N'Đến với thế giới khác với chiếc Smartphone', N'Fuyuhara Patora', N'<p>Nội dung kể về một anh main giống như bao anh main kh&aacute;c khi đang tr&ecirc;n đường về nh&agrave; lại bị&hellip; s&eacute;t đ&aacute;nh lăn đ&ugrave;ng ra chết :v.Điều đ&aacute;ng n&oacute;i ở đ&acirc;y l&agrave; sau khi chết anh main lại bị triệu tập đến trước mặt Thượng đế với l&yacute; do: Ổng v&ocirc; t&igrave;nh&hellip; hại chết anh main m&agrave; kh&ocirc;ng hay biết. V&agrave; để đền b&ugrave; th&igrave; ảnh đ&atilde; được hồi sinh sang một thế giới song song kh&aacute;c với 1 c&aacute;i S&igrave; m&aacute;t ph&ocirc;n (Smartphone :v).</p>
', 1, N'5010isekaismartphone.jpg', N'2750000', CAST(0x0000ADE201549FA7 AS DateTime), CAST(0x0000ADE40176CF3F AS DateTime), N'DenvoithegioikhacvoichiecSmartphone-5010', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (2097, 1026, N'Cuộc Sống Chậm Rãi Của Dược Sĩ Gian Lận', N'Kennoji', N'<p>Đ&acirc;y l&agrave; một c&acirc;u chuyện kể về một người b&igrave;nh thường, l&agrave;m việc chăm chỉ, tận hưởng một cuộc sống thư gi&atilde;n ở thị trấn th&ocirc;n qu&ecirc; nơi thế giới kh&aacute;c. Thất vọng với c&ocirc;ng việc v&agrave; cuộc sống bế tắc của m&igrave;nh, Reiji chợt nhận ra một ng&agrave;y n&agrave;o đ&oacute; m&igrave;nh sẽ được chuyển đến thế giới kh&aacute;c. Kỹ năng m&agrave; cậu ta học được ch&iacute;nh l&agrave; kỹ năng l&agrave;m thuốc. Qu&aacute; thất vọng v&igrave; chả c&oacute; kỹ năng chiến đấu, nhưng những lọ thuốc m&agrave; cậu ta tạo ra đ&atilde; trở n&ecirc;n nổi tiếng chỉ sau một đ&ecirc;m, mang về cho cậu ta bộn tiền. V&agrave; v&igrave; thế, Reiji đ&atilde; tận hưởng một cuộc sống chầm chậm với kỹ năng của m&igrave;nh, phục vụ cho c&aacute;c kh&aacute;ch h&agrave;ng đến tiệm thuốc.</p>
', 1, N'437610789940b.jpg', N'120000', CAST(0x0000ADE20156A560 AS DateTime), CAST(0x0000ADE20156A560 AS DateTime), N'CuocSongChamRaiCuaDuocSiGianLan-4376', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (2098, 1026, N'Akame ga kill', N'Tashiro Tetsuya - Takahiro', N'<p>C&acirc;u chuyện Akame ga Kill&nbsp;xoay quanh Tatsumi, một thanh ni&ecirc;n trẻ tuổi đầy nhiệt huyết.Vốn xuất th&acirc;n từ n&ocirc;ng th&ocirc;n nhưng c&oacute; ch&uacute;t &iacute;t năng lực v&otilde; nghệ, cậu l&ecirc;n thủ đ&ocirc; với mục đ&iacute;ch kiếm tiền gầy dựng lại ng&ocirc;i l&agrave;ng của m&igrave;nh. Chỉ để rồi kh&aacute;m ph&aacute; ra c&aacute;i x&atilde; hội mục n&aacute;t đang ăn s&acirc;u v&agrave;o con người v&agrave; đất nước,&nbsp;ẩn chứa qua vẻ đẹp h&agrave;o nho&aacute;ng của chốn phồn hoa đ&ocirc; thị. Trong ho&agrave;n cảnh bế tắc của&nbsp;Akame ga Kill,&nbsp;l&agrave;m cậu mất định hướng cho tương lai, th&igrave; một nh&oacute;m s&aacute;t thủ với t&ecirc;n gọi &ldquo;Night Raid&rdquo; c&oacute; lời mời kết nạp. V&agrave; cuộc chiến chống lại đế chế thối n&aacute;t nhằm mang đến c&ocirc;ng l&yacute; b&ecirc;n cạnh những người bạn s&aacute;t thủ diễn ra trong&nbsp;Akame ga Kill</p>
', 1, N'108YEN_PRESS-Akame_ga_KILL_Vol_2_Manga-1633197_grande (1).jpg', N'75000', CAST(0x0000ADE2015C7038 AS DateTime), CAST(0x0000ADE2015C7038 AS DateTime), N'Akamegakill-108', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (2099, 1026, N'Thủ Lĩnh Thẻ Bài', N'CLAMP', N'<p>Cardcaptor Sakura bắt đầu khi một c&ocirc; b&eacute; 10 tuổi học lớp 4 t&ecirc;n l&agrave; Kinomoto Sakura t&igrave;nh cờ ph&aacute;t hiện ra một bộ thẻ b&agrave;i ma thuật gọi l&agrave; Clow trong quyển s&aacute;ch Clow, ch&uacute;ng được tạo ra v&agrave; đặt t&ecirc;n nửa tiếng Anh-nửa tiếng Trung bởi ph&aacute;p sư Clow Reed. Thần th&uacute; gi&aacute;m hộ bộ b&agrave;i l&agrave; Kerberos tho&aacute;t ra khỏi cuốn s&aacute;ch c&ugrave;ng với c&aacute;c thẻ b&agrave;i v&agrave; giao cho c&ocirc; trọng tr&aacute;ch thu phục những thẻ b&agrave;i đ&atilde; mất t&iacute;ch. Saukura phải chiến đấu v&agrave; đ&aacute;nh bại những thuộc t&iacute;nh ma thuật của từng thẻ b&agrave;i một mỗi khi t&igrave;m thấy để thu phục n&oacute;. Kerberos đ&oacute;ng vai tr&ograve; l&agrave; người hướng dẫn của c&ocirc;, trong khi người bạn th&acirc;n nhất v&agrave; c&oacute; họ h&agrave;ng với c&ocirc; l&agrave; Daidouji Tomoyo quay phim, ghi h&igrave;nh lại to&agrave;n bộ qu&aacute; tr&igrave;nh chiến đấu v&agrave; thiết kế trang phục cho Sakura. Phần III kể về h&agrave;nh tr&igrave;nh sau khi được ph&aacute;t quyết trở th&agrave;nh chủ nh&acirc;n những thẻ b&agrave;i , vẵn tưởng mọi chuyện sẽ kết th&uacute;c tại đ&acirc;y n&agrave;o ngờ kiếp sau của Clow reed l&agrave; Eriol xuất hiện v&agrave; 1 lần nữa Sakura phải đối trội v&agrave; c&oacute; nhiệm vụ biến đổi thẻ b&agrave;i clow th&agrave;nh thẻ b&agrave;i sakura với sự gi&uacute;p đỡ của Kero , Li Shaoran ,Yue ,Tomoyo.</p>
', 1, N'9970sakurakinomoto.jpg', N'250000', CAST(0x0000ADE2015DFD73 AS DateTime), CAST(0x0000ADE2015DFD73 AS DateTime), N'ThuLinhTheBai-9970', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (2100, 1026, N'Mewkledreamy Mix!', N'Hiroko Kanasugi', N'<p>C&acirc;u chuyện bắt đầu khi một nữ sinh trung cấp t&ecirc;n Yume nh&igrave;n thấy một thứ g&igrave; đ&oacute; từ tr&ecirc;n trời rơi xuống v&agrave; rồi gặp một ch&uacute; m&egrave;o m&agrave;u t&iacute;m mộng mơ t&ecirc;n l&agrave; Mew. H&oacute;a ra Mew c&oacute; sức mạnh của &quot;Yume Synchro&quot;, một sức mạnh để đi v&agrave;o giấc mơ. Trong thế giới giấc mơ, c&ocirc; ấy c&ugrave;ng với Mew thu thập Mộng Thạch.</p>
', 0, N'6376Mewkledreamy Mix!.jpg', N'65000', CAST(0x0000ADE201603AAA AS DateTime), CAST(0x0000ADE201603AAA AS DateTime), N'MewkledreamyMix!-6376', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (2101, 1034, N'DỊ THẾ TÀ QUÂN', N'Phong Lăng Thiên Hạ', N'<p>Truyện&nbsp;<strong>Dị Thế T&agrave; Qu&acirc;n</strong>&nbsp;của t&aacute;c giả&nbsp;<strong>Phong Lăng Thi&ecirc;n Hạ</strong>&nbsp;xuất th&acirc;n l&agrave; một s&aacute;t thủ kh&eacute;t tiếng trong giới hắc đạo, với kỹ năng bắn s&uacute;ng c&ugrave;ng tr&igrave;nh độ v&otilde; học si&ecirc;u ph&agrave;m. Tuy l&agrave; một s&aacute;t thủ m&aacute;u lạnh, giết người v&ocirc; số nhưng trong th&acirc;m t&acirc;m hắn vẫn c&ograve;n lại tr&aacute;i tim con người với l&ograve;ng cảm thương đối với những người c&ocirc; thế. Đối với nhiều người, hắn l&agrave; một kẻ v&ocirc; c&ugrave;ng hiểm &aacute;c nhưng nếu b&igrave;nh t&acirc;m nh&igrave;n lại sẽ thấy những kẻ m&agrave; hắn giết đều l&agrave; những t&ecirc;n cường h&agrave;o &aacute;c b&aacute;, lạm dụng chức quyền h&agrave; hiếp người c&ocirc; thế&hellip;<br />
<br />
Trong một lần tranh đoạt cổ vật với những phe c&aacute;nh hắc đạo, t&iacute;nh mạng của y gặp phải nguy hiểm tột c&ugrave;ng khi rơi v&agrave;o v&ograve;ng v&acirc;y phục k&iacute;ch. Trong c&aacute;i rủi lại c&oacute; c&aacute;i may, ch&iacute;nh l&uacute;c n&agrave;y, những m&oacute;n bảo vật huyền b&iacute; m&agrave; hắn tranh đoạt đ&atilde; ph&aacute;t tỏa huyền năng đưa hắn trở về thế giới cổ đại, nơi m&agrave; ph&aacute;p luật chỉ mang t&iacute;nh tượng trưng v&agrave; ch&acirc;n l&yacute; chỉ thuộc về kẻ mạnh.<br />
<br />
Sống trong thế giới nhiễu nhương n&agrave;y, liệu rằng những kỹ năng của một s&aacute;t thủ c&oacute; gi&uacute;p hắn y&ecirc', 1, N'263000.jpg', N'0', CAST(0x0000ADED0128C73A AS DateTime), CAST(0x0000ADED012990EB AS DateTime), N'DITHETAQUAN-3355', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (4101, 2042, N'LA PHÙ', N'Vô Tội', N'<p>- Một cậu b&eacute; mồ c&ocirc;i từ nhỏ, kh&ocirc;ng cha kh&ocirc;ng mẹ, kh&ocirc;ng th&acirc;n kh&ocirc;ng th&iacute;ch, sống c&ugrave;ng với một c&ocirc; g&aacute;i. Cả hai từ nhỏ nương tựa v&agrave;o nhau, ng&agrave;y đi ăn xin, đ&ecirc;m th&igrave; lần m&ograve; v&agrave;o nghĩa địa m&agrave; t&igrave;m thức ăn để sống qua ng&agrave;y... Đến một ng&agrave;y, c&ocirc; b&eacute; v&igrave; c&oacute; tư chất hơn người m&agrave; được người tu đạo chọn, c&ograve;n cậu b&eacute; th&igrave; tư chất k&eacute;m n&ecirc;n cả hai phải chia l&igrave;a nhau. Nhưng số phận an b&agrave;i, cậu b&eacute; mồ c&ocirc;i lại gặp được một m&ocirc;n ph&aacute;i thần b&iacute;, rồi bằng sự nỗ lực phấn đấu, ki&ecirc;n quyết m&agrave; vươn l&ecirc;n để đạt được sự trường sinh bất tử m&agrave; cậu hằng mong ước. Nhưng v&ocirc; t&igrave;nh, cậu b&eacute; lại bị cuốn v&agrave;o c&aacute;i thế giới của người tu đạo vốn tưởng như y&ecirc;n b&igrave;nh lại ẩn chứa nguy hiểm tr&ugrave;ng tr&ugrave;ng.<br />
<br />
- Thể loại truyện ti&ecirc;n hiệp vốn kh&ocirc;ng c&oacute; g&igrave; mới với tất cả những bạn độc giả, nhưng dưới ng&ograve;i b&uacute;t của mỗi một t&aacute;c giả, diễn biến của c&acirc;u chuyện lại đi theo một chiều hướng với những t&igrave;nh tiết l&ocirc;i cuốn kh&aacute;c nhau. T&aacute;c giả V&ocirc; Tội viết t&aacute;c phẩm La Ph&ugrave; c&oacute; những điểm rất kh&aacute;c với những truyện ti&ecirc;n hiệp trước. Truyện được t&aacute;c giả đan xen v&agrave;o những t&igrave;nh cảm nh', 1, N'7882la-phu.jpg', N'0', CAST(0x0000ADEF0110B933 AS DateTime), CAST(0x0000ADEF01148B1C AS DateTime), N'LA-PHU-7882', NULL)
SET IDENTITY_INSERT [dbo].[DB_TRUYEN] OFF
SET IDENTITY_INSERT [dbo].[DB_VOTE] ON 

INSERT [dbo].[DB_VOTE] ([id_vote], [id_user], [id_truyen], [giatri], [created_at], [updated_at]) VALUES (4, 7, 1088, 5, CAST(0x0000ADF201296ED8 AS DateTime), CAST(0x0000ADF201296ED8 AS DateTime))
INSERT [dbo].[DB_VOTE] ([id_vote], [id_user], [id_truyen], [giatri], [created_at], [updated_at]) VALUES (5, 2040, 4101, 1, CAST(0x0000ADF20129F647 AS DateTime), CAST(0x0000ADF2012A82F1 AS DateTime))
INSERT [dbo].[DB_VOTE] ([id_vote], [id_user], [id_truyen], [giatri], [created_at], [updated_at]) VALUES (6, 2040, 1073, 5, CAST(0x0000ADF2012AF40C AS DateTime), CAST(0x0000ADF2012AF40C AS DateTime))
INSERT [dbo].[DB_VOTE] ([id_vote], [id_user], [id_truyen], [giatri], [created_at], [updated_at]) VALUES (7, 2040, 2101, 1, CAST(0x0000ADF2012B2427 AS DateTime), CAST(0x0000ADF2012B2427 AS DateTime))
SET IDENTITY_INSERT [dbo].[DB_VOTE] OFF
SET IDENTITY_INSERT [dbo].[DB_THUVIEN] ON 

INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (2054, 7, 1078, 1072, CAST(0x0000ADDF00A56F1E AS DateTime), CAST(0x0000ADDF00A5E478 AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (2061, 7, 1099, 1077, CAST(0x0000ADE000509118 AS DateTime), CAST(0x0000ADE000509692 AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (2063, 7, 1088, 3108, CAST(0x0000ADE001588AB4 AS DateTime), CAST(0x0000ADF2012982F0 AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (2064, 1034, 1088, 1092, CAST(0x0000ADE1008D6D01 AS DateTime), CAST(0x0000ADF10172ADAD AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (3056, 1034, 1102, 1091, CAST(0x0000ADE201506546 AS DateTime), CAST(0x0000ADE4015CB997 AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (3057, 1026, 1073, 2109, CAST(0x0000ADE2015563BE AS DateTime), CAST(0x0000ADED015D9DC5 AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (3058, 1026, 1102, 2082, CAST(0x0000ADE40158A359 AS DateTime), CAST(0x0000ADE40158BBBF AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (3062, 1034, 1049, 2084, CAST(0x0000ADE40171C7C1 AS DateTime), CAST(0x0000ADE40171C7C1 AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (3064, 1034, 1071, 2099, CAST(0x0000ADE40175BF79 AS DateTime), CAST(0x0000ADE401778169 AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (3066, 7, 1068, 2105, CAST(0x0000ADE4017A52E9 AS DateTime), CAST(0x0000ADE40184AF09 AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (3067, 1034, 2096, 2100, CAST(0x0000ADED00F58E8E AS DateTime), CAST(0x0000ADED0149BAF5 AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (3068, 7, 2096, 2104, CAST(0x0000ADED00F5BA2A AS DateTime), CAST(0x0000ADEE01595460 AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (3069, 1034, 1068, 2105, CAST(0x0000ADED0115F847 AS DateTime), CAST(0x0000ADED0115F847 AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (3071, 1026, 2101, 2108, CAST(0x0000ADED012C675D AS DateTime), CAST(0x0000ADED012C675D AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (3072, 1026, 1071, 2099, CAST(0x0000ADED012D0072 AS DateTime), CAST(0x0000ADED012D1FC6 AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (3073, 7, 1069, 2092, CAST(0x0000ADED012F98F7 AS DateTime), CAST(0x0000ADED012FAADE AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (3074, 1026, 1069, 2091, CAST(0x0000ADED0143568C AS DateTime), CAST(0x0000ADED014372CA AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (3075, 1026, 1045, 2118, CAST(0x0000ADED0163EE61 AS DateTime), CAST(0x0000ADED0163FCA5 AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (4070, 7, 2101, 2108, CAST(0x0000ADEE0158DCA2 AS DateTime), CAST(0x0000ADEF0100650F AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (4071, 7, 1076, 2097, CAST(0x0000ADEE0159E9C3 AS DateTime), CAST(0x0000ADEE015A2FE4 AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (5075, 7, 1073, 1079, CAST(0x0000ADEF00F6008C AS DateTime), CAST(0x0000ADEF00F6008C AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (5078, 2040, 2101, 2108, CAST(0x0000ADEF00FC6B35 AS DateTime), CAST(0x0000ADF2012BFB05 AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (5084, 2040, 1088, 1093, CAST(0x0000ADEF00FD690F AS DateTime), CAST(0x0000ADEF010812D2 AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (5085, 2041, 2101, 2108, CAST(0x0000ADEF01099636 AS DateTime), CAST(0x0000ADEF01099636 AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (5086, 2042, 4101, 3109, CAST(0x0000ADEF011265FC AS DateTime), CAST(0x0000ADEF01129C23 AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (5087, 1034, 4101, 3118, CAST(0x0000ADEF0113714D AS DateTime), CAST(0x0000ADF20106BB5E AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (5088, 2042, 2101, 2108, CAST(0x0000ADEF011549B6 AS DateTime), CAST(0x0000ADEF011549B6 AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (5089, 1034, 2101, 2108, CAST(0x0000ADF10110690B AS DateTime), CAST(0x0000ADF20108799A AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (5091, 1034, 1073, 1084, CAST(0x0000ADF10112BDE9 AS DateTime), CAST(0x0000ADF2010547C7 AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (5092, 2043, 2101, 2108, CAST(0x0000ADF20107D3AB AS DateTime), CAST(0x0000ADF2010850D9 AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (5093, 2043, 4101, 3109, CAST(0x0000ADF20108FF43 AS DateTime), CAST(0x0000ADF20108FF43 AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (7092, 1034, 5103, 3129, CAST(0x0000ADF2011E7C79 AS DateTime), CAST(0x0000ADF2011E86A3 AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (7093, 1034, 5104, NULL, CAST(0x0000ADF201205E35 AS DateTime), CAST(0x0000ADF201206604 AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (7094, 2040, 4101, 3125, CAST(0x0000ADF20129EF1D AS DateTime), CAST(0x0000ADF2012AD210 AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (7095, 2040, 1073, 1079, CAST(0x0000ADF2012AE3D7 AS DateTime), CAST(0x0000ADF2012AE3D7 AS DateTime))
SET IDENTITY_INSERT [dbo].[DB_THUVIEN] OFF
INSERT [dbo].[DB_CAUHINH] ([id_cauhinh], [ten_web], [logo_web], [favicon_web], [email_lh], [diachi_lh], [sdt_lh], [lh_fb], [lh_zalo], [lh_itg], [copyright], [created_at], [updated_at]) VALUES (0, N'KDA Website Đọc Truyện', N'204612.png', N'KDA STUDIO_logo.png', N'mail@gm.com', N'Cần thơ', N'0123456789', N'fb.com', N'zl.com', N'ig.com', N'a@b.com', CAST(0x0000ADD800965C00 AS DateTime), CAST(0x0000ADD800965C00 AS DateTime))
