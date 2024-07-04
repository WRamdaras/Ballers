<?php

namespace App\Entity;

use App\Repository\PlayerTrophyRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: PlayerTrophyRepository::class)]
class PlayerTrophy
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column]
    private ?int $year = null;

    #[ORM\ManyToOne(inversedBy: 'playerTrophies')]
    #[ORM\JoinColumn(nullable: false)]
    private ?Players $player = null;

    #[ORM\ManyToOne(inversedBy: 'playerTrophies')]
    #[ORM\JoinColumn(nullable: false)]
    private ?Trophy $trophy = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getYear(): ?int
    {
        return $this->year;
    }

    public function setYear(int $year): static
    {
        $this->year = $year;

        return $this;
    }

    public function getPlayer(): ?Players
    {
        return $this->player;
    }

    public function setPlayer(?Players $player): static
    {
        $this->player = $player;

        return $this;
    }

    public function getTrophy(): ?Trophy
    {
        return $this->trophy;
    }

    public function setTrophy(?Trophy $trophy): static
    {
        $this->trophy = $trophy;

        return $this;
    }
}
