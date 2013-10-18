.class final Lcom/nianticproject/ingress/common/ui/elements/j;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/ui/elements/i;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/ui/elements/i;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/elements/j;->a:Lcom/nianticproject/ingress/common/ui/elements/i;

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
    .line 144
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/j;->a:Lcom/nianticproject/ingress/common/ui/elements/i;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/elements/i;->a()Lcom/nianticproject/ingress/common/ui/elements/k;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/ui/elements/k;->c:Lcom/nianticproject/ingress/common/ui/elements/o;

    if-eqz v1, :cond_0

    .line 146
    iget-object v0, v0, Lcom/nianticproject/ingress/common/ui/elements/k;->c:Lcom/nianticproject/ingress/common/ui/elements/o;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/ui/elements/o;->a()V

    .line 148
    :cond_0
    return-void
.end method
