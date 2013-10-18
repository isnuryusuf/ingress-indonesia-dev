.class final Lcom/nianticproject/ingress/common/playerprofile/p;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/playerprofile/o;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/playerprofile/o;)V
    .locals 0
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/nianticproject/ingress/common/playerprofile/p;->a:Lcom/nianticproject/ingress/common/playerprofile/o;

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
    .line 298
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/p;->a:Lcom/nianticproject/ingress/common/playerprofile/o;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/playerprofile/o;->a(Lcom/nianticproject/ingress/common/playerprofile/o;)Lcom/nianticproject/ingress/common/playerprofile/s;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/playerprofile/s;->a()V

    .line 299
    return-void
.end method
