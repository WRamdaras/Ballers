<?php

namespace App\Repository;

use App\Entity\PlayerTrophy;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<PlayerTrophy>
 *
 * @method PlayerTrophy|null find($id, $lockMode = null, $lockVersion = null)
 * @method PlayerTrophy|null findOneBy(array $criteria, array $orderBy = null)
 * @method PlayerTrophy[]    findAll()
 * @method PlayerTrophy[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class PlayerTrophyRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, PlayerTrophy::class);
    }

//    /**
//     * @return PlayerTrophy[] Returns an array of PlayerTrophy objects
//     */
//    public function findByExampleField($value): array
//    {
//        return $this->createQueryBuilder('p')
//            ->andWhere('p.exampleField = :val')
//            ->setParameter('val', $value)
//            ->orderBy('p.id', 'ASC')
//            ->setMaxResults(10)
//            ->getQuery()
//            ->getResult()
//        ;
//    }

//    public function findOneBySomeField($value): ?PlayerTrophy
//    {
//        return $this->createQueryBuilder('p')
//            ->andWhere('p.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
}
