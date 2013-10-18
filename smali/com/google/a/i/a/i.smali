.class final Lcom/google/a/i/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/i/a/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/a/i/a/d",
        "<TI;TO;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/a/aa;


# direct methods
.method constructor <init>(Lcom/google/a/a/aa;)V
    .locals 0
    .parameter

    .prologue
    .line 744
    iput-object p1, p0, Lcom/google/a/i/a/i;->a:Lcom/google/a/a/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/a/i/a/p;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Lcom/google/a/i/a/p",
            "<TO;>;"
        }
    .end annotation

    .prologue
    .line 746
    iget-object v0, p0, Lcom/google/a/i/a/i;->a:Lcom/google/a/a/aa;

    invoke-interface {v0, p1}, Lcom/google/a/a/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 747
    invoke-static {v0}, Lcom/google/a/i/a/h;->a(Ljava/lang/Object;)Lcom/google/a/i/a/p;

    move-result-object v0

    return-object v0
.end method
