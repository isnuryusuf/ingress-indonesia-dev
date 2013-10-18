.class public final Lcom/nianticproject/ingress/common/c/an;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Lcom/nianticproject/ingress/common/c/bs;


# instance fields
.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 6
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nianticproject/ingress/common/c/bs;

    const/4 v1, 0x0

    sget-object v2, Lcom/nianticproject/ingress/common/c/bs;->ao:Lcom/nianticproject/ingress/common/c/bs;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nianticproject/ingress/common/c/bs;->ap:Lcom/nianticproject/ingress/common/c/bs;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/nianticproject/ingress/common/c/bs;->aq:Lcom/nianticproject/ingress/common/c/bs;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/nianticproject/ingress/common/c/bs;->ar:Lcom/nianticproject/ingress/common/c/bs;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/nianticproject/ingress/common/c/bs;->as:Lcom/nianticproject/ingress/common/c/bs;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nianticproject/ingress/common/c/an;->a:[Lcom/nianticproject/ingress/common/c/bs;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 24
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    sget-object v2, Lcom/nianticproject/ingress/common/c/an;->a:[Lcom/nianticproject/ingress/common/c/bs;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 30
    iget v1, p0, Lcom/nianticproject/ingress/common/c/an;->b:I

    add-int/2addr v0, v1

    sget-object v1, Lcom/nianticproject/ingress/common/c/an;->a:[Lcom/nianticproject/ingress/common/c/bs;

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/nianticproject/ingress/common/c/an;->b:I

    .line 32
    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/common/c/bs;->an:Lcom/nianticproject/ingress/common/c/bs;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bs;)V

    .line 33
    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/common/c/an;->a:[Lcom/nianticproject/ingress/common/c/bs;

    iget v2, p0, Lcom/nianticproject/ingress/common/c/an;->b:I

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bs;)V

    .line 36
    return-void
.end method
