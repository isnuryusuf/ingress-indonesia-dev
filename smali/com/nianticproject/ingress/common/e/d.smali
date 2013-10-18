.class final Lcom/nianticproject/ingress/common/e/d;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/e/b;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/e/b;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/nianticproject/ingress/common/e/d;->a:Lcom/nianticproject/ingress/common/e/b;

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
    .line 262
    iget-object v0, p0, Lcom/nianticproject/ingress/common/e/d;->a:Lcom/nianticproject/ingress/common/e/b;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/e/b;->a:Lcom/nianticproject/ingress/common/e/a;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/e/a;->m(Lcom/nianticproject/ingress/common/e/a;)Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/t;->d()Z

    .line 263
    return-void
.end method
