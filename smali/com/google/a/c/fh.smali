.class public final Lcom/google/a/c/fh;
.super Lcom/google/a/c/cw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/cw",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/a/c/fa;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/a/c/fa;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/a/c/fa;",
            ")V"
        }
    .end annotation

    .prologue
    .line 704
    invoke-direct {p0, p1, p2}, Lcom/google/a/c/cw;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 705
    iput-object p3, p0, Lcom/google/a/c/fh;->a:Lcom/google/a/c/fa;

    .line 706
    return-void
.end method


# virtual methods
.method public final bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 697
    invoke-super {p0, p1}, Lcom/google/a/c/cw;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 697
    invoke-super {p0}, Lcom/google/a/c/cw;->hashCode()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 697
    invoke-super {p0}, Lcom/google/a/c/cw;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
