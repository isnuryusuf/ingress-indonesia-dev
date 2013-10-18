.class final Lcom/nianticproject/ingress/common/playerprofile/aa;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/playerprofile/z;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/playerprofile/z;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/nianticproject/ingress/common/playerprofile/aa;->a:Lcom/nianticproject/ingress/common/playerprofile/z;

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
    .line 68
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getListenerActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;

    .line 69
    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/aa;->a:Lcom/nianticproject/ingress/common/playerprofile/z;

    invoke-static {v1, v0}, Lcom/nianticproject/ingress/common/playerprofile/z;->a(Lcom/nianticproject/ingress/common/playerprofile/z;Lcom/nianticproject/ingress/common/playerprofile/BadgeView;)V

    .line 70
    return-void
.end method
