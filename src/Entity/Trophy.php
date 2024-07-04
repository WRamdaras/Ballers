<?php

namespace App\Entity;

use App\Repository\TrophyRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: TrophyRepository::class)]
class Trophy
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $name = null;

    #[ORM\Column(length: 255)]
    private ?string $img = null;

    #[ORM\OneToMany(mappedBy: 'trophy', targetEntity: PlayerTrophy::class)]
    private Collection $playerTrophies;

    public function __construct()
    {
        $this->playerTrophies = new ArrayCollection();
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
            $playerTrophy->setTrophy($this);
        }

        return $this;
    }

    public function removePlayerTrophy(PlayerTrophy $playerTrophy): static
    {
        if ($this->playerTrophies->removeElement($playerTrophy)) {
            // set the owning side to null (unless already changed)
            if ($playerTrophy->getTrophy() === $this) {
                $playerTrophy->setTrophy(null);
            }
        }

        return $this;
    }
}
