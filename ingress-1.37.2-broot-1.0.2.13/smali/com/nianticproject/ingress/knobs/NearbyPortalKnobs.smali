.class public Lcom/nianticproject/ingress/knobs/NearbyPortalKnobs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/knobs/g;


# instance fields
.field private final repopulateDistanceMeters:F
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final repopulateTimeMilliseconds:J
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/high16 v0, 0x43fa

    iput v0, p0, Lcom/nianticproject/ingress/knobs/NearbyPortalKnobs;->repopulateDistanceMeters:F

# Change 0x7530
    .line 44
    const-wide/16 v0, 0xea60

    iput-wide v0, p0, Lcom/nianticproject/ingress/knobs/NearbyPortalKnobs;->repopulateTimeMilliseconds:J

    .line 45
    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/nianticproject/ingress/knobs/NearbyPortalKnobs;->repopulateDistanceMeters:F

    return v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/nianticproject/ingress/knobs/NearbyPortalKnobs;->repopulateTimeMilliseconds:J

    return-wide v0
.end method
