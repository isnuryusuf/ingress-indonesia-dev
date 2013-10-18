.class final Lcom/google/a/b/bc;
.super Lcom/google/a/b/ah;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/b/o",
        "<TK;TV;>.com/google/a/b/ah<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/b/o;


# direct methods
.method constructor <init>(Lcom/google/a/b/o;)V
    .locals 0
    .parameter

    .prologue
    .line 4460
    iput-object p1, p0, Lcom/google/a/b/bc;->a:Lcom/google/a/b/o;

    invoke-direct {p0, p1}, Lcom/google/a/b/ah;-><init>(Lcom/google/a/b/o;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 4464
    invoke-virtual {p0}, Lcom/google/a/b/bc;->a()Lcom/google/a/b/bq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/b/bq;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
