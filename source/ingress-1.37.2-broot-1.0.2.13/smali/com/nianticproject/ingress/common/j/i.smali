.class final Lcom/nianticproject/ingress/common/j/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public c:Lcom/badlogic/gdx/graphics/Color;

.field final synthetic d:Lcom/nianticproject/ingress/common/j/h;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/j/h;Ljava/lang/Object;Ljava/lang/Object;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;",
            "Lcom/badlogic/gdx/graphics/Color;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    iput-object p1, p0, Lcom/nianticproject/ingress/common/j/i;->d:Lcom/nianticproject/ingress/common/j/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p2, p0, Lcom/nianticproject/ingress/common/j/i;->a:Ljava/lang/Object;

    .line 67
    iput-object p3, p0, Lcom/nianticproject/ingress/common/j/i;->b:Ljava/lang/Object;

    .line 68
    iput-object p4, p0, Lcom/nianticproject/ingress/common/j/i;->c:Lcom/badlogic/gdx/graphics/Color;

    .line 69
    return-void
.end method
