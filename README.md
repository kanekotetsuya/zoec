# DB設計

## users table

| column       | type     | options                    |
|:------------:|:--------:|:--------------------------:|
| name         | string   | null: false                |
| kana_name    | string   | null: false                |
| email        | string   | null: false, unique: true  |
| postal_code  | integer  | null: false                |
| address1     | string   | null: false                |
| address2     | string   | null: false                |
| phone        | integer  | null: false, unique: true  |
| password     | string   | null: false                |
| authority    | integer  | null: false                |
#### authority has customer,product_admin,master_admin
#### authority_rank 0<10<20<30<40<50 ??

### Association
has_many :orders  



## products table

| column            | type     | options                   |
|:-----------------:|:--------:|:-------------------------:|
| name              | string   | null: false, unique: true |
| product_code      | string   | null: false, unique: true |
| product_category  | string   | null: false               |
| price             | integer  | null: false               |
| description       | text     |                           |
| image             | text     | null: false               |
| count             | integer  | null: false               |

### Association
belongs_to :order  



## orders table

| column  | type    | options                               |
|:-------:|:-------:|:-------------------------------------:|
| user_id | integer | t.references :user, foreign_key: true |
| cart_id | integer | null: false                           |
| product | integer | null: false                           |


### Association
belongs_to :user  
has_many :products  


