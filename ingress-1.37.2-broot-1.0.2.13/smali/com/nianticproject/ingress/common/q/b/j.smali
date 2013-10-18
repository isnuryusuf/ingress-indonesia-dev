.class final Lcom/nianticproject/ingress/common/q/b/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/q/b/e;


# instance fields
.field private a:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/q/b/j;->a:J

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/q/b/j;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/q/b/j;)J
    .locals 2
    .parameter

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/q/b/j;->a:J

    return-wide v0
.end method


# virtual methods
.method public final a(Ljava/io/DataInput;)V
    .locals 2
    .parameter

    .prologue
    .line 58
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    .line 59
    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/q/b/j;->a:J

    .line 60
    return-void
.end method

.method public final a(Ljava/io/DataOutput;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    const/16 v0, 0xf

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 53
    return-void
.end method
