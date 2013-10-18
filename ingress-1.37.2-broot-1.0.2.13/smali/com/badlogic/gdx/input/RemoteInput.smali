.class public Lcom/badlogic/gdx/input/RemoteInput;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/Input;
.implements Ljava/lang/Runnable;


# static fields
.field public static DEFAULT_PORT:I


# instance fields
.field private accel:[F

.field private compass:[F

.field public final ips:[Ljava/lang/String;

.field isTouched:[Z

.field justTouched:Z

.field keys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private multiTouch:Z

.field private final port:I

.field processor:Lcom/badlogic/gdx/InputProcessor;

.field private remoteHeight:F

.field private remoteWidth:F

.field private serverSocket:Ljava/net/ServerSocket;

.field touchX:[I

.field touchY:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 139
    const/16 v0, 0x1ffe

    sput v0, Lcom/badlogic/gdx/input/RemoteInput;->DEFAULT_PORT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 156
    sget v0, Lcom/badlogic/gdx/input/RemoteInput;->DEFAULT_PORT:I

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/input/RemoteInput;-><init>(I)V

    .line 157
    return-void
.end method

.method public constructor <init>(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    const/16 v2, 0x14

    const/4 v0, 0x0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-array v1, v4, [F

    iput-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput;->accel:[F

    .line 142
    new-array v1, v4, [F

    iput-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput;->compass:[F

    .line 143
    iput-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->multiTouch:Z

    .line 144
    iput v3, p0, Lcom/badlogic/gdx/input/RemoteInput;->remoteWidth:F

    .line 145
    iput v3, p0, Lcom/badlogic/gdx/input/RemoteInput;->remoteHeight:F

    .line 146
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput;->keys:Ljava/util/Set;

    .line 147
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput;->touchX:[I

    .line 148
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput;->touchY:[I

    .line 149
    new-array v1, v2, [Z

    iput-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput;->isTouched:[Z

    .line 150
    iput-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->justTouched:Z

    .line 151
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    .line 161
    :try_start_0
    iput p1, p0, Lcom/badlogic/gdx/input/RemoteInput;->port:I

    .line 162
    new-instance v1, Ljava/net/ServerSocket;

    invoke-direct {v1, p1}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput;->serverSocket:Ljava/net/ServerSocket;

    .line 163
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 164
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 165
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 166
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    .line 167
    array-length v2, v1

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput;->ips:[Ljava/lang/String;

    .line 168
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 169
    iget-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput;->ips:[Ljava/lang/String;

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Couldn\'t open listening socket at port \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 173
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelVibrate()V
    .locals 0

    .prologue
    .line 346
    return-void
.end method

.method public getAccelerometerX()F
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->accel:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getAccelerometerY()F
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->accel:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getAccelerometerZ()F
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->accel:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getAzimuth()F
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->compass:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getCurrentEventTime()J
    .locals 2

    .prologue
    .line 445
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDeltaX()I
    .locals 1

    .prologue
    .line 414
    const/4 v0, 0x0

    return v0
.end method

.method public getDeltaX(I)I
    .locals 1
    .parameter

    .prologue
    .line 419
    const/4 v0, 0x0

    return v0
.end method

.method public getDeltaY()I
    .locals 1

    .prologue
    .line 424
    const/4 v0, 0x0

    return v0
.end method

.method public getDeltaY(I)I
    .locals 1
    .parameter

    .prologue
    .line 429
    const/4 v0, 0x0

    return v0
.end method

.method public getIPs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->ips:[Ljava/lang/String;

    return-object v0
.end method

.method public getInputProcessor()Lcom/badlogic/gdx/InputProcessor;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    return-object v0
.end method

.method public getNativeOrientation()Lcom/badlogic/gdx/Input$Orientation;
    .locals 1

    .prologue
    .line 398
    sget-object v0, Lcom/badlogic/gdx/Input$Orientation;->Landscape:Lcom/badlogic/gdx/Input$Orientation;

    return-object v0
.end method

.method public getPitch()F
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->compass:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getPlaceholderTextInput(Lcom/badlogic/gdx/Input$TextInputListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 326
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getInput()Lcom/badlogic/gdx/Input;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/Input;->getPlaceholderTextInput(Lcom/badlogic/gdx/Input$TextInputListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method public getRoll()F
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->compass:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 393
    const/4 v0, 0x0

    return v0
.end method

.method public getRotationMatrix([F)V
    .locals 0
    .parameter

    .prologue
    .line 452
    return-void
.end method

.method public getTextInput(Lcom/badlogic/gdx/Input$TextInputListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 321
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getInput()Lcom/badlogic/gdx/Input;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/Input;->getTextInput(Lcom/badlogic/gdx/Input$TextInputListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method public getX()I
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->touchX:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getX(I)I
    .locals 1
    .parameter

    .prologue
    .line 278
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->touchX:[I

    aget v0, v0, p1

    return v0
.end method

.method public getY()I
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->touchY:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getY(I)I
    .locals 1
    .parameter

    .prologue
    .line 288
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->touchY:[I

    aget v0, v0, p1

    return v0
.end method

.method public isButtonPressed(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 308
    if-eqz p1, :cond_1

    .line 311
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 309
    :goto_1
    iget-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput;->isTouched:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 310
    iget-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput;->isTouched:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 309
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public isCursorCatched()Z
    .locals 1

    .prologue
    .line 408
    const/4 v0, 0x0

    return v0
.end method

.method public isKeyPressed(I)Z
    .locals 2
    .parameter

    .prologue
    .line 316
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->keys:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPeripheralAvailable(Lcom/badlogic/gdx/Input$Peripheral;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 385
    sget-object v1, Lcom/badlogic/gdx/Input$Peripheral;->Accelerometer:Lcom/badlogic/gdx/Input$Peripheral;

    if-ne p1, v1, :cond_1

    .line 388
    :cond_0
    :goto_0
    return v0

    .line 386
    :cond_1
    sget-object v1, Lcom/badlogic/gdx/Input$Peripheral;->Compass:Lcom/badlogic/gdx/Input$Peripheral;

    if-eq p1, v1, :cond_0

    .line 387
    sget-object v0, Lcom/badlogic/gdx/Input$Peripheral;->MultitouchScreen:Lcom/badlogic/gdx/Input$Peripheral;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->multiTouch:Z

    goto :goto_0

    .line 388
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTouched()Z
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->isTouched:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isTouched(I)Z
    .locals 1
    .parameter

    .prologue
    .line 303
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->isTouched:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public justTouched()Z
    .locals 1

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->justTouched:Z

    return v0
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 180
    :goto_0
    :try_start_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "listening, port "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/badlogic/gdx/input/RemoteInput;->port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 186
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 187
    const/16 v2, 0xbb8

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 189
    new-instance v3, Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 190
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->multiTouch:Z

    .line 192
    :goto_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 195
    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    move-object v2, v1

    .line 248
    :goto_2
    sget-object v4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v5, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;

    invoke-direct {v5, p0, v0, v2}, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;-><init>(Lcom/badlogic/gdx/input/RemoteInput;Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;)V

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 250
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 197
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->accel:[F

    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v4

    aput v4, v0, v2

    .line 198
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->accel:[F

    const/4 v2, 0x1

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v4

    aput v4, v0, v2

    .line 199
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->accel:[F

    const/4 v2, 0x2

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v4

    aput v4, v0, v2

    move-object v0, v1

    move-object v2, v1

    .line 200
    goto :goto_2

    .line 202
    :pswitch_1
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->compass:[F

    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v4

    aput v4, v0, v2

    .line 203
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->compass:[F

    const/4 v2, 0x1

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v4

    aput v4, v0, v2

    .line 204
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->compass:[F

    const/4 v2, 0x2

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v4

    aput v4, v0, v2

    move-object v0, v1

    move-object v2, v1

    .line 205
    goto :goto_2

    .line 207
    :pswitch_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->remoteWidth:F

    .line 208
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->remoteHeight:F

    move-object v0, v1

    move-object v2, v1

    .line 209
    goto :goto_2

    .line 211
    :pswitch_3
    new-instance v0, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;-><init>(Lcom/badlogic/gdx/input/RemoteInput;)V

    .line 212
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, v0, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyCode:I

    .line 213
    const/4 v2, 0x0

    iput v2, v0, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->type:I

    move-object v2, v0

    move-object v0, v1

    .line 214
    goto :goto_2

    .line 216
    :pswitch_4
    new-instance v0, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;-><init>(Lcom/badlogic/gdx/input/RemoteInput;)V

    .line 217
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, v0, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyCode:I

    .line 218
    const/4 v2, 0x1

    iput v2, v0, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->type:I

    move-object v2, v0

    move-object v0, v1

    .line 219
    goto :goto_2

    .line 221
    :pswitch_5
    new-instance v0, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;-><init>(Lcom/badlogic/gdx/input/RemoteInput;)V

    .line 222
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readChar()C

    move-result v2

    iput-char v2, v0, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyChar:C

    .line 223
    const/4 v2, 0x2

    iput v2, v0, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->type:I

    move-object v2, v0

    move-object v0, v1

    .line 224
    goto/16 :goto_2

    .line 226
    :pswitch_6
    new-instance v0, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;-><init>(Lcom/badlogic/gdx/input/RemoteInput;)V

    .line 227
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lcom/badlogic/gdx/input/RemoteInput;->remoteWidth:F

    div-float/2addr v2, v4

    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v0, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->x:I

    .line 228
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lcom/badlogic/gdx/input/RemoteInput;->remoteHeight:F

    div-float/2addr v2, v4

    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v0, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->y:I

    .line 229
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, v0, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    .line 230
    const/4 v2, 0x0

    iput v2, v0, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->type:I

    move-object v2, v1

    .line 231
    goto/16 :goto_2

    .line 233
    :pswitch_7
    new-instance v0, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;-><init>(Lcom/badlogic/gdx/input/RemoteInput;)V

    .line 234
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lcom/badlogic/gdx/input/RemoteInput;->remoteWidth:F

    div-float/2addr v2, v4

    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v0, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->x:I

    .line 235
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lcom/badlogic/gdx/input/RemoteInput;->remoteHeight:F

    div-float/2addr v2, v4

    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v0, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->y:I

    .line 236
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, v0, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    .line 237
    const/4 v2, 0x1

    iput v2, v0, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->type:I

    move-object v2, v1

    .line 238
    goto/16 :goto_2

    .line 240
    :pswitch_8
    new-instance v0, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;-><init>(Lcom/badlogic/gdx/input/RemoteInput;)V

    .line 241
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lcom/badlogic/gdx/input/RemoteInput;->remoteWidth:F

    div-float/2addr v2, v4

    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v0, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->x:I

    .line 242
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lcom/badlogic/gdx/input/RemoteInput;->remoteHeight:F

    div-float/2addr v2, v4

    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v0, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->y:I

    .line 243
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, v0, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    .line 244
    const/4 v2, 0x2

    iput v2, v0, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->type:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v1

    goto/16 :goto_2

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCatchBackKey(Z)V
    .locals 0
    .parameter

    .prologue
    .line 366
    return-void
.end method

.method public setCatchMenuKey(Z)V
    .locals 0
    .parameter

    .prologue
    .line 440
    return-void
.end method

.method public setCursorCatched(Z)V
    .locals 0
    .parameter

    .prologue
    .line 404
    return-void
.end method

.method public setCursorPosition(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 434
    return-void
.end method

.method public setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V
    .locals 0
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/badlogic/gdx/input/RemoteInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    .line 371
    return-void
.end method

.method public setOnscreenKeyboardVisible(Z)V
    .locals 0
    .parameter

    .prologue
    .line 331
    return-void
.end method

.method public vibrate(I)V
    .locals 0
    .parameter

    .prologue
    .line 336
    return-void
.end method

.method public vibrate([JI)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 341
    return-void
.end method
