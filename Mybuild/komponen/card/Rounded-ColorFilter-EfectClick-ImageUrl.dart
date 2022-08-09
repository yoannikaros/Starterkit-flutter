// Card(
// child: Bounceable(
// onTap: () {
// Navigator.push(
// context,
// MaterialPageRoute(
// builder: (context) => DetailNews(
// previewText: previewText, imageUrl: imageUrl,
// adminName: admin,
// updatedAt: '',
// createdAt: createdAt,
// title: title!,
// content: '',
// )),
// );
// },
// child: Stack(
// children: [
//
// ColorFiltered(
// colorFilter: const ColorFilter.mode(
// Colors.brown,
// BlendMode.modulate,
// ),
//
// child: ClipRRect(
// borderRadius: BorderRadius.circular(10.0),
// child: CachedNetworkImage(
// imageUrl: imageUrl,
// width: double.infinity,
// fit: BoxFit.cover,
// height: 240,
// ),
// ),
// ),