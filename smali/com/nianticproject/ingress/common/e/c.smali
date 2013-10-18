.class final Lcom/nianticproject/ingress/common/e/c;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/e/b;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/e/b;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/nianticproject/ingress/common/e/c;->a:Lcom/nianticproject/ingress/common/e/b;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lcom/nianticproject/ingress/common/e/c;->a:Lcom/nianticproject/ingress/common/e/b;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/e/b;->a:Lcom/nianticproject/ingress/common/e/a;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/e/c;->a:Lcom/nianticproject/ingress/common/e/b;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/e/b;->a:Lcom/nianticproject/ingress/common/e/a;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/e/a;->d(Lcom/nianticproject/ingress/common/e/a;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/e/a;->a(Lcom/nianticproject/ingress/common/e/a;I)I

    .line 155
    iget-object v0, p0, Lcom/nianticproject/ingress/common/e/c;->a:Lcom/nianticproject/ingress/common/e/b;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/e/b;->a:Lcom/nianticproject/ingress/common/e/a;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/e/a;->e(Lcom/nianticproject/ingress/common/e/a;)Lcom/nianticproject/ingress/common/ui/widget/w;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/e/c;->a:Lcom/nianticproject/ingress/common/e/b;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/e/b;->a:Lcom/nianticproject/ingress/common/e/a;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/e/a;->c(Lcom/nianticproject/ingress/common/e/a;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/w;->a(Ljava/lang/String;)V

    .line 156
    return-void
.end method
