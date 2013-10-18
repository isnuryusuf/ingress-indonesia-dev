.class final Lcom/nianticproject/ingress/common/playerprofile/at;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/playerprofile/ap;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/playerprofile/ap;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/nianticproject/ingress/common/playerprofile/at;->a:Lcom/nianticproject/ingress/common/playerprofile/ap;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 235
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/at;->a:Lcom/nianticproject/ingress/common/playerprofile/ap;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/playerprofile/ap;->a(Lcom/nianticproject/ingress/common/playerprofile/ap;)Lcom/nianticproject/ingress/common/playerprofile/bk;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/playerprofile/bk;->a()V

    .line 236
    return-void
.end method
