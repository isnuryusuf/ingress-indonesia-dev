.class final Lq;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;


# instance fields
.field private synthetic a:Lc;


# direct methods
.method constructor <init>(Lc;)V
    .locals 0

    iput-object p1, p0, Lq;->a:Lc;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 2

    sget v0, LJ;->a:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x3

    sput v0, LJ;->a:I

    iget-object v0, p0, Lq;->a:Lc;

    iget-object v0, v0, Lc;->a:Lb;

    invoke-static {v0}, Lb;->c(Lb;)V

    iget-object v0, p0, Lq;->a:Lc;

    iget-object v0, v0, Lc;->a:Lb;

    invoke-static {v0}, Lb;->d(Lb;)LG;

    move-result-object v0

    iget-object v0, v0, LG;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string v1, "Restart is recommended"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
