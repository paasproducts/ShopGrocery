﻿INSERT INTO "Core_AppSetting" ("Id", "Key", "Value") VALUES (1, 'Catalog.ProductPageSize', '10');
INSERT INTO "Core_AppSetting" ("Id", "Key", "Value") VALUES (2, 'Global.AssetVersion', '1.0');
SELECT pg_catalog.setval('"Core_AppSetting_Id_seq"', 2, true);

INSERT INTO "Core_Role" ("Id", "ConcurrencyStamp", "Name", "NormalizedName") VALUES (1, 'bd3bee0b-5f1d-482d-b890-ffdc01915da3', 'admin', 'ADMIN');
INSERT INTO "Core_Role" ("Id", "ConcurrencyStamp", "Name", "NormalizedName") VALUES (2, 'bd3bee0b-5f1d-482d-b890-ffdc01915da3', 'customer', 'CUSTOMER');
INSERT INTO "Core_Role" ("Id", "ConcurrencyStamp", "Name", "NormalizedName") VALUES (3, 'bd3bee0b-5f1d-482d-b890-ffdc01915da3', 'guest', 'GUEST');
SELECT pg_catalog.setval('"Core_Role_Id_seq"', 3, true);

INSERT INTO "Core_User" ("Id", "UserGuid", "AccessFailedCount", "ConcurrencyStamp", "CreatedOn", "Email", "EmailConfirmed", "FullName", "IsDeleted", "LockoutEnabled", "LockoutEnd", "NormalizedEmail", "NormalizedUserName", "PasswordHash", "PhoneNumber", "PhoneNumberConfirmed", "SecurityStamp", "TwoFactorEnabled", "UpdatedOn", "UserName") VALUES (1, '1FFF10CE-0231-43A2-8B7D-C8DB18504F65', 0, '8620916f-e6b6-4f12-9041-83737154b338', '2016-05-20 16:50:05.707655', 'admin@simplcommerce.com', false, 'Shop Admin', false, true, NULL, 'ADMIN@SIMPLCOMMERCE.COM', 'ADMIN@SIMPLCOMMERCE.COM', 'AQAAAAEAACcQAAAAEAEqSCV8Bpg69irmeg8N86U503jGEAYf75fBuzvL00/mr/FGEsiUqfR0rWBbBUwqtw==', NULL, false, '9e87ce89-64c0-45b9-8b52-6e0eaa79e5b7', false, '2016-05-20 16:50:05.707655', 'admin@simplcommerce.com');
SELECT pg_catalog.setval('"Core_User_Id_seq"', 1, true);

INSERT INTO "Core_UserRole" ("UserId", "RoleId") VALUES (1, 1);

INSERT INTO "Core_EntityType" ("Id", "Name", "RoutingController", "RoutingAction") VALUES (1, 'Category', 'Category', 'CategoryDetail');
INSERT INTO "Core_EntityType" ("Id", "Name", "RoutingController", "RoutingAction") VALUES (2, 'Brand', 'Brand', 'BrandDetail');
INSERT INTO "Core_EntityType" ("Id", "Name", "RoutingController", "RoutingAction") VALUES (3, 'Product', 'Product', 'ProductDetail');
INSERT INTO "Core_EntityType" ("Id", "Name", "RoutingController", "RoutingAction") VALUES (4, 'Page', 'Page', 'PageDetail');
SELECT pg_catalog.setval('"Core_EntityType_Id_seq"', 4, true);

INSERT INTO "ActivityLog_ActivityType" ("Id", "Name") VALUES (1, 'ProductView');
SELECT pg_catalog.setval('"ActivityLog_ActivityType_Id_seq"', 1, true);

INSERT INTO "Core_Widget" ("Id", "Code", "CreateUrl", "CreatedOn", "EditUrl", "IsPublished", "Name", "ViewComponentName") VALUES (1, 'CarouselWidget', 'widget-carousel-create', '2016-06-19 00:00:00', 'widget-carousel-edit', true, 'Carousel Widget', 'CarouselWidget');
INSERT INTO "Core_Widget" ("Id", "Code", "CreateUrl", "CreatedOn", "EditUrl", "IsPublished", "Name", "ViewComponentName") VALUES (2, 'HtmlWidget', 'widget-html-create', '2016-06-24 00:00:00', 'widget-html-edit', true, 'Html Widget', 'HtmlWidget');
INSERT INTO "Core_Widget" ("Id", "Code", "CreateUrl", "CreatedOn", "EditUrl", "IsPublished", "Name", "ViewComponentName") VALUES (3, 'ProductWidget', 'widget-product-create', '2016-06-24 00:00:00', 'widget-product-edit', true, 'Product Widget', 'ProductWidget');
SELECT pg_catalog.setval('"Core_Widget_Id_seq"', 3, true);

INSERT INTO "Core_WidgetZone" ("Id", "Description", "Name") VALUES (1, NULL, 'Home Featured');
INSERT INTO "Core_WidgetZone" ("Id", "Description", "Name") VALUES (2, NULL, 'Home Main Content');
INSERT INTO "Core_WidgetZone" ("Id", "Description", "Name") VALUES (3, NULL, 'Home After Main Content');
SELECT pg_catalog.setval('"Core_WidgetZone_Id_seq"', 3, true);

INSERT INTO "Catalog_ProductOption" ("Id", "Name") VALUES (1, 'Color');
INSERT INTO "Catalog_ProductOption" ("Id", "Name") VALUES (2, 'Size');
SELECT pg_catalog.setval('"Catalog_ProductOption_Id_seq"', 2, true);

INSERT INTO "Core_Country" ("Id", "Name") VALUES (1, 'Việt Nam');

INSERT INTO "Core_StateOrProvince" ("Id", "CountryId", "Name", "Type") VALUES (79, 1, 'Hồ Chí Minh', 'Thành Phố');

INSERT INTO "Core_District" ("Id", "Location", "Name", "StateOrProvinceId", "Type") VALUES (1, NULL, 'Quận 1', 79, NULL);
INSERT INTO "Core_District" ("Id", "Location", "Name", "StateOrProvinceId", "Type") VALUES (2, NULL, 'Quận 2', 79, NULL);
INSERT INTO "Core_District" ("Id", "Location", "Name", "StateOrProvinceId", "Type") VALUES (3, NULL, 'Quận 3', 79, NULL);
INSERT INTO "Core_District" ("Id", "Location", "Name", "StateOrProvinceId", "Type") VALUES (4, NULL, 'Quận 4', 79, NULL);
INSERT INTO "Core_District" ("Id", "Location", "Name", "StateOrProvinceId", "Type") VALUES (5, NULL, 'Quận 5', 79, NULL);
INSERT INTO "Core_District" ("Id", "Location", "Name", "StateOrProvinceId", "Type") VALUES (6, NULL, 'Quận 6', 79, NULL);
INSERT INTO "Core_District" ("Id", "Location", "Name", "StateOrProvinceId", "Type") VALUES (7, NULL, 'Quận 7', 79, NULL);
INSERT INTO "Core_District" ("Id", "Location", "Name", "StateOrProvinceId", "Type") VALUES (8, NULL, 'Quận 8', 79, NULL);
INSERT INTO "Core_District" ("Id", "Location", "Name", "StateOrProvinceId", "Type") VALUES (9, NULL, 'Quận 9', 79, NULL);
INSERT INTO "Core_District" ("Id", "Location", "Name", "StateOrProvinceId", "Type") VALUES (10, NULL, 'Quận 10', 79, NULL);
INSERT INTO "Core_District" ("Id", "Location", "Name", "StateOrProvinceId", "Type") VALUES (11, NULL, 'Quận 11', 79, NULL);
INSERT INTO "Core_District" ("Id", "Location", "Name", "StateOrProvinceId", "Type") VALUES (12, NULL, 'Quận 12', 79, NULL);
INSERT INTO "Core_District" ("Id", "Location", "Name", "StateOrProvinceId", "Type") VALUES (13, NULL, 'Thủ Đức', 79, NULL);
INSERT INTO "Core_District" ("Id", "Location", "Name", "StateOrProvinceId", "Type") VALUES (14, NULL, 'Gò Vấp', 79, NULL);
INSERT INTO "Core_District" ("Id", "Location", "Name", "StateOrProvinceId", "Type") VALUES (15, NULL, 'Bình Thạnh', 79, NULL);
INSERT INTO "Core_District" ("Id", "Location", "Name", "StateOrProvinceId", "Type") VALUES (16, NULL, 'Tân Bình', 79, NULL);
INSERT INTO "Core_District" ("Id", "Location", "Name", "StateOrProvinceId", "Type") VALUES (17, NULL, 'Tân Phú', 79, NULL);
INSERT INTO "Core_District" ("Id", "Location", "Name", "StateOrProvinceId", "Type") VALUES (18, NULL, 'Phú Nhuận', 79, NULL);
INSERT INTO "Core_District" ("Id", "Location", "Name", "StateOrProvinceId", "Type") VALUES (19, NULL, 'Bình Chánh', 79, NULL);

INSERT INTO "Localization_Culture" ("Id", "Name") VALUES (1, 'vi-VN');
INSERT INTO "Localization_Culture" ("Id", "Name") VALUES (2, 'fr-FR');
INSERT INTO "Localization_Culture" ("Id", "Name") VALUES (3, 'pt-BR');
INSERT INTO "Localization_Culture" ("Id", "Name") VALUES (4, 'uk-UA');
INSERT INTO "Localization_Culture" ("Id", "Name") VALUES (5, 'ru-RU');

INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'Register', 'Đăng ký');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'Hello {0}!', 'Chào {0}!');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'Log in', 'Đăng nhập');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'Log off', 'Đăng xuất');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'The Email field is required.', 'Địa chỉ email cần phải có ');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'Email', 'Địa chỉ email');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'User List', 'Danh sách người dùng');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'Remember me?', 'Ghi nhớ?');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'Password', 'Mật khẩu');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'Use a local account to log in.', 'Sử dụng tài khoản của bạn để đăng nhập');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'Register as a new user?', 'Đăng ký người dùng mới');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'Forgot your password?', 'Quên mật khẩu');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'Use another service to log in.', 'Đăng nhập bằng các tài khoản khác');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'Full name', 'Họ và tên');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'Confirm password', 'Xác nhận mật khẩu');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'Create a new account.', 'Tạo tài khoản mới.');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'All', 'Tất cả');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'Home', 'Trang chủ');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'Add to cart', 'Thêm vào giỏ hàng');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'Product detail', 'Mô tả sản phẩm');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'Product specification', 'Thông số kỹ thuật');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'Rate this product', 'Đánh giá sản phẩm này');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'Review comment', 'Mô tả đánh giá');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'Review title', 'Tiêu đề đánh giá');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'Posted by', 'Đánh giá bởi');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'Submit review', 'Gửi đánh giá');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'You have', 'Bạn có');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'products in your cart', 'sản phẩm trong giỏ hàng');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'Continue shopping', 'Tiếp tục mua sắm');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'View cart', 'Xem giỏ hàng');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'The product has been added to your cart', 'Sản phẩm đã được thêm vào giỏ hàng');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'Cart subtotal', 'Thành tiền');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'Shopping Cart', 'Giỏ hàng');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'Product', 'Sản phẩm');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'Price', 'Giá');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'Quantity', 'Số lượng');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'There are no items in this cart.', 'Chưa có sản phẩm nào trong giỏ hàng của bạn');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'Go to shopping', 'Đi mua sắm');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'Order summary', 'Tóm lược đơn hàng');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'Subtotal', 'Thành tiền');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'Process to Checkout', 'Tiến hành thanh toán');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'Shipping address', 'Địa chỉ giao hàng');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'Add another address', 'Thêm địa chỉ mới');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'Contact name', 'Tên người liên hệ');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'Address', 'Địa chỉ');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'State or Province', 'Thành phố / Tỉnh');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'District', 'Quận / Huyện');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'Phone', 'Số điện thoại');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'Order', 'Đặt hàng');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'products', 'sản phẩm');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'reviews', 'nhận xét');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'Add Review', 'Viết nhận xét');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'Customer reviews', 'Nhận xét của khách hàng');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'Your review will be showed within the next 24h.', 'Nhận xét của bạn sẽ được hiển thị trong vòng 24 tiếng');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'Thank you {0} for your review', 'Cảm ơn {0} đã gửi nhận xét');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'Rating average', 'Đánh giá trung bình');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'stars', 'sao');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'Filter by', 'Tìm theo');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'Catery', 'Danh mục');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'Brand', 'Nhãn hiệu');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'Sort by:', 'Sắp xếp theo:');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (1, 'results', 'kết quả');

INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'Register', 'S''inscrire');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'Hello {0}!', 'Bonjour {0}!');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'Log in', 'Connexion');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'Log off', 'Déconnexion');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'The Email field is required.', 'Le champs Email est obligatoire.');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'Email', 'Email');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'User List', 'Liste des utilisateurs');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'Remember me?', 'Se rappeler de moi?');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'Password', 'Mot de passe');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'Use a local account to log in.', 'Utilisez un compte local pour vous connecter.');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'Register as a new user?', 'Enregistrez-vous en tant que nouvel utilisateur?');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'Forgot your password?', 'Mot de passe oublié?');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'Use another service to log in.', 'Utilisez un autre service pour vous connecter.');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'Full name', 'Nom complet');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'Confirm password', 'Confirmez le mot de passe');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'Create a new account.', 'Créer un nouveau compte.');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'All', 'Tout');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'Home', 'Accueil');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'Add to cart', 'Ajouter au panier');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'Product detail', 'Détail du produit');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'Product specification', 'Spécification de produit');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'Rate this product', 'Évaluez ce produit');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'Review comment', 'Revue commentaire');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'Review title', 'Revue titre');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'Posted by', 'Posté par');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'Submit review', 'Poster le commentaire');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'You have', 'Vous avez');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'products in your cart', 'produits dans votre panier');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'Continue shopping', 'Continuer vos achats');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'View cart', 'Voir le panier');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'The product has been added to your cart', 'Le produit a été ajouté à votre panier');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'Cart subtotal', 'Sous-total du panier');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'Shopping Cart', 'Panier');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'Product', 'Produit');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'Price', 'Prix');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'Quantity', 'Quantité');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'There are no items in this cart.', 'Il n''y a aucun article dans votre panier.');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'Go to shopping', 'Aller faire du shopping');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'Order summary', 'Récapitulatif de la commande');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'Subtotal', 'Sous-Total');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'Process to Checkout', 'Processus de paiement');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'Shipping address', 'Adresse de livraison');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'Add another address', 'Ajouter une autre adresse');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'Contact name', 'Nom du contactệ');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'Address', 'Adresse');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'State or Province', 'Etat ou Province');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'District', 'District');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'Phone', 'Téléphone');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'Order', 'Commande');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'products', 'Produits');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'reviews', 'avis');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'Add Review', 'Ajouter un commentaire');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'Customer reviews', 'Avis des clients');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'Your review will be showed within the next 24h.', 'Votre avis sera affiché dans les prochaines 24h.');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'Thank you {0} for your review', 'Merci {0} pour votre commentaire');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'Rating average', 'Moyenne des notes');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'stars', 'étoiles');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'Filter by', 'Filtrer par');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'Category', 'Catalogue');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'Brand', 'Marque');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'Sort by:', 'Trier par:');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (2, 'results', 'résultats');

INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'Register', 'Cadastro');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'Hello {0}!', 'Olá {0}!');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'Log in', 'Entrar');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'Log off', 'Sair');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'The Email field is required.', 'O campo Email é obrigatório. ');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'Email', 'Email');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'User List', 'Lista de usuários');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'Remember me?', 'Lembrar?');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'Password', 'Senha');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'Use a local account to log in.', 'Entre com seu usuário e senha ');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'Register as a new user?', 'Cadastrar-se como novo usuário? ');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'Forgot your password?', 'Esqueceu a senha?');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'Use another service to log in.', 'Logar utilizando outro serviço');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'Full name', 'Nome completo');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'Confirm password', 'Confirmar senha');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'Create a new account.', 'Criar uma conta.');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'All', 'Todos');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'Home', 'Início');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'Add to cart', 'Adicionar ao carrinho');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'Product detail', 'Detalhes do produto');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'Product specification', 'Especificações do produto');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'Rate this product', 'Avalie este produto');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'Review comment', 'Comentário');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'Review title', 'Título da avaliação');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'Posted by', 'Postado pro');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'Submit review', 'Enviar avaliação');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'You have', 'Você tem');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'products in your cart', 'produtos no carrinho');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'Continue shopping', 'Continuar comprando');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'View cart', 'Ver carrinho');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'The product has been added to your cart', 'O produto foi adicionado ao carrinho');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'Cart subtotal', 'Subtotal');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'Shopping Cart', 'Carrinho de compras');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'Product', 'Produto');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'Price', 'Preço');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'Quantity', 'Quantidade');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'There are no items in this cart.', 'O carrinho está vazio.');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'Go to shopping', 'a comprar');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'Order summary', 'Resumo do pedido');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'Subtotal', 'Subtotal');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'Process to Checkout', 'Próxima etapa');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'Shipping address', 'Endereço de entrega');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'Add another address', 'Adicionar outro endereço');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'Contact name', 'Nome completo');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'Address', 'Endereço');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'State or Province', 'Estado');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'District', 'Cidade');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'Phone', 'Telefone');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'Order', 'Pedido');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'products', 'produtos');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'reviews', 'avaliações');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'Add Review', 'Adicionar avaliação');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'Customer reviews', 'Avaliações de quem comprou');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'Your review will be showed within the next 24h.', 'Sua avaliação será publicada dentro de 24h.');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'Thank you {0} for your review', 'Muito obrigado pela avaliação, {0}');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'Rating average', 'Média das avaliações');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'stars', 'estrelas');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'Filter by', 'Filtrar por');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'Category', 'Categoria');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'Brand', 'Marca');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'Sort by:', 'Ordenar por:');
INSERT INTO "Localization_Resource" ("CultureId", "Key", "Value") VALUES (3, 'results', 'resultados');

INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'Register', 'Зареєструватися')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'Hello {0}!', 'Вітаємо, {0}!')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'Log i', 'Увійти')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'Log off', 'Вийти')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'The Email field is required.', 'Поле «Електронна пошта» є обов’язковим.')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'Email', 'Електронна пошта')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'User List', 'Список користувачів')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'Remember me?', 'Запам’ятати мене?')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'Password', 'Пароль')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'Use a local account to log in.', 'Використати локальний акаунт для входу.')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'Register as a new user?', 'Зареєструватися як новий користувач?')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'Forgot your password?', 'Забули свій пароль?')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'Use another service to log in.', 'Використати інший сервіс для входу.')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'Full name', 'Повне ім’я')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'Confirm password', 'Підтвердження паролю')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'Create a new account.', 'Створити новий акаунт.')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'All', 'Всі')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'Home', 'Головна')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'Add to cart', 'Додати до кошику')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'Product detail', 'Деталі товару')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'Product specificatio', 'Специфікація товару')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'Rate this product', 'Оцінити цей продукт')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'Review comment', 'Текст відгуку')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'Review title', 'Заголовок відгуку')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'Posted by', 'Автор')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'Submit review', 'Надіслати відгук')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'You have', 'Ви маєте')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'products in your cart', 'товарів у кошику')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'Continue shopping', 'Tiếp tục mua sắm')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'View cart', 'Переглянути кошик')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'The product has been added to your cart', 'Товар було додано до кошику')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'Cart subtotal', 'Проміжний підсумок')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'Shopping Cart', 'Кошик')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'Product', 'Товар')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'Price', 'Ціна')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'Quantity', 'Кількість')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'There are no items in this cart.', 'Товарів у кошику немає')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'Go to shopping', 'Продовжити покупки')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'Order summary', 'Підсумок замовлення')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'Subtotal', 'Підсумок')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'Process to Checkout', 'Оформити замовлення')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'Shipping address', 'Адреса доставки')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'Add another address', 'Додати іншу адресу')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'Contact name', 'Контактне ім’я ')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'Address', 'Адреса')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'State or Province', 'Область або край')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'District', 'Район')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'Phone', 'Телефон')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'Order', 'Замовлення')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'products', 'товари')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'reviews', 'відгуки')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'Add Review', 'Додати відгук')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'Customer reviews', 'Відгуки покупців')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'Your review will be showed within the next 24h.', 'Ваш відгук буде опубліковано впродовж наступних 24 годин.')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'Thank you {0} for your review', 'Дякуємо {0} за ваш відгук')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'Rating average', 'Середня оцінка')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'stars', 'зірочок')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'Filter by', 'Фільтрувати за')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'Catery', 'Категорія')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'Brand', 'Бренд')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'Sort by:', 'Сортувати за:')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (4, 'results', 'результати')

INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'Register', 'Зарегистрироваться')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'Hello {0}!', 'Поздравляем, {0}!')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'Log i', 'Войти')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'Log off', 'Выйти')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'The Email field is required.', 'Поле «Электронная почта» является обязательным.')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'Email', 'Электронная почта')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'User List', 'Список пользователей')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'Remember me?', 'Запомнить меня?')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'Password', 'Пароль')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'Use a local account to log in.', 'Использовать локальный аккаунт для входа.')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'Register as a new user?', 'Зарегистрироваться как новый пользователь?')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'Forgot your password?', 'Забыли свой пароль?')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'Use another service to log in.', 'Использовать другой сервис для входа.')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'Full name', 'Полное имя')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'Confirm password', 'Подтверждение пароля')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'Create a new account.', 'Создать новый аккаунт.')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'All', 'Все')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'Home', 'Главная')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'Add to cart', 'Добавить в корзину')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'Product detail', 'Детали товара')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'Product specificatio', 'Спецификация товара')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'Rate this product', 'Оценить этот товар')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'Review comment', 'Текст отзыва')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'Review title', 'Заголовок отзыва')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'Posted by', 'Автор')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'Submit review', 'Отправить отзыв')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'You have', 'У вас')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'products in your cart', 'товаров в корзине')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'Continue shopping', 'Продолжить покупки')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'View cart', 'Просмотр корзины')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'The product has been added to your cart', 'Товар был добавлен в корзину')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'Cart subtotal', 'Промежуточный итог')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'Shopping Cart', 'Корзина')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'Product', 'Товар')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'Price', 'Цена')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'Quantity', 'Количество')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'There are no items in this cart.', 'Товаров в корзине нет')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'Go to shopping', 'Продолжить покупки')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'Order summary', 'Итог заказа')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'Subtotal', 'Итого')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'Process to Checkout', 'Оформить заказ')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'Shipping address', 'Адрес доставки')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'Add another address', 'Добавить другой адрес')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'Contact name', 'Контактное имя')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'Address', 'Адрес')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'State or Province', 'Область или край')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'District', 'Район')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'Phone', 'Телефон')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'Order', 'Заказ')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'products', 'товары')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'reviews', 'отзывы')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'Add Review', 'Добавить отзыв')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'Customer reviews', 'Отзывы покупателей')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'Your review will be showed within the next 24h.', 'Ваш отзыв будет опубликован в течении следующих 24 часов.')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'Thank you {0} for your review', 'Спасибо {0} за ваш отзыв')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'Rating average', 'Средняя оценка')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'stars', 'звездочек')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'Filter by', 'Фильтровать по')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'Catery', 'Категория')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'Brand', 'Бренд')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'Sort by:', 'Сортировать по:')
INSERT INTO Localization_Resource ("CultureId", "Key", "Value") VALUES (5, 'results', 'результаты')
