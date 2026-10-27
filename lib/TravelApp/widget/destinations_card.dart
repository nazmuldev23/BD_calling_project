import 'package:flutter/material.dart';
import 'package:bd_calling_batch2/TravelApp/models/destinations_card_model.dart';

class DestinationsCard extends StatelessWidget {
  final DestinationCardModel destination;

  const DestinationsCard({
    super.key,
    required this.destination,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 180,
      child: Card(
        color: Colors.orange.shade50,
        elevation: 4,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Cover Image
            Expanded(
              child: Image.network(
                destination.image,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return const Center(
                    child: Icon(Icons.broken_image),
                  );
                },
              ),
            ),

            // Destination Information
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    destination.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        size: 16,
                        color: Colors.green,
                      ),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          destination.location,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 16,
                      ),
                      const SizedBox(width: 3),
                      Text(
                        destination.rating.toString(),
                        style: const TextStyle(
                          color: Colors.lightGreen,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}