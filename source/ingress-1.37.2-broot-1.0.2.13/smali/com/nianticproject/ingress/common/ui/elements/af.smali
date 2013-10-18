.class final Lcom/nianticproject/ingress/common/ui/elements/af;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/ui/elements/ab;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/ui/elements/ab;)V
    .locals 0
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/elements/af;->a:Lcom/nianticproject/ingress/common/ui/elements/ab;

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
    .line 267
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/af;->a:Lcom/nianticproject/ingress/common/ui/elements/ab;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/elements/ab;->i(Lcom/nianticproject/ingress/common/ui/elements/ab;)Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v0

    const-class v1, Lcom/nianticproject/ingress/common/missions/cc;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/t;->c(Ljava/lang/Class;)Lcom/nianticproject/ingress/common/ui/m;

    .line 268
    return-void
.end method
