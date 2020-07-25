-- Project Name : Example
-- Date/Time    : 2020/07/25 17:55:32
-- Author       : uhey22e
-- RDBMS Type   : PostgreSQL
-- Application  : A5:SQL Mk-2

-- 投稿
create table posts (
  post_id bigserial not null
  , body text not null
  , author_user_id bigint not null
  , constraint posts_PKC primary key (post_id)
);

-- 投稿-タグ
create table posts_tags (
  post_id bigint not null
  , tag_id bigint not null
  , constraint posts_tags_PKC primary key (post_id,tag_id)
);

-- タグ
create table tags (
  tag_id bigserial not null
  , tag_name varchar(255) not null
  , constraint tags_PKC primary key (tag_id)
);

-- ユーザ
create table users (
  user_id bigserial not null
  , user_name varchar(255) not null
  , constraint users_PKC primary key (user_id)
);

comment on table posts is '投稿';
comment on column posts.post_id is '投稿ID';
comment on column posts.body is '投稿内容';
comment on column posts.author_user_id is '作成ユーザID';

comment on table posts_tags is '投稿-タグ';
comment on column posts_tags.post_id is '投稿ID';
comment on column posts_tags.tag_id is 'タグID';

comment on table tags is 'タグ';
comment on column tags.tag_id is 'タグID';
comment on column tags.tag_name is 'タグ名';

comment on table users is 'ユーザ';
comment on column users.user_id is 'ユーザID';
comment on column users.user_name is 'ユーザ名';
