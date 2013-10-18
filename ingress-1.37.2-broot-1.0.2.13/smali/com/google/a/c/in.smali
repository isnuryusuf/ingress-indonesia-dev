.class final Lcom/google/a/c/in;
.super Lcom/google/a/c/dj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/dj",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/a/c/dj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/dj",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/a/c/dj;Lcom/google/a/c/dj;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/dj",
            "<TK;TV;>;",
            "Lcom/google/a/c/dj",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/google/a/c/dj;-><init>(Lcom/google/a/c/dj;)V

    .line 116
    iput-object p2, p0, Lcom/google/a/c/in;->a:Lcom/google/a/c/dj;

    .line 117
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/a/c/dj;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/a/c/dj",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/google/a/c/dj;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 111
    iput-object p3, p0, Lcom/google/a/c/in;->a:Lcom/google/a/c/dj;

    .line 112
    return-void
.end method


# virtual methods
.method final a()Lcom/google/a/c/dj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/dj",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/a/c/in;->a:Lcom/google/a/c/dj;

    return-object v0
.end method
