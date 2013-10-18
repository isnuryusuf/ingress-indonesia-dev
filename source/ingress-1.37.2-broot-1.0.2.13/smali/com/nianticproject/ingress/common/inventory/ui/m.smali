.class final Lcom/nianticproject/ingress/common/inventory/ui/m;
.super Lcom/nianticproject/ingress/common/x/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nianticproject/ingress/common/x/b",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/badlogic/gdx/scenes/scene2d/Stage;

.field final synthetic b:Lcom/nianticproject/ingress/common/inventory/ui/j;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/inventory/ui/j;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/nianticproject/ingress/common/inventory/ui/m;->b:Lcom/nianticproject/ingress/common/inventory/ui/j;

    iput-object p3, p0, Lcom/nianticproject/ingress/common/inventory/ui/m;->a:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/common/x/b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final synthetic b(Ljava/lang/Object;)Lcom/nianticproject/ingress/common/x/f;
    .locals 6
    .parameter

    .prologue
    .line 104
    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v3, v0

    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/m;->a:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/m;->b:Lcom/nianticproject/ingress/common/inventory/ui/j;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/inventory/ui/j;->c(Lcom/nianticproject/ingress/common/inventory/ui/j;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v1

    const-string/jumbo v2, "+"

    int-to-long v3, v3

    const v5, 0x3f333333

    invoke-static/range {v0 .. v5}, Lcom/nianticproject/ingress/common/ui/a/b;->a(Lcom/badlogic/gdx/scenes/scene2d/Stage;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;Ljava/lang/String;JF)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    move v3, v0

    goto :goto_0
.end method
