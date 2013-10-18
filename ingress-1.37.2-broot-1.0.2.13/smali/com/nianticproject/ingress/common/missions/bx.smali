.class final Lcom/nianticproject/ingress/common/missions/bx;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/bp;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/bp;)V
    .locals 0
    .parameter

    .prologue
    .line 548
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/bx;->a:Lcom/nianticproject/ingress/common/missions/bp;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 551
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bx;->a:Lcom/nianticproject/ingress/common/missions/bp;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/bp;->k(Lcom/nianticproject/ingress/common/missions/bp;)V

    .line 552
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bx;->a:Lcom/nianticproject/ingress/common/missions/bp;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/bp;->b(Lcom/nianticproject/ingress/common/missions/bp;)Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->n()Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v0

    const-class v1, Lcom/nianticproject/ingress/common/missions/cc;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/t;->c(Ljava/lang/Class;)Lcom/nianticproject/ingress/common/ui/m;

    .line 553
    return-void
.end method
