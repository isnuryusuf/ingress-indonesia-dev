.class final Lx;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;


# instance fields
.field private synthetic a:Lc;


# direct methods
.method constructor <init>(Lc;)V
    .locals 0

    iput-object p1, p0, Lx;->a:Lc;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 3

    sget-object v0, LU;->a:Ljava/util/List;

    sget-object v1, LJ;->b:LU;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LU;

    sput-object v0, LJ;->b:LU;

    invoke-static {}, LJ;->d()V

    invoke-static {}, LJ;->c()V

    iget-object v0, p0, Lx;->a:Lc;

    iget-object v0, v0, Lc;->a:Lb;

    invoke-static {v0}, Lb;->d(Lb;)V

    iget-object v0, p0, Lx;->a:Lc;

    iget-object v0, v0, Lc;->a:Lb;

    invoke-static {v0}, Lb;->d(Lb;)LG;

    move-result-object v0

    iget-object v0, v0, LG;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string v1, "Restart is recommended"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
