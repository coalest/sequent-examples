VIEW_SCHEMA_VERSION = 4

class SequentMigrations < Sequent::Migrations::Projectors
  def self.version
    VIEW_SCHEMA_VERSION
  end

  def self.versions
    {
      '1' => [

      ],
      '2' => [
        Projectors::PostProjector,
      ],
      '3' => [
        Projectors::PostProjector,
      ],
      '4' => [
        Sequent::Migrations.alter_table(Projections::PostRecord),
      ],
    }
  end
end
