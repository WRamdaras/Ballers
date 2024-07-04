<?php

namespace App\Entity;

use App\Repository\PlayersRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: PlayersRepository::class)]
class Players
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $name = null;

    #[ORM\Column(length: 255)]
    private ?string $age = null;

    #[ORM\Column(length: 255)]
    private ?string $nationality = null;

    #[ORM\Column(length: 255)]
    private ?string $team = null;

    #[ORM\Column(length: 255)]
    private ?string $trophy = null;

    #[ORM\Column(length: 255)]
    private ?string $position = null;

    #[ORM\Column(length: 255)]
    private ?string $goals = null;

    #[ORM\Column(length: 255)]
    private ?string $assists = null;

    #[ORM\Column(length: 255)]
    private ?string $img = null;

    #[ORM\OneToMany(mappedBy: 'player', targetEntity: PlayerTrophy::class)]
    private Collection $playerTrophies;

    #[ORM\ManyToMany(targetEntity: Clubs::class, inversedBy: 'players')]
    private Collection $clubs;

    public function __construct()
    {
        $this->playerTrophies = new ArrayCollection();
        $this->clubs = new ArrayCollection();
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

    public function getAge(): ?string
    {
        return $this->age;
    }

    public function setAge(string $age): static
    {
        $this->age = $age;

        return $this;
    }

    public function getNationality(): ?string
    {
        return $this->nationality;
    }

    public function setNationality(string $nationality): static
    {
        $this->nationality = $nationality;

        return $this;
    }

    public function getTeam(): ?string
    {
        return $this->team;
    }

    public function setTeam(string $team): static
    {
        $this->team = $team;

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

    public function getPosition(): ?string
    {
        return $this->position;
    }

    public function setPosition(string $position): static
    {
        $this->position = $position;

        return $this;
    }

    public function getGoals(): ?string
    {
        return $this->goals;
    }

    public function setGoals(string $goals): static
    {
        $this->goals = $goals;

        return $this;
    }

    public function getAssists(): ?string
    {
        return $this->assists;
    }

    public function setAssists(string $assists): static
    {
        $this->assists = $assists;

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
     * @return Collection<int, PlayerTrophy>
     */
    public function getPlayerTrophies(): Collection
    {
        return $this->playerTrophies;
    }

    public function addPlayerTrophy(PlayerTrophy $playerTrophy): static
    {
        if (!$this->playerTrophies->contains($playerTrophy)) {
            $this->playerTrophies->add($playerTrophy);
            $playerTrophy->setPlayer($this);
        }

        return $this;
    }

    public function removePlayerTrophy(PlayerTrophy $playerTrophy): static
    {
        if ($this->playerTrophies->removeElement($playerTrophy)) {
            // set the owning side to null (unless already changed)
            if ($playerTrophy->getPlayer() === $this) {
                $playerTrophy->setPlayer(null);
            }
        }

        return $this;
    }

    /**
     * @return Collection<int, Clubs>
     */
    public function getClubs(): Collection
    {
        return $this->clubs;
    }

    public function addClub(Clubs $club): static
    {
        if (!$this->clubs->contains($club)) {
            $this->clubs->add($club);
        }

        return $this;
    }

    public function removeClub(Clubs $club): static
    {
        $this->clubs->removeElement($club);

        return $this;
    }
}
