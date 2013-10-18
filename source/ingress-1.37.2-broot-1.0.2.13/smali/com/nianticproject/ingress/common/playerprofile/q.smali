.class final Lcom/nianticproject/ingress/common/playerprofile/q;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/playerprofile/o;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/playerprofile/o;)V
    .locals 0
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lcom/nianticproject/ingress/common/playerprofile/q;->a:Lcom/nianticproject/ingress/common/playerprofile/o;

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
    .line 335
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/q;->a:Lcom/nianticproject/ingress/common/playerprofile/o;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/playerprofile/o;->a(Lcom/nianticproject/ingress/common/playerprofile/o;)Lcom/nianticproject/ingress/common/playerprofile/s;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/q;->a:Lcom/nianticproject/ingress/common/playerprofile/o;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/playerprofile/o;->b(Lcom/nianticproject/ingress/common/playerprofile/o;)Lcom/nianticproject/ingress/common/playerprofile/t;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/playerprofile/s;->a(Lcom/nianticproject/ingress/common/playerprofile/t;)V

    .line 336
    return-void
.end method
