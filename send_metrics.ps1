while ($true)
{
    $timestamp = [DateTimeOffset]::UtcNow.ToUnixTimeSeconds()

    $metrics = @(
        "college.cpu $((Get-Random -Minimum 20 -Maximum 80)) $timestamp",
        "college.memory $((Get-Random -Minimum 30 -Maximum 90)) $timestamp",
        "college.disk $((Get-Random -Minimum 10 -Maximum 70)) $timestamp",
        "college.network $((Get-Random -Minimum 100 -Maximum 500)) $timestamp",
        "college.uptime $((Get-Random -Minimum 1000 -Maximum 5000)) $timestamp"
    )

    foreach ($metric in $metrics)
    {
        $client = New-Object System.Net.Sockets.TcpClient("localhost",2003)
        $stream = $client.GetStream()
        $writer = New-Object System.IO.StreamWriter($stream)
        $writer.WriteLine($metric)
        $writer.Flush()
        $writer.Dispose()
        $client.Close()
    }

    Write-Host "Metrics sent at $timestamp"

    Start-Sleep -Seconds 5
}