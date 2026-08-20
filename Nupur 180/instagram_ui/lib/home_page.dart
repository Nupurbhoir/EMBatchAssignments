import 'package:flutter/material.dart';

class Post {
  final String username;
  final String description;
  final String imagePath;

  const Post({
    required this.username,
    required this.description,
    required this.imagePath,
  });
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // Three posts
final List<Post> posts = const [
  Post(
    username: 'flutter_student',
    description: 'Learning Flutter one widget at a time 🚀',
    imagePath: 'assets/post1.jpg',
  ),

  Post(
    username: 'flutter_developer',
    description: 'Building beautiful apps with Flutter 💙',
    imagePath: 'assets/post2.jpg',
  ),

  Post(
    username: 'dart_coder',
    description: 'Dart + Flutter = ❤️',
    imagePath: 'assets/post3.jpg',
  ),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // Instagram heading
      appBar: AppBar(
        title: const Text(
          'Instagram',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Icon(Icons.favorite_border),
          SizedBox(width: 20),
          Icon(Icons.send_outlined),
          SizedBox(width: 16),
        ],
      ),

      // Instagram-style mobile width
      body: Center(
        child: SizedBox(
          width: 390,

          // Scrollable feed
          child: ListView.builder(
            padding: const EdgeInsets.only(bottom: 20),
            itemCount: posts.length,
            itemBuilder: (context, index) {
              return PostContainer(
                post: posts[index],
              );
            },
          ),
        ),
      ),
    );
  }
}


// ----------------------------------------------------
// POST CONTAINER
// ----------------------------------------------------

class PostContainer extends StatefulWidget {
  final Post post;

  const PostContainer({
    super.key,
    required this.post,
  });

  @override
  State<PostContainer> createState() => _PostContainerState();
}

class _PostContainerState extends State<PostContainer> {

  // Real like counter
  int likes = 0;

  // Whether this post is liked
  bool isLiked = false;

  // Like / unlike function
  void addLike() {
  setState(() {
    likes++;
    isLiked = true;
  });
}

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // ------------------------------------------------
          // PROFILE SECTION
          // ------------------------------------------------

          Padding(
            padding: const EdgeInsets.all(12),

            child: Row(
              children: [

                // Profile picture
                const CircleAvatar(
                  radius: 24,
                  child: Icon(
                    Icons.person,
                    size: 28,
                  ),
                ),

                const SizedBox(width: 12),

                // Username
                Expanded(
                  child: Text(
                    widget.post.username,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),

                // Follow button
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('Follow'),
                ),
              ],
            ),
          ),

          // ------------------------------------------------
          // SQUARE POST
          // ------------------------------------------------

 AspectRatio(
  aspectRatio: 1 / 1,
  child: Image.asset(
    widget.post.imagePath,
    width: double.infinity,
    height: double.infinity,
    fit: BoxFit.cover,
  ),
),
          // ------------------------------------------------
          // LIKE / COMMENT / SHARE / BOOKMARK
          // ------------------------------------------------

          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 8,
            ),

            child: Row(
              children: [

                // Like icon
                GestureDetector(
                    onTap: addLike,

                  child: Icon(
                    isLiked
                        ? Icons.favorite
                        : Icons.favorite_border,

                    color: isLiked
                        ? Colors.red
                        : Colors.black,

                    size: 28,
                  ),
                ),

                const SizedBox(width: 18),

                // Comment
                const Icon(
                  Icons.chat_bubble_outline,
                  size: 27,
                ),

                const SizedBox(width: 18),

                // Share
                const Icon(
                  Icons.send_outlined,
                  size: 27,
                ),

                const Spacer(),

                // Bookmark
                const Icon(
                  Icons.bookmark_border,
                  size: 28,
                ),
              ],
            ),
          ),

          // ------------------------------------------------
          // REAL LIKE COUNT
          // ------------------------------------------------

          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),

            child: Text(
              '$likes likes',

              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // ------------------------------------------------
          // CAPTION
          // ------------------------------------------------

          Padding(
            padding: const EdgeInsets.all(12),

            child: Text(
              '${widget.post.username} '
              '${widget.post.description}',
            ),
          ),

          // ------------------------------------------------
          // LIKE BUTTON
          // ------------------------------------------------

          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),

            child: SizedBox(
              width: double.infinity,

              child: OutlinedButton.icon(

                onPressed: addLike,

                icon: Icon(
                  isLiked
                      ? Icons.favorite
                      : Icons.favorite_border,

                  color: isLiked
                      ? Colors.red
                      : null,
                ),

                label: Text(
                  isLiked
                      ? 'Liked'
                      : 'Like this post',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}