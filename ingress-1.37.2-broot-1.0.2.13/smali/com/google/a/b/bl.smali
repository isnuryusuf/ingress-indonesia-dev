.class final Lcom/google/a/b/bl;
.super Lcom/google/a/b/ba;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/b/ba",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final b:I


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation

    .prologue
    .line 1840
    invoke-direct {p0, p1}, Lcom/google/a/b/ba;-><init>(Ljava/lang/Object;)V

    .line 1841
    iput p2, p0, Lcom/google/a/b/bl;->b:I

    .line 1842
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 1846
    iget v0, p0, Lcom/google/a/b/bl;->b:I

    return v0
.end method
