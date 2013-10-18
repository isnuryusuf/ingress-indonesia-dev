.class final Lcom/google/a/a/bo;
.super Lcom/google/a/a/bm;
.source "SourceFile"


# instance fields
.field private final a:[[C

.field private final b:I


# direct methods
.method constructor <init>([[C)V
    .locals 1
    .parameter

    .prologue
    .line 2389
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/a/a/bm;-><init>(B)V

    .line 2390
    iput-object p1, p0, Lcom/google/a/a/bo;->a:[[C

    .line 2391
    array-length v0, p1

    iput v0, p0, Lcom/google/a/a/bo;->b:I

    .line 2392
    return-void
.end method
