.class final Lcom/nianticproject/ingress/common/e/j;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/e/b;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/e/b;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/nianticproject/ingress/common/e/j;->a:Lcom/nianticproject/ingress/common/e/b;

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
    .line 228
    iget-object v0, p0, Lcom/nianticproject/ingress/common/e/j;->a:Lcom/nianticproject/ingress/common/e/b;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/e/b;->a:Lcom/nianticproject/ingress/common/e/a;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/e/a;->b()V

    .line 229
    return-void
.end method
