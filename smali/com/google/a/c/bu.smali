.class public abstract Lcom/google/a/c/bu;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K0:",
        "Ljava/lang/Object;",
        "V0:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field a:Lcom/google/a/c/fg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/fg",
            "<TK0;TV0;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Lcom/google/a/c/fg;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>()",
            "Lcom/google/a/c/fg",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/a/c/bu;->a:Lcom/google/a/c/fg;

    sget-object v1, Lcom/google/a/c/bv;->a:Lcom/google/a/c/bv;

    invoke-static {v0, v1}, Lcom/google/a/a/ag;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/fg;

    return-object v0
.end method
