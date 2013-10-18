.class final Lcom/nianticproject/ingress/common/scanner/modes/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field final synthetic b:Lcom/nianticproject/ingress/common/itemupgrade/o;

.field final synthetic c:Lcom/nianticproject/ingress/common/scanner/modes/aw;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/modes/aw;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/nianticproject/ingress/common/itemupgrade/o;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 777
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/az;->c:Lcom/nianticproject/ingress/common/scanner/modes/aw;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/scanner/modes/az;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iput-object p3, p0, Lcom/nianticproject/ingress/common/scanner/modes/az;->b:Lcom/nianticproject/ingress/common/itemupgrade/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/az;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    .line 781
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/az;->b:Lcom/nianticproject/ingress/common/itemupgrade/o;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/itemupgrade/o;->c()V

    .line 782
    return-void
.end method
