import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/widgets/news_container.dart';

List<NewsModel> newsList = [
  NewsModel(
    image: 'https://images.unsplash.com/photo-1504711434969-e33886168f5c',
    title: 'AI Breakthrough in Medical Imaging',
    description:
        'Researchers developed a new deep learning model that improves tumor detection accuracy in MRI scans.',
  ),
  NewsModel(
    image: 'https://images.unsplash.com/photo-1492724441997-5dc865305da7',
    title: 'Global Tech Conference 2026 Highlights',
    description:
        'Industry leaders gathered to discuss the future of artificial intelligence and cloud computing.',
  ),
  NewsModel(
    image: 'https://images.unsplash.com/photo-1522202176988-66273c2fd55f',
    title: 'Startups Drive Innovation in FinTech',
    description:
        'Emerging startups are reshaping digital payments and financial accessibility worldwide.',
  ),
  NewsModel(
    image: 'https://images.unsplash.com/photo-1504384308090-c894fdcc538d',
    title: 'Advancements in Renewable Energy',
    description:
        'Solar and wind technologies continue to become more efficient and affordable.',
  ),
  NewsModel(
    image: 'https://images.unsplash.com/photo-1517245386807-bb43f82c33c4',
    title: 'Cybersecurity Trends to Watch',
    description:
        'Experts warn businesses about increasing ransomware attacks and data breaches.',
  ),
  NewsModel(
    image: 'https://images.unsplash.com/photo-1498050108023-c5249f4df085',
    title: 'Flutter 4.0 Released',
    description:
        'The latest Flutter update introduces performance improvements and new UI components.',
  ),
  NewsModel(
    image: 'https://images.unsplash.com/photo-1518779578993-ec3579fee39f',
    title: 'Quantum Computing Milestone Achieved',
    description:
        'Scientists report a major step forward in stable quantum processor development.',
  ),
  NewsModel(
    image: 'https://images.unsplash.com/photo-1487014679447-9f8336841d58',
    title: 'Remote Work Statistics 2026',
    description:
        'A recent survey shows continued growth in hybrid and remote job opportunities.',
  ),
  NewsModel(
    image: 'https://images.unsplash.com/photo-1492724441997-5dc865305da7',
    title: 'E-commerce Market Expansion',
    description:
        'Online shopping platforms see record-breaking sales during the last quarter.',
  ),
  NewsModel(
    image: 'https://images.unsplash.com/photo-1500530855697-b586d89ba3ee',
    title: 'Space Exploration Update',
    description:
        'A new satellite mission aims to explore distant regions of our solar system.',
  ),
];

class NewsListView extends StatelessWidget {
  const NewsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: newsList.length,
      itemBuilder: (context, index) {
        return NewsTile(news: newsList[index]);
      },
    );
  }
}
