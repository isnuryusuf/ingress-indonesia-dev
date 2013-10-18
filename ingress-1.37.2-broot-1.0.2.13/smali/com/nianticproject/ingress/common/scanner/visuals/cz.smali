.class final Lcom/nianticproject/ingress/common/scanner/visuals/cz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/nianticproject/ingress/common/j/o;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 33
    check-cast p1, Lcom/nianticproject/ingress/common/j/o;

    move-object v0, p1

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/visuals/cv;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/cv;->h()D

    move-result-wide v0

    check-cast p1, Lcom/nianticproject/ingress/common/scanner/visuals/cv;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/scanner/visuals/cv;->h()D

    move-result-wide v2

    sub-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method
