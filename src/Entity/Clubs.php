<?php

namespace App\Entity;

use App\Repository\ClubsRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: ClubsRepository::class)]
class Clubs
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $name = null;

    #[ORM\Column(length: 255)]
    private ?string $created = null;

    #[ORM\Column(length: 255)]
    private ?string $country = null;

    #[ORM\Column(length: 255)]
    private ?string $league = null;

    #[ORM\Column(length: 255)]
    private ?string $trophy = null;

    #[ORM\Column(length: 255)]
    private ?string $img = null;

    #[ORM\ManyToMany(targetEntity: Players::class, mappedBy: 'clubs')]
    private Collection $players;

    public function __construct()
    {
        $this->players = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(string $name): static
    {
        $this->name = $name;

        return $this;
    }

    public function getCreated(): ?string
    {
        return $this->created;
    }

    public function setCreated(string $created): static
    {
        $this->created = $created;

        return $this;
    }

    public function getCountry(): ?string
    {
        return $this->country;
    }

    public function setCountry(string $country): static
    {
        $this->country = $country;

        return $this;
    }

    public function getLeague(): ?string
    {
        return $this->league;
    }

    public function setLeague(string $league): static
    {
        $this->league = $league;

        return $this;
    }

    public function getTrophy(): ?string
    {
        return $this->trophy;
    }

    public function setTrophy(string $trophy): static
    {
        $this->trophy = $trophy;

        return $this;
    }

    public function getImg(): ?string
    {
        return $this->img;
    }

    public function setImg(string $img): static
    {
        $this->img = $img;

        return $this;
    }

    /**
     * @return Collection<int, Players>
     */
    public function getPlayers(): Collection
    {
        return $this->players;
    }

    public function addPlayer(Players $player): static
    {
        if (!$this->players->contains($player)) {
            $this->players->add($player);
            $player->addClub($this);
        }

        return $this;
    }

    public function removePlayer(Players $player): static
    {
        if ($this->players->removeElement($player)) {
            $player->removeClub($this);
        }

        return $this;
    }
}
