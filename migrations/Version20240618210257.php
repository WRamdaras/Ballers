<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20240618210257 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE players_clubs (players_id INT NOT NULL, clubs_id INT NOT NULL, INDEX IDX_B8981889F1849495 (players_id), INDEX IDX_B89818892FC7F5AF (clubs_id), PRIMARY KEY(players_id, clubs_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE players_clubs ADD CONSTRAINT FK_B8981889F1849495 FOREIGN KEY (players_id) REFERENCES players (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE players_clubs ADD CONSTRAINT FK_B89818892FC7F5AF FOREIGN KEY (clubs_id) REFERENCES clubs (id) ON DELETE CASCADE');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE players_clubs DROP FOREIGN KEY FK_B8981889F1849495');
        $this->addSql('ALTER TABLE players_clubs DROP FOREIGN KEY FK_B89818892FC7F5AF');
        $this->addSql('DROP TABLE players_clubs');
    }
}
