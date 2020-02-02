class Post {
  const Post({
    this.title,
    this.author,
    this.imageUrl
  });

  final String title;
  final String author;
  final String imageUrl;
}

final List<Post> post = [
  Post(
    title: 'title1',
    author: 'author1',
    imageUrl: 'https://upload-images.jianshu.io/upload_images/2400087-662fb54fe6b65892.png?imageMogr2/auto-orient/strip|imageView2/2/w/540/format/webp',
  ),
  Post(
    title: 'title2',
    author: 'author2',
    imageUrl: 'https://upload-images.jianshu.io/upload_images/2400087-e8de5422bbbe0bea.png?imageMogr2/auto-orient/strip|imageView2/2/w/430/format/webp',
  ),
  
  Post(
    title: 'title3',
    author: 'author3',
    imageUrl: 'https://upload-images.jianshu.io/upload_images/2400087-57f04a6b5cba1efe.png?imageMogr2/auto-orient/strip|imageView2/2/w/430/format/webp',
  ),
];