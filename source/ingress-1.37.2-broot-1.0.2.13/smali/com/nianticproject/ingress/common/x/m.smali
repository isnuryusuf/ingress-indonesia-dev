.class Lcom/nianticproject/ingress/common/x/m;
.super Lcom/nianticproject/ingress/common/x/j;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nianticproject/ingress/common/x/j;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/nianticproject/ingress/common/x/m;",
        ">;"
    }
.end annotation


# instance fields
.field final d:J


# direct methods
.method constructor <init>(JJ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/nianticproject/ingress/common/x/j;-><init>(J)V

    .line 84
    add-long v0, p1, p3

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/x/m;->d:J

    .line 85
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 81
    check-cast p1, Lcom/nianticproject/ingress/common/x/m;

    iget-wide v0, p0, Lcom/nianticproject/ingress/common/x/m;->d:J

    iget-wide v2, p1, Lcom/nianticproject/ingress/common/x/m;->d:J

    sub-long/2addr v0, v2

    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
