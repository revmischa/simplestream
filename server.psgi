use Moose;
use Tatsumaki;
use Tatsumaki::Error;
use Tatsumaki::Application;
use File::Basename;

my $app = Tatsumaki::Application->new([
    '/' => 'MainHandler',
]);

$app->static_path(dirname(__FILE__) . "/static");
$app->template_path(dirname(__FILE__) . "/templates");
return $app;


package MainHandler;
use base qw(Tatsumaki::Handler);

sub get {
    my($self, $channel) = @_;
    $self->render('index.html');
}

