.class public final Lcom/nianticproject/ingress/knobs/ScannerKnobs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/knobs/g;


# static fields
.field private static final a:Lcom/nianticproject/ingress/knobs/ScannerKnobs;


# instance fields
.field private final rangeM:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final updateDistanceM:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final updateIntervalMs:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/nianticproject/ingress/knobs/ScannerKnobs;

    invoke-direct {v0}, Lcom/nianticproject/ingress/knobs/ScannerKnobs;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/knobs/ScannerKnobs;->a:Lcom/nianticproject/ingress/knobs/ScannerKnobs;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/16 v0, 0x7530

    iput v0, p0, Lcom/nianticproject/ingress/knobs/ScannerKnobs;->updateIntervalMs:I

    .line 67
    const/16 v0, 0xa

    iput v0, p0, Lcom/nianticproject/ingress/knobs/ScannerKnobs;->updateDistanceM:I

## Change dari 0x12c ke 1200Meter
    .line 68
    const/16 v0, 0x4b0

    iput v0, p0, Lcom/nianticproject/ingress/knobs/ScannerKnobs;->rangeM:I

    .line 71
    return-void
.end method

.method static synthetic d()Lcom/nianticproject/ingress/knobs/ScannerKnobs;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/nianticproject/ingress/knobs/ScannerKnobs;->a:Lcom/nianticproject/ingress/knobs/ScannerKnobs;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/nianticproject/ingress/knobs/ScannerKnobs;->updateIntervalMs:I

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/nianticproject/ingress/knobs/ScannerKnobs;->updateDistanceM:I

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/nianticproject/ingress/knobs/ScannerKnobs;->rangeM:I

    return v0
.end method
