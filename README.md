facebook

1. 좋아요
Post.find(1).likes.count
=>4
2. 나이
User.find(10).age
=>56
3. 그룹
User.find(10).group.name
=>"old"
4. 댓글내용
Post.find(1).comments.find(1).content
=>"첫글댓글"

하위디비 접근: 복수형
상위디비, 칼럼명 접근:단수형
