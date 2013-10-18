.class final Lcom/google/a/b/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/a/aa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/a/a/aa",
        "<TV;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/b/ak;


# direct methods
.method constructor <init>(Lcom/google/a/b/ak;)V
    .locals 0
    .parameter

    .prologue
    .line 3626
    iput-object p1, p0, Lcom/google/a/b/al;->a:Lcom/google/a/b/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 3629
    iget-object v0, p0, Lcom/google/a/b/al;->a:Lcom/google/a/b/ak;

    invoke-virtual {v0, p1}, Lcom/google/a/b/ak;->b(Ljava/lang/Object;)Z

    .line 3630
    return-object p1
.end method
