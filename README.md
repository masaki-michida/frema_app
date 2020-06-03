# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation
# DB設計
## Itemsテーブル
|Column      |Type      |Option                           |
|------------|----------|---------------------------------|
|user_id     |references|foreign_key: true, null: false   |
|name        |string    |null: false                      |
|statement   |text      |null: false                      |
|category_id |references|foreign_key: true, null: false   |
|brand_id    |references|foreign_key: true, optional: true|
|condition   |integer   |null: false                      |
|delivery-fee|integer   |null: false                      |
|region      |references|foreign_key: true, null: false   |
|lag         |integer   |null: false                      |
|price       |integer   |null: false                      |
|status      |integer   |null: false                      |

### Association
has_many  : images
belongs_to: category
belongs_to: brand
belongs_to: trades
belongs_to: user
belongs_to: prefecture

## Usersテーブル
|Column         |Type      |Option                        |
|---------------|----------|------------------------------|
|nickname       |string    |null: false                   |
|email          |string    |null: false                   |
|password       |string    |null: false                   |
|familyname     |string    |null: false                   |
|firstname      |string    |null: false                   |
|family-ch      |string    |null: false                   |
|first-ch       |string    |null: false                   |
|birth          |integer   |null: false                   |
|to-familyname  |string    |null: false                   |
|to-firstname   |string    |null: false                   |
|to-family-ch   |string    |null: false                   |
|to-firstname-ch|string    |null: false                   |
|zip            |integer   |null: false                   |
|prefecture     |references|foreign_key: true, null: false|
|address        |string    |null: false                   |
|number         |integer   |null: false                   |

### Association
has_many  : items
has_many  : trades
belongs_to: card
belongs_to: prefecture

## Tradesテーブル
|Column      |Type      |Option                           |
|------------|----------|---------------------------------|
|item_id     |references|foreign_key: true, null: false   |
|user_id     |references|foreign_key: true, null: false   |
|status      |integer   |null: false                      |

### Association
belongs_to: item
belongs_to: user

## Cardsテーブル
|Column      |Type      |Option                           |
|------------|----------|---------------------------------|
|user_id     |references|foreign_key: true, null: false   |
|customer_id |string    |                                 |
|card_id     |string    |                                 |

### Association
belongs_to: user

## Imagesテーブル
|Column      |Type      |Option                           |
|------------|----------|---------------------------------|
|item_id     |references|foreign_key: true, null: false   |
|content     |string    |null: false                      |

### Association
belongs_to: item

## Categoriesテーブル
|Column      |Type      |Option                           |
|------------|----------|---------------------------------|
|name        |string    |null: false                      |

### Association
has_many  : items

## Brandsテーブル
|Column      |Type      |Option                           |
|------------|----------|---------------------------------|
|name        |string    |null: false                      |

### Association
has_many  : items

## Prefecturesテーブル
|Column      |Type      |Option                           |
|------------|----------|---------------------------------|
|name        |string    |null: false                      |

### Association
has_many  : users
has_many  : items

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
