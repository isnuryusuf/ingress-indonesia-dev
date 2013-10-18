.class final Ld;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;


# instance fields
.field private synthetic a:Lc;


# direct methods
.method constructor <init>(Lc;)V
    .locals 0

    iput-object p1, p0, Ld;->a:Lc;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 1

    sget-boolean v0, LJ;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LJ;->a:Z

    iget-object v0, p0, Ld;->a:Lc;

    iget-object v0, v0, Lc;->a:Lb;

    invoke-static {v0}, Lb;->a(Lb;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
