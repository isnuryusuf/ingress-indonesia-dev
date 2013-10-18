.class final Lcom/nianticproject/ingress/common/playerprofile/bg;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/playerprofile/bd;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/playerprofile/bd;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/nianticproject/ingress/common/playerprofile/bg;->a:Lcom/nianticproject/ingress/common/playerprofile/bd;

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
    .line 251
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bg;->a:Lcom/nianticproject/ingress/common/playerprofile/bd;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/playerprofile/bd;->a(Lcom/nianticproject/ingress/common/playerprofile/bd;)Lcom/nianticproject/ingress/common/playerprofile/bk;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/playerprofile/bk;->a()V

    .line 252
    return-void
.end method
