.class final Lo;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;


# instance fields
.field private synthetic a:Lc;


# direct methods
.method constructor <init>(Lc;)V
    .locals 0

    iput-object p1, p0, Lo;->a:Lc;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 3

    invoke-static {}, LS;->values()[LS;

    move-result-object v0

    sget-object v1, LJ;->a:LS;

    invoke-virtual {v1}, LS;->ordinal()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {}, LS;->values()[LS;

    move-result-object v2

    array-length v2, v2

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    sput-object v0, LJ;->a:LS;

    invoke-static {}, LJ;->d()V

    iget-object v0, p0, Lo;->a:Lc;

    iget-object v0, v0, Lc;->a:Lb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lb;->a(Lb;Z)V

    return-void
.end method
