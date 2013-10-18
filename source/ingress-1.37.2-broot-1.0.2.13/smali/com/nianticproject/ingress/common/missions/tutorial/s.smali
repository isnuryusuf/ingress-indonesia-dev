.class final Lcom/nianticproject/ingress/common/missions/tutorial/s;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/tutorial/r;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/tutorial/r;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/tutorial/s;->a:Lcom/nianticproject/ingress/common/missions/tutorial/r;

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
    .line 51
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/s;->a:Lcom/nianticproject/ingress/common/missions/tutorial/r;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/tutorial/r;->a(Lcom/nianticproject/ingress/common/missions/tutorial/r;)Lcom/nianticproject/ingress/common/w/b;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/common/missions/af;->r:Lcom/nianticproject/ingress/common/w/d;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/b;->a(Lcom/nianticproject/ingress/common/w/d;)V

    .line 52
    return-void
.end method
