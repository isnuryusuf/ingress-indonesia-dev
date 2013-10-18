.class public Lcom/badlogic/gdx/utils/BinaryHeap$Node;
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
.field index:I

.field value:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .parameter

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput p1, p0, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    .line 150
    return-void
.end method
