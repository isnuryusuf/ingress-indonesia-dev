.class final Lcom/nianticproject/ingress/common/playerprofile/bf;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/playerprofile/bd;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/playerprofile/bd;)V
    .locals 0
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/nianticproject/ingress/common/playerprofile/bf;->a:Lcom/nianticproject/ingress/common/playerprofile/bd;

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
    .line 242
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->n()Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/t;->d()Z

    .line 243
    return-void
.end method
