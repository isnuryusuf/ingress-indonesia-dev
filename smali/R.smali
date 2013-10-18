.class final LR;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;


# instance fields
.field private synthetic a:LQ;


# direct methods
.method constructor <init>(LQ;)V
    .locals 0

    iput-object p1, p0, LR;->a:LQ;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 2

    iget-object v0, p0, LR;->a:LQ;

    iget-object v0, v0, LQ;->a:Lcom/nianticproject/ingress/gameentity/f;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, LJ;->a:Lcom/nianticproject/ingress/common/inventory/i;

    iget-object v1, p0, LR;->a:LQ;

    iget-object v1, v1, LQ;->a:Lcom/nianticproject/ingress/gameentity/f;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/inventory/i;->a(Lcom/nianticproject/ingress/gameentity/f;)V

    goto :goto_0
.end method
