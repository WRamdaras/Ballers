<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20240613100350 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE player_trophy (id INT AUTO_INCREMENT NOT NULL, player_id INT NOT NULL, trophy_id INT NOT NULL, year INT NOT NULL, INDEX IDX_8E2A6C3799E6F5DF (player_id), INDEX IDX_8E2A6C37F59AEEEF (trophy_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE player_trophy ADD CONSTRAINT FK_8E2A6C3799E6F5DF FOREIGN KEY (player_id) REFERENCES players (id)');
        $this->addSql('ALTER TABLE player_trophy ADD CONSTRAINT FK_8E2A6C37F59AEEEF FOREIGN KEY (trophy_id) REFERENCES trophy (id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE player_trophy DROP FOREIGN KEY FK_8E2A6C3799E6F5DF');
        $this->addSql('ALTER TABLE player_trophy DROP FOREIGN KEY FK_8E2A6C37F59AEEEF');
        $this->addSql('DROP TABLE player_trophy');
    }
}
