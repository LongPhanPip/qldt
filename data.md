# Account
## Teacher
``` json
    {
      "person": {
        "first_name": "Nhu",
        "last_name": "Nguyen Thi",
        "gender": "F",
        "date_of_birth": "1995-04-03",
        "address": "178 Tran Hung Dao, Ha Noi",
        "ethnicity": "Kinh",
        "religion" : "None",
        "phone_number": "09224214570"
      },
      "account": {
        "username": "nhunt84",
        "password": "nhu12345678",
        "email": "nhunt@gmail.com"
      }
    }

    {
      "person": {
        "first_name": "Nga",
        "last_name": "Nguyen Thi",
        "gender": "F",
        "date_of_birth": "1993-01-31",
        "address": "19 Nam Dong, Ha Noi",
        "ethnicity": "Kinh",
        "religion" : "None",
        "phone_number": "09904990781"
      },
      "account": {
        "username": "ngant84",
        "password": "nga12345678",
        "email": "ngant@gmail.com"
      }
    }

    {
      "person": {
        "first_name": "Tram",
        "last_name": "Phi Thi",
        "gender": "F",
        "date_of_birth": "1992-09-27",
        "address": "981 Cat Linh, Ha Noi",
        "ethnicity": "Kinh",
        "religion" : "None",
        "phone_number": "09056028783"
      },
      "account": {
        "username": "trampt84",
        "password": "tram12345678",
        "email": "trampt@gmail.com"
      }
    }

```
### Student
``` json
    {
        "person":{
            "first_name": "Hoang",
            "last_name": "Do Minh",
            "gender": "M",
            "date_of_birth": "2000-06-13",
            "address": "180 Phu Luong, Ha Noi",
            "ethnicity": "Kinh",
            "religion" : "None",
            "phone_number": "0947462222"
        }, 
        "classroom_id":17,
        "status":"DH",
        "admission_year":2018,
        "account":{
            "username": "hoangdm13",
            "password": "hoang12345678",
            "email": "hoangdm@gmail.com"
        }
    }
    {
        "person":{
            "first_name": "Long",
            "last_name": "Bui Hoang",
            "gender": "M",
            "date_of_birth": "2000-06-14",
            "address": "179 Phu Luong, Ha Noi",
            "ethnicity": "Kinh",
            "religion" : "None",
            "phone_number": "0928529434"
        }, 
        "classroom_id":18,
        "status":"DH",
        "admission_year":2018,
        "account":{
            "username": "longbh14",
            "password": "long12345678",
            "email": "longbh@gmail.com"
        }
    }
    {
        "person":{
            "first_name": "Hai Long",
            "last_name": "Phan Dinh",
            "gender": "M",
            "date_of_birth": "2000-06-15",
            "address": "178 Phu Luong, Ha Noi",
            "ethnicity": "Kinh",
            "religion" : "None",
            "phone_number": "0982362852"
        }, 
        "classroom_id":18,
        "status":"DH",
        "admission_year":2018,
        "account":{
            "username": "lonhpdh15",
            "password": "hailong12345678",
            "email": "longpdh@gmail.com"
        }
    }
```


```sql
-- Teacher
insert into account(id, username, password, email, is_admin, is_active, join_at)
values ("b7010ba85f9741eea81acc9233f53658", "us1", "123456", "us1@gmail.com", false, true, "2021-01-01"),
       ("ca53a85bea98436fa93ac73fa40d82aa", "us2", "123456", "us2@gmail.com", false, true, "2021-01-01"),
       ("8369c38c61ef4cf3a72f532b85cfa2fe", "us3", "123456", "us3@gmail.com", false, true, "2021-01-01"),
       ("5bad5086a70e4459b51fa1081d99a305", "us4", "123456", "us4@gmail.com", false, true, "2021-01-01"),
       ("bc97b631bab74cc9b91836ef584d86b1", "us5", "123456", "us5@gmail.com", false, true, "2021-01-01"),
       ("aa6d630c1860467d9ca367b0ceb0b09c", "us6", "123456", "us6@gmail.com", false, true, "2021-01-01"),
       ("1272cdc4005e46c5a1fc7841cf127213", "us7", "123456", "us7@gmail.com", false, true, "2021-01-01"),
       ("a35847f42df34bbb83dc6305d5f3abc8", "us8", "123456", "us8@gmail.com", false, true, "2021-01-01"),
       ("0b52a1bade4943c396fdf4022c38c79f", "us9", "123456", "us9@gmail.com", false, true, "2021-01-01"),
       ("b83fa17a85ec457aa748a515684d9927", "us11", "123456", "us10@gmail.com", false, true, "2021-01-01"),
       ("592acc456f5440e6aee749f6bf8596f7", "us10", "123456", "us11@gmail.com", false, true, "2021-01-01"),
       ("1c2bf4a4894043bdb8d7d11e46635b85", "us12", "123456", "us12@gmail.com", false, true, "2021-01-01"),
       ("9c04e69822294d9f9fa741fd847a37fc", "us13", "123456", "us13@gmail.com", false, true, "2021-01-01"),
       ("d2d3f4e8b63a4b359c4c10a9ae1935f7", "us14", "123456", "us14@gmail.com", false, true, "2021-01-01"),
       ("eb416ee9bdd74d408f8676780c16eaf3", "us15", "123456", "us15@gmail.com", false, true, "2021-01-01"),
       ("92de5ed0a0a34b009e07c6dc96e8f38a", "us16", "123456", "us16@gmail.com", false, true, "2021-01-01"),
       ("3fd1a35000084496b0ee48878748e693", "us17", "123456", "us17@gmail.com", false, true, "2021-01-01"),
       ("186a2680f1cf4f78bdd8c85d0ed6748f", "us18", "123456", "us18@gmail.com", false, true, "2021-01-01"),
       ("1252cab560474027bdd80fd109ca8f58", "us19", "123456", "us19@gmail.com", false, true, "2021-01-01"),
       ("5767d73a4f084afc890c9ac72e72e4a6", "us20", "123456", "us20@gmail.com", false, true, "2021-01-01"),
       ("ae2f85f5fe334e5684454752e5441e45", "us21", "123456", "us21@gmail.com", false, true, "2021-01-01"),
       ("9555ca48f9e8430e833a3e12c0a2da30", "us22", "123456", "us22@gmail.com", false, true, "2021-01-01"),
       ("dfa8ba8bf02c49aaa4e89c8269695cf4", "us23", "123456", "us23@gmail.com", false, true, "2021-01-01"),
       ("7c5bdc5eb77b4c4280422efca0bf35eb", "us24", "123456", "us24@gmail.com", false, true, "2021-01-01"),
       ("eb6c37e0853e48dd9b2a14b77a68e005", "us25", "123456", "us25@gmail.com", false, true, "2021-01-01"),
       ("605f3e11cc864f0285fa873e24c324b4", "us26", "123456", "us26@gmail.com", false, true, "2021-01-01"),
       ("a203ba1a520a43bd975166320fbd855a", "us27", "123456", "us27@gmail.com", false, true, "2021-01-01"),
       ("79c35cef16524229928ddfb693c53a0e", "us23", "123456", "us28@gmail.com", false, true, "2021-01-01"),
       ("c3d54fd3e24c4eb7adda2adc321c56a0", "us24", "123456", "us29@gmail.com", false, true, "2021-01-01"),
       ("374f6987de8349b3afbaeca2749e9ede", "us25", "123456", "us30@gmail.com", false, true, "2021-01-01"),
       ("db6088afe35341df81b8e523890c7322", "us26", "123456", "us31@gmail.com", false, true, "2021-01-01"),
       ("903272fb35b040caacc6e1a2421b0ddd", "us27", "123456", "us31@gmail.com", false, true, "2021-01-01")

```


# Person Info
```sql

-- Teacher info
insert into person_info(id, first_name, last_name, gender, date_of_birth, address, ethnicity, religion, phone_number)
values ("53c64404fca44dd69d4ba7f4f543b108", 'Ngoc', 'Nguyen Thi', 'F', '1984-04-23', '10 Hai Ba Trung, Ha Noi', 'Kinh', 'None', '09275445385'),
       ("34f809f79a844d1cb694b946bf3abc8a", 'Mai', 'Tran Thi', 'F', '1985-04-10', '52 Ton That Tung, Ha Noi', 'Kinh', 'None', '09996894433'),
       ("813e946fc3134bc2aecbef7c7cbfbb18", 'Huong', 'Le Thi', 'F', '1986-12-12', '53 Trung Hoa, Ha Noi', 'Kinh', 'None', '09918314975'),
       ("781ee411c9c14bf39a1a3ac5d85ba638", 'Thao', 'Pham Thi', 'F', '1994-07-11', '25 Yen Hoa, Ha Noi', 'Kinh', 'None', '09515807203'),
       ("15cd87297f1a4c15b956bf9128565134", 'Linh', 'Phan Thi', 'F', '1974-08-08', '46 Phuc La, Ha Noi', 'Kinh', 'None', '09646261896'),
       ("d19d41d714c14bd99c8d2b99f27c31c4", 'Phuong', 'Dang Thi', 'F', '1965-09-07', '489 Hoang Liet, Ha Noi', 'Kinh', 'None', '09620006220'),
       ("0871816cb60a421e8dd603f52c71f27c", 'Anh', 'Hoang Viet', 'F', '1974-10-06', '383 Thanh Liet, Ha Noi', 'Kinh', 'None', '09964532499'),
       ("13c9a9c9b7de44efabef7255f57321f5", 'Hoa', 'Ngo Thi', 'F', '1989-04-15', '89 Xuan Quan, Ha Noi', 'Kinh', 'None', '09589309467'),
       ("01f78cc5a36143b0a02d85f8a08e7410", 'Ha', 'Do Thi', 'F', '1995-03-23', '268 La Khe, Ha Noi', 'Kinh', 'None', '09396021192'),
       ("2883e66ed421493e8acaba5f385a813d", 'Chi', 'Nguyen Thi', 'F', '1984-04-30', '157 Quang Trung, Ha Noi', 'Kinh', 'None', '09623916428'),
       ("8b12ac7200104365b249c9b278453548", 'Nhung', 'Nguyen Thi', 'F', '1989-04-28', '278 Hai Ba Trung, Ha Noi', 'Kinh', 'None', '09437383581'),
       ("218a53b5454241de93c00d1ec3a6de65", 'Uyen', 'Phi Thi', 'F', '1989-04-29', '289 Phu Thuong, Ha Noi', 'Kinh', 'None', '09520010887'),
       ("0024536990684dfda5adb08a8cb8ca74", 'Tam', 'Nguyen Thi', 'F', '1954-04-23', '21 Mai Lam, Ha Noi', 'Kinh', 'None', '09397722080'),
       ("ead5fcc5d5334367ab644a43d8726209", 'Dan', 'Tran Thi', 'F', '1965-04-10', '67 Dong Ngac, Ha Noi', 'Kinh', 'None', '09663209009'),
       ("6b6dbf5c40cc4ba4aeffd0c0215a29ca", 'Trang', 'Le Thi', 'F', '1946-12-12', '238 Lien Mac, Ha Noi', 'Kinh', 'None', '09125699948'),
       ("a2a36194d06c4c268a6a25ba0283fc16", 'Yen', 'Pham Thi', 'F', '1957-07-11', '135 Dong Anh, Ha Noi', 'Kinh', 'None', '09103338193'),
       ("7b6d5f4a9c0f4dd0afaf81281903e89b", 'Lan', 'Phan Thi', 'F', '1956-08-08', '589 Thuy Lam, Ha Noi', 'Kinh', 'None', '09739723036'),
       ("49c513fb41ca418385bc60e734f42221", 'Ngan', 'Dang Thi', 'F', '1965-09-07', '147 Bac Viet, Ha Noi', 'Kinh', 'None', '09430301754'),
       ("a910175fe1a54195a6159442cbbaac5b", 'Chau', 'Hoang Viet', 'F', '1978-10-06', '178 Nam Hong, Ha Noi', 'Kinh', 'None', '09790677179'),
       ("4f958ef002a7424784f2d3ecbdeb9e7b", 'Chi', 'Ngo Thi', 'F', '1985-04-15', '147 Tien Phong, Ha Noi', 'Kinh', 'None', '09183101489'),
       ("486799bb2010490aa80b1ce7c587d5b3", 'Thuy', 'Do Thi', 'F', '1958-03-23', '148 Van Noi, Ha Noi', 'Kinh', 'None', '09853010227'),
       ("54eed90423ca4a6c92d580341a9b33cf", 'Thu', 'Nguyen Thi', 'F', '1998-04-30', '17 Vong La, Ha Noi', 'Kinh', 'None', '09678883267'),
       ("5c26c68bece244229e7d91966e7df31d", 'Vy', 'Nguyen Thi', 'F', '1989-04-28', '167 Thuong Cat, Ha Noi', 'Kinh', 'None', '09483703004'),
       ("60ea61de2e054b41b54ca162281bfe59", 'Hue', 'Phi Thi', 'F', '1948-04-29', '481 Duong Lieu, Ha Noi', 'Kinh', 'None', '09850731524'),
       ("3de55726966e44bab283302e3fa89bd1", 'Hong', 'Tran Thi', 'F', '1986-01-10', '16 Tho Xuan, Ha Noi', 'Kinh', 'None', '09678960885'),
       ("660e18dc53ea46bf853670e84d19cc70", 'Hien', 'Le Thi', 'F', '1979-03-12', '72 Dan Phuong, Ha Noi', 'Kinh', 'None', '09305856601'),
       ("0113731f0f424d41888de0f2e2ae73a0", 'THao', 'Pham Thi', 'F', '1978-07-24', '124 Hiep Thuan, Ha Noi', 'Kinh', 'None', '09345941674'),
       ("54cd62a97f32436db9cc160848e1f6cc", 'An', 'Phan Thi', 'F', '1974-12-25', '358 Canh Nau, Ha Noi', 'Kinh', 'None', '09712687303'),
       ("193a150d861245f0a28e09874d6d04b2", 'Lan', 'Dang Thi', 'F', '1990-10-17', '123 Huong Ngai, Ha Noi', 'Kinh', 'None', '09744831734'),
       ("770842e4387343c3b6a4da5707313571", 'Thanh', 'Hoang Viet', 'F', '1990-10-14', '14 Sai Son, Ha Noi', 'Kinh', 'None', '09336397388'),
       ("661c31500e8241feaf1baf0e45ce1326", 'My', 'Ngo Thi', 'F', '1979-06-15', '148 Van Phuc, Ha Noi', 'Kinh', 'None', '09922951999'),
       ("c00c35ad3b8743b886174e46887e1aac", 'Nhi', 'Do Thi', 'F', '1986-03-08', '184 Phu Luong, Ha Noi', 'Kinh', 'None', '09947467251')

```

# Teacher
```sql
  insert into teacher(account_id, person_id)
  values ("b7010ba85f9741eea81acc9233f53658", "53c64404fca44dd69d4ba7f4f543b108"),
         ("ca53a85bea98436fa93ac73fa40d82aa", "34f809f79a844d1cb694b946bf3abc8a"),
         ("8369c38c61ef4cf3a72f532b85cfa2fe", "813e946fc3134bc2aecbef7c7cbfbb18"),
         ("5bad5086a70e4459b51fa1081d99a305", "781ee411c9c14bf39a1a3ac5d85ba638"),
         ("bc97b631bab74cc9b91836ef584d86b1", "15cd87297f1a4c15b956bf9128565134"),
         ("aa6d630c1860467d9ca367b0ceb0b09c", "d19d41d714c14bd99c8d2b99f27c31c4"),
         ("1272cdc4005e46c5a1fc7841cf127213", "0871816cb60a421e8dd603f52c71f27c"),
         ("a35847f42df34bbb83dc6305d5f3abc8", "13c9a9c9b7de44efabef7255f57321f5"),
         ("0b52a1bade4943c396fdf4022c38c79f", "01f78cc5a36143b0a02d85f8a08e7410"),
         ("b83fa17a85ec457aa748a515684d9927", "2883e66ed421493e8acaba5f385a813d"),
         ("592acc456f5440e6aee749f6bf8596f7", "8b12ac7200104365b249c9b278453548"),
         ("1c2bf4a4894043bdb8d7d11e46635b85", "218a53b5454241de93c00d1ec3a6de65"),
         ("9c04e69822294d9f9fa741fd847a37fc", "0024536990684dfda5adb08a8cb8ca74"),
         ("d2d3f4e8b63a4b359c4c10a9ae1935f7", "ead5fcc5d5334367ab644a43d8726209"),
         ("eb416ee9bdd74d408f8676780c16eaf3", "6b6dbf5c40cc4ba4aeffd0c0215a29ca"),
         ("92de5ed0a0a34b009e07c6dc96e8f38a", "a2a36194d06c4c268a6a25ba0283fc16"),
         ("3fd1a35000084496b0ee48878748e693", "7b6d5f4a9c0f4dd0afaf81281903e89b"),
         ("186a2680f1cf4f78bdd8c85d0ed6748f", "49c513fb41ca418385bc60e734f42221"),
         ("1252cab560474027bdd80fd109ca8f58", "a910175fe1a54195a6159442cbbaac5b"),
         ("5767d73a4f084afc890c9ac72e72e4a6", "4f958ef002a7424784f2d3ecbdeb9e7b"),
         ("ae2f85f5fe334e5684454752e5441e45", "486799bb2010490aa80b1ce7c587d5b3"),
         ("9555ca48f9e8430e833a3e12c0a2da30", "54eed90423ca4a6c92d580341a9b33cf"),
         ("dfa8ba8bf02c49aaa4e89c8269695cf4", "5c26c68bece244229e7d91966e7df31d"),
         ("7c5bdc5eb77b4c4280422efca0bf35eb", "60ea61de2e054b41b54ca162281bfe59"),
         ("eb6c37e0853e48dd9b2a14b77a68e005", "3de55726966e44bab283302e3fa89bd1"),
         ("605f3e11cc864f0285fa873e24c324b4", "660e18dc53ea46bf853670e84d19cc70"),
         ("a203ba1a520a43bd975166320fbd855a", "0113731f0f424d41888de0f2e2ae73a0"),
         ("79c35cef16524229928ddfb693c53a0e", "54cd62a97f32436db9cc160848e1f6cc"),
         ("c3d54fd3e24c4eb7adda2adc321c56a0", "193a150d861245f0a28e09874d6d04b2"),
         ("374f6987de8349b3afbaeca2749e9ede", "770842e4387343c3b6a4da5707313571"),
         ("db6088afe35341df81b8e523890c7322", "661c31500e8241feaf1baf0e45ce1326"),
         ("903272fb35b040caacc6e1a2421b0ddd", "c00c35ad3b8743b886174e46887e1aac")
(

```

# Classroom
```sql
insert into classrom(class_name, location, homeroom_teacher_id)
values ('10A - K1', 'B102', 1, 4),
       ('10B - K1', 'B103', 2, 5),
       ('10C - K1', 'B104', 3, 6),
       ('10D - K1', 'B105', 4, 7),
       ('10E - K1', 'B106', 5, 8),
       ('10H - K1', 'B107', 6, 9),
       ('10G - K1', 'B108', 7, 10),
       ('10H - K1', 'B109', 8, 11),
       ('11A - K1', 'B202', 9, 12),
       ('11B - K1', 'B203', 10, 13),
       ('11C - K1', 'B204', 11, 14),
       ('11D - K1', 'B205', 12, 15),
       ('11E - K1', 'B206', 13, 16),
       ('11H - K1', 'B207', 14, 17),
       ('11G - K1', 'B208', 15, 18),
       ('11H - K1', 'B209', 16, 19),
       ('12A - K1', 'B302', 17, 1),
       ('12B - K1', 'B303', 18, 2),
       ('12C - K1', 'B304', 19, 3),
       ('12D - K1', 'B305', 20, 20),
       ('12E - K1', 'B306', 21, 21),
       ('12H - K1', 'B307', 22, 22),
       ('12G - K1', 'B308', 23, 23),
       ('12H - K1', 'B309', 24, 24);
```

# Course
```sql
insert into course(course_name, group_course)
values ('Toan', 'Sc'),
       ('Ngu van', 'So'),
       ('Ngoai ngu', 'So'),
       ('Giao duc con dan', 'So'),
       ('Dia ly', 'Sc'),
       ('Hoa hoc', 'Sc'),
       ('Vat ly', 'Sc'),
       ('Sinh hoc', 'Sc'),
       ('Cong nghe', 'Sc'),
       ('Tin hoc', 'Sc'),
       ('Giao duc the chat', 'Ph'),
       ('Giao duc quoc phong', 'Ph');
```

# Achievement
```sql
insert into achievement(achievement_name)
values ('Hoc sinh gioi 2021'),
       ('Hoc sinh tien tien 2021'),
       ('Hoc sinh gioi Toan thanh pho 2021'),
       ('Hoc sinh gioi Ngu van thanh pho 2021'),
       ('Hoc sinh gioi Vat ly thanh pho 2021'),
       ('Hoc sinh gioi Hoa hoc thanh pho 2021'),
       ('Hoc sinh gioi Ngoai ngu thanh pho 2021'),
       ('Giao vien xuat sac 2021'),
       ('Giao vien gioi thanh pho 2021'),
       ('Lop xuat sac 2021')

```

# Device
```sql
insert into device(device_name, status,price)
values ('Dai cat set - IBN01', 'O', 200000),
       ('Dai cat set - IBN02', 'O', 200000),
       ('Dai cat set - IBN03', 'O', 200000),
       ('Dai cat set - IBN04', 'O', 200000),
       ('Dai cat set - IBN05', 'O', 200000),
       ('Dai cat set - IBN06', 'O', 200000),
       ('Dai cat set - IBN07', 'O', 200000),
       ('Dai cat set - IBN08', 'O', 200000),
       ('Dai cat set - IBN09', 'O', 200000),
       ('Dai cat set - IBN010', 'O', 200000),
       ('Dai cat set - IBN011', 'O', 200000),
       ('Dai cat set - IBN012', 'O', 200000),
       ('Dai Casio-FX1', 'N', 500000),
       ('Dai Casio-FX2', 'N', 500000),
       ('Dai Casio-FX3', 'N', 500000),
       ('Dai Casio-FX4', 'N', 500000),
       ('Dai Casio-FX5', 'N', 500000),
       ('Dai Casio-FX6', 'N', 500000),
       ('Dai Casio-FX7', 'N', 500000),
       ('Dai Casio-FX8', 'N', 500000),
       ('Dai Casio-FX9', 'N', 500000),
       ('Dai Casio-FX10', 'N', 500000),
       ('Dai Casio-FX11', 'N', 500000),
       ('Dai Casio-FX12', 'N', 500000),
       ('Dai Casio-FX13', 'N', 500000),
       ('Dai Casio-FX14', 'N', 500000),
       ('Dai Casio-FX15', 'N', 500000),
       ('Dai Casio-FX16', 'N', 500000),
       ('Dai Casio-FX17', 'N', 500000),
       ('Dai Casio-FX18', 'N', 500000),
       ('Dai Casio-FX19', 'N', 500000),
       ('Dai Casio-FX20', 'N', 500000),
       ('Dieu hoa Tosiba-T1', 'N', 5000000),
       ('Dieu hoa Tosiba-T2', 'N', 5000000),
       ('Dieu hoa Tosiba-T3', 'N', 5000000),
       ('Dieu hoa Tosiba-T4', 'N', 5000000),
       ('Dieu hoa Tosiba-T5', 'N', 5000000),
       ('May chieu-M1', 'N', 10000000),
       ('May chieu-M2', 'N', 10000000),
       ('May chieu-M3', 'N', 10000000),
       ('May chieu-M4', 'N', 10000000),
       ('May chieu-M5', 'N', 10000000),
       ('Loa JBL-01', 'N', 300000),
       ('Loa JBL-02', 'N', 300000),
       ('Loa JBL-03', 'N', 300000),
       ('Loa JBL-04', 'N', 300000),
       ('Loa JBL-05', 'N', 300000),
       ('Loa JBL-06', 'N', 300000),
       ('Mic-KROK-01', 'N', 200000),
       ('Mic-KROK-02', 'N', 200000),
       ('Mic-KROK-03', 'N', 200000),
       ('Mic-KROK-04', 'N', 200000),
       ('Mic-KROK-05', 'N', 200000),
       ('Mic-KROK-06', 'N', 200000),
       ('Mic-KROK-07', 'N', 200000),
       ('Mic-KROK-08', 'N', 200000),
       ('Mic-KROK-09', 'N', 200000),
       ('Mic-KROK-10', 'N', 200000),
       ('Mic-KROK-11', 'N', 200000),
       ('Mic-KROK-12', 'N', 200000),
```
# Conduct
```sql
insert into conduct(score, semester, school_year, student_id) 
values 
       ('K', 1, 2018, 1),
       ('T', 2, 2018, 1),
       ('T', 1, 2019 , 1),
       ('T', 2, 2019, 1),
       ('T', 1, 2020, 1),

       ('T', 1, 2018, 2),
       ('T', 2, 2018, 2),
       ('T', 1, 2019, 2),
       ('T', 2, 2019, 2),
       ('T', 1, 2020, 2),

       ('K', 1, 2018, 3),
       ('T', 2, 2018, 3),
       ('K', 1, 2019, 3),
       ('T', 2, 2019, 3),
       ('T', 1, 2020, 3),

insert into conduct(semester, school_year, student_id) 
values 
       (2, 2020, 1),
       (2, 2020, 2),
       (2, 2020, 3),
```
# Grade
```sql
insert into grade(student_id, course_id, school_year, semester, quiz1, quiz2, quiz3, test, mid_term_test, final_test, start_update)
values 
      (1, 1, 2020, 1, 10, 9, 9, 8.5, 7.5, 9, '2020-12-28'),
      (1, 2, 2020, 1, 8, 9, 7, 8.5, 7, 9, '2020-12-28'),
      (1, 3, 2020, 1, 10, 7, 9, 8, 7.5, 9.5, '2020-12-28'),
      (1, 4, 2020, 1, 8.5, 9.5, 9.5, 8, 7.5, 8, '2020-12-28'),
      (1, 5, 2020, 1, 6, 7.5, 7, 8, 7.5, 7.5, '2020-12-28'),
      (1, 6, 2020, 1, 8, 8, 6, 8.5, 7.5, 7, '2020-12-28'),
      (1, 7, 2020, 1, 9, 9, 9, 8.5, 7.5, 7, '2020-12-28'),
      (1, 8, 2020, 1, 7, 9, 9, 8.5, 7.5, 8, '2020-12-28'),
      (1, 9, 2020, 1, 7, 9, 9, 8.5, 7.5, 8.5, '2020-12-28'),
      (1, 10, 2020, 1, 8, 9, 7, 8.5, 7.5, 9, '2020-12-28'),
      (1, 11, 2020, 1, 10, 9, 8, 8.5, 7.5, 10, '2020-12-28'),
      (1, 12, 2020, 1, 7, 5, 6.5, 8.5, 7.5, 6, '2020-12-28'),

      (2, 1, 2020, 1, 8.5, 9, 7.5, 8.5, 7.5, 6, '2020-12-28'),
      (2, 2, 2020, 1, 8, 9, 7.5, 7.5, 8, 10, '2020-12-28'),
      (2, 3, 2020, 1, 10, 7.5, 9.5, 8, 7.5, 9.5, '2020-12-28'),
      (2, 4, 2020, 1, 8, 9.5, 8, 8, 7.5, 8, '2020-12-28'),
      (2, 5, 2020, 1, 6.5, 7, 7, 8, 7.5, 9, '2020-12-28'),
      (2, 6, 2020, 1, 8, 8, 10, 8.5, 5, 7.5, '2020-12-28'),
      (2, 7, 2020, 1, 9, 9, 10, 8.5, 10, 9, '2020-12-28'),
      (2, 8, 2020, 1, 7, 9.5, 9, 8, 7.5, 8.5, '2020-12-28'),
      (2, 9, 2020, 1, 7.5, 9, 9.5, 8.5, 7, 8.5, '2020-12-28'),
      (2, 10, 2020, 1, 8.5, 9, 7.5, 8.5, 7, 9.5, '2020-12-28'),
      (2, 11, 2020, 1, 10, 9, 8.5, 8.5, 7, 10, '2020-12-28'),
      (2, 12, 2020, 1, 7, 10, 6.5, 10, 9, 6.5, '2020-12-28'),

      (3, 1, 2020, 1, 8, 9, 8, 7, 7.5, 9.5, '2020-12-28'),
      (3, 2, 2020, 1, 8.5, 9, 8, 8, 8, 9.5, '2020-12-28'),
      (3, 3, 2020, 1, 10, 10, 9, 8, 10, 9.5, '2020-12-28'),
      (3, 4, 2020, 1, 7.5, 9, 9, 8, 7, 8, '2020-12-28'),
      (3, 5, 2020, 1, 8, 6.5, 7, 8, 6.5, 8.5, '2020-12-28'),
      (3, 6, 2020, 1, 9, 8, 6.5, 8.5, 8.5, 7.5, '2020-12-28'),
      (3, 7, 2020, 1, 9.5, 9, 9, 8.5, 7.5, 7.5, '2020-12-28'),
      (3, 8, 2020, 1, 7, 9, 9, 8.5, 7.5, 8, '2020-12-28'),
      (3, 9, 2020, 1, 7.5, 8, 9, 8, 7.5, 8.5, '2020-12-28'),
      (3, 10, 2020, 1, 8.5, 9, 7.5, 8.5, 7.5, 9, '2020-12-28'),
      (3, 11, 2020, 1, 10, 9, 10, 8.5, 6.5, 10, '2020-12-28'),
      (3, 12, 2020, 1, 7.5, 8, 7.5, 8.5, 8.5, 10, '2020-12-28'),

insert into grade(student_id, course_id, school_year, semester, start_update)
values 
      (1, 1, 2020, 2, '2021-06-28'),
      (1, 2, 2020, 2, '2021-06-28'),
      (1, 3, 2020, 2, '2021-06-28'),
      (1, 4, 2020, 2, '2021-06-28'),
      (1, 5, 2020, 2, '2021-06-28'),
      (1, 6, 2020, 2, '2021-06-28'),
      (1, 7, 2020, 2, '2021-06-28'),
      (1, 8, 2020, 2, '2021-06-28'),
      (1, 9, 2020, 2, '2021-06-28'),
      (1, 10, 2020, 2, '2021-06-28'),
      (1, 11, 2020, 2, '2021-06-28'),
      (1, 12, 2020, 2, '2021-06-28'),

      (2, 1, 2020, 2, '2021-06-28'),
      (2, 2, 2020, 2, '2021-06-28'),
      (2, 3, 2020, 2, '2021-06-28'),
      (2, 4, 2020, 2, '2021-06-28'),
      (2, 5, 2020, 2, '2021-06-28'),
      (2, 6, 2020, 2, '2021-06-28'),
      (2, 7, 2020, 2, '2021-06-28'),
      (2, 8, 2020, 2, '2021-06-28'),
      (2, 9, 2020, 2, '2021-06-28'),
      (2, 10, 2020, 2, '2021-06-28'),
      (2, 11, 2020, 2, '2021-06-28'),
      (2, 12, 2020, 2, '2021-06-28'),

      (3, 1, 2020, 2, '2021-06-28'),
      (3, 2, 2020, 2, '2021-06-28'),
      (3, 3, 2020, 2, '2021-06-28'),
      (3, 4, 2020, 2, '2021-06-28'),
      (3, 5, 2020, 2, '2021-06-28'),
      (3, 6, 2020, 2, '2021-06-28'),
      (3, 7, 2020, 2, '2021-06-28'),
      (3, 8, 2020, 2, '2021-06-28'),
      (3, 9, 2020, 2, '2021-06-28'),
      (3, 10, 2020, 2, '2021-06-28'),
      (3, 11, 2020, 2, '2021-06-28'),
      (3, 12, 2020, 2, '2021-06-28'),
```
# Timetable
```sql
insert into timetable(classroom, teacher, course, day_of_week, shifts, semester, school_year)
values (17, 1, 1, 'Mon', 'M1', 1, 2020),
       (17, 1, 1, 'Mon', 'M2', 1, 2020),
       (17, 10, 4, 'Mon', 'M3', 1, 2020),
       (17, 12, 12, 'Mon', 'M4', 1, 2020),
       (17, 12, 12, 'Mon', 'M5', 1, 2020),
       (17, 4, 6, 'Tue', 'M1', 1, 2020),
       (17, 4, 6, 'Tue', 'M2', 1, 2020),
       (17, 5, 7, 'Tue', 'M3', 1, 2020),
       (17, 5, 7, 'Tue', 'M4', 1, 2020),
       (17, 3, 3, 'Tue', 'M5', 1, 2020),
       (17, 3, 3, 'Wed', 'M1', 1, 2020),
       (17, 3, 3, 'Wed', 'M2', 1, 2020),
       (17, 1, 10, 'Wed', 'M3', 1, 2020),
       (17, 1, 10, 'Wed', 'M4', 1, 2020),
       (17, 2, 5, 'Wed', 'M5', 1, 2020),
       (17, 10, 1, 'Thu', 'M1', 1, 2020),
       (17, 2, 1, 'Thu', 'M2', 1, 2020),
       (17, 2, 1, 'Thu', 'M3', 1, 2020),
       (17, 2, 1, 'Thu', 'M4', 1, 2020),
       (17, 5, 7, 'Thu', 'M5', 1, 2020),
       (17, 6, 8, 'Fri', 'M1', 1, 2020),
       (17, 6, 8, 'Fri', 'M2', 1, 2020),
       (17, 8, 9, 'Fri', 'M3', 1, 2020),
       (17, 11, 11, 'Fri', 'M4', 1, 2020),
       (17, 11, 11, 'Fri', 'M5', 1, 2020),
       (17, 1, 1, 'Sat', 'M1', 1, 2020),
       (17, 4, 6, 'Sat', 'M2', 1, 2020),
       (17, 6, 8, 'Sat', 'M3', 1, 2020),
       (17, 8, 9, 'Sat', 'M4', 1, 2020),
       (17, 2, 5, 'Sat', 'M5', 1, 2020),  
       (18, 10, 1, 'Mon', 'A1', 1, 2020),
       (18, 2, 1, 'Mon', 'A2', 1, 2020),
       (18, 2, 1, 'Mon', 'A3', 1, 2020),
       (18, 2, 1, 'Mon', 'A4', 1, 2020),
       (18, 5, 7, 'Mon', 'A5', 1, 2020),
       (18, 6, 8, 'Tue', 'A1', 1, 2020),
       (18, 6, 8, 'Tue', 'A2', 1, 2020),
       (18, 8, 9, 'Tue', 'A3', 1, 2020),
       (18, 11, 11, 'Tue', 'A4', 1, 2020),
       (18, 11, 11, 'Tue', 'A5', 1, 2020),
       (18, 1, 1, 'Wed', 'A1', 1, 2020),
       (18, 4, 6, 'Wed', 'A2', 1, 2020),
       (18, 6, 8, 'Wed', 'A3', 1, 2020),
       (18, 8, 9, 'Wed', 'A4', 1, 2020),
       (18, 2, 5, 'Wed', 'A5', 1, 2020),
       (18, 1, 1, 'Thu', 'A1', 1, 2020),
       (18, 1, 1, 'Thu', 'A2', 1, 2020),
       (18, 10, 4, 'Thu', 'A3', 1, 2020),
       (18, 12, 12, 'Thu', 'A4', 1, 2020),
       (18, 12, 12, 'Thu', 'A5', 1, 2020),
       (18, 4, 6, 'Fri', 'A1', 1, 2020),
       (18, 4, 6, 'Fri', 'A2', 1, 2020),
       (18, 5, 7, 'Fri', 'A3', 1, 2020),
       (18, 5, 7, 'Fri', 'A4', 1, 2020),
       (18, 3, 3, 'Fri', 'A5', 1, 2020),
       (18, 3, 3, 'Sat', 'A1', 1, 2020),
       (18, 3, 3, 'Sat', 'A2', 1, 2020),
       (18, 1, 10, 'Sat', 'A3', 1, 2020),
       (18, 1, 10, 'Sat', 'A4', 1, 2020),
       (18, 2, 5, 'Sat', 'A5', 1, 2020)
```

```
